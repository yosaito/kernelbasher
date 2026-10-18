"""Deploy to the existing main VPS using its configured SSH alias.

Only this app's site file, container and data directory are managed. Nginx's
other hosts are left in place. TLS uses the server's existing Certbot account
and certificate renewal timer. No credentials are stored in the project.
"""
from pathlib import Path
import argparse
import gzip
import hashlib
import json
import re
import shutil
import subprocess
import tarfile

ROOT=Path(__file__).resolve().parents[1]
p=argparse.ArgumentParser(description=__doc__)
p.add_argument('stage',choices=('certificate','publish'))
p.add_argument('--host',default='mather.click')
p.add_argument('--domain',default='mather.click')
p.add_argument('--ip',default='78.141.207.237')
p.add_argument('--release',default='')
args=p.parse_args()
for value in (args.host,args.domain,args.ip):
    if not re.fullmatch(r'[a-zA-Z0-9.-]+',value):p.error('Invalid host/domain/address')
REMOTE='/mnt/vps-data/kernelbasher'
SITE='/etc/nginx/sites-available/kernelbasher-mather'
LINK='/etc/nginx/sites-enabled/kernelbasher-mather'
CERTBOT='certbot/certbot:v5.8.0@sha256:f70ad0adbb7e117f0fe42a63c553f28ea451edabc0148757b6efcd9735acaa20'

def remote(script):
    subprocess.run(['ssh','-o','BatchMode=yes','-o','ConnectTimeout=10',args.host,'sudo -n python3 -'],input=script.encode(),check=True)

def config(name):
    return (ROOT/'web/deploy'/name).read_text().replace('@IP@',args.ip).replace('@DOMAIN@',args.domain).replace('@ROOT@',REMOTE)

def nginx_script(body):
    return f'''
from pathlib import Path
import os, subprocess
site=Path({SITE!r});link=Path({LINK!r})
old=site.read_bytes() if site.exists() else None
existed=link.is_symlink()
site.write_text({body!r})
if not existed:link.symlink_to(site)
try:
    subprocess.run(['nginx','-t'],check=True)
    subprocess.run(['systemctl','reload','nginx'],check=True)
except Exception:
    if old is None:site.unlink(missing_ok=True)
    else:site.write_bytes(old)
    if not existed:link.unlink(missing_ok=True)
    raise
'''

if args.stage=='certificate':
    # Do not temporarily replace an already published HTTPS site on renewal.
    remote(f'''
from pathlib import Path
import subprocess
Path('/var/www/letsencrypt').mkdir(parents=True,exist_ok=True)
if not Path({SITE!r}).exists():
    exec({nginx_script(config('nginx-http.conf'))!r})
command=['docker','run','--rm','--memory=192m']
for path in ('/etc/letsencrypt','/var/lib/letsencrypt','/var/log/letsencrypt','/var/www/letsencrypt'):
    command+=['-v',path+':'+path]
command += [{CERTBOT!r},'certonly','--non-interactive','--agree-tos','--webroot','-w','/var/www/letsencrypt','--cert-name',{args.domain!r},'-d',{args.domain!r}]
subprocess.run(command,check=True)
''')
else:
    release=args.release or subprocess.check_output(['git','rev-parse','--short=12','HEAD'],cwd=ROOT,text=True).strip()
    if not re.fullmatch(r'[a-zA-Z0-9_-]{1,60}',release):p.error('Invalid release name')
    image='kernelbasher-worker:'+release
    subprocess.run(['docker','build','--platform','linux/386','-t',image,'build/web-worker'],cwd=ROOT,check=True)
    bundle=ROOT/'build/kernelbasher-site.tar.gz'
    with tarfile.open(bundle,'w:gz') as archive:
        archive.add(ROOT/'build/web',arcname='public/kernelbasher')
    image_tar=ROOT/'build/kernelbasher-worker.tar'
    subprocess.run(['docker','save','-o',str(image_tar),image],check=True)
    compressed=ROOT/'build/kernelbasher-worker.tar.gz'
    with image_tar.open('rb') as source,gzip.open(compressed,'wb',compresslevel=5) as target:shutil.copyfileobj(source,target)
    image_tar.unlink()
    hashes={f.name:hashlib.sha256(f.read_bytes()).hexdigest() for f in (bundle,compressed)}
    remote(f'''
from pathlib import Path
import os
root=Path({REMOTE!r})
root.mkdir(parents=True,exist_ok=True)
stage=root/'incoming'
stage.mkdir(exist_ok=True)
os.chown(stage,int(os.environ['SUDO_UID']),int(os.environ['SUDO_GID']))
''')
    subprocess.run(['scp','-o','BatchMode=yes',str(bundle),str(compressed),args.host+':'+REMOTE+'/incoming/'],check=True)
    remote(f'''
from pathlib import Path
import hashlib, json, os, subprocess, tarfile, time
root=Path({REMOTE!r});stage=root/'incoming'
for name,digest in {hashes!r}.items():
    assert hashlib.sha256((stage/name).read_bytes()).hexdigest()==digest,name
release=root/'releases'/{release!r}
assert not release.exists(),'Release already exists; select a new release name'
release.mkdir(parents=True)
with tarfile.open(stage/'kernelbasher-site.tar.gz') as archive:
    archive.extractall(release,filter='data')
subprocess.run(['docker','load','-i',str(stage/'kernelbasher-worker.tar.gz')],check=True)
state=root/'state';state.mkdir(exist_ok=True)
os.chown(state,10001,33);state.chmod(0o750)
socket=state/'socket';socket.mkdir(exist_ok=True);os.chown(socket,10001,33);socket.chmod(0o750)
old=subprocess.run(['docker','inspect','--format','{{{{.Config.Image}}}}','kernelbasher-worker'],capture_output=True,text=True)
old_image=old.stdout.strip() if old.returncode==0 else None
previous=(root/'current').resolve() if (root/'current').exists() else None
def start(image):
    subprocess.run(['docker','rm','-f','kernelbasher-worker'],capture_output=True)
    subprocess.run(['docker','run','-d','--name','kernelbasher-worker','--restart','unless-stopped','--network','none','--read-only','--user','10001:33','--cap-drop','ALL','--security-opt','no-new-privileges','--pids-limit','128','--memory','384m','--memory-swap','512m','--cpus','1','--tmpfs','/tmp:rw,nosuid,nodev,size=64m','--mount','type=bind,src='+str(state)+',dst=/state','-e','KB_ORIGIN=https://'+{args.domain!r},image],check=True)
try:
    start({image!r})
    for attempt in range(45):
        response=subprocess.run(['curl','--silent','--fail','--max-time','2','--unix-socket',str(socket/'api.sock'),'http://localhost/health'],capture_output=True)
        if response.returncode==0 and json.loads(response.stdout).get('status')=='ok':break
        time.sleep(1)
    else:raise RuntimeError('Worker failed its startup health check')
    link=root/'next';link.unlink(missing_ok=True);link.symlink_to(release);link.replace(root/'current')
    exec({nginx_script(config('nginx.conf'))!r})
except Exception:
    if previous:
        link=root/'rollback';link.unlink(missing_ok=True);link.symlink_to(previous);link.replace(root/'current')
    if old_image:start(old_image)
    else:subprocess.run(['docker','rm','-f','kernelbasher-worker'],capture_output=True)
    raise
record={{'release':{release!r},'image':{image!r},'previousImage':old_image,'previousRelease':str(previous) if previous else None,'url':'https://'+{args.domain!r}+'/kernelbasher/'}}
(release/'deployment.json').write_text(json.dumps(record,indent=2)+'\\n')
for name in {list(hashes)!r}:(stage/name).unlink()
print(json.dumps(record))
''')
    print('Published https://'+args.domain+'/kernelbasher/')
