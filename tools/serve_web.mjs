// Local development only: static assets and a same-origin proxy to the worker.
import {createServer,request} from 'node:http';
import {readFile} from 'node:fs/promises';
import {resolve,extname,sep} from 'node:path';
const base=resolve('build/web'),port=Number(process.env.KB_PORT||4505);
const types={'.html':'text/html','.js':'text/javascript','.css':'text/css','.wasm':'application/wasm','.json':'application/json','.svg':'image/svg+xml','.ttf':'font/ttf'};
createServer(async(req,res)=>{
    const url=new URL(req.url,'http://localhost');
    if(url.pathname==='/kernelbasher'){res.writeHead(302,{Location:'/kernelbasher/'});res.end();return;}
    if(url.pathname.startsWith('/kernelbasher/api/')){
        const proxy=request({hostname:'127.0.0.1',port:4506,path:url.pathname.slice('/kernelbasher/api'.length),method:req.method,headers:req.headers},upstream=>{res.writeHead(upstream.statusCode,upstream.headers);upstream.pipe(res);});
        proxy.on('error',()=>{res.writeHead(503,{'Content-Type':'application/json'});res.end(JSON.stringify({error:'The local worker is not running.'}));});req.pipe(proxy);return;
    }
    try{if(!url.pathname.startsWith('/kernelbasher/'))throw Error('outside app');const relative=decodeURIComponent(url.pathname.slice('/kernelbasher/'.length))||'index.html';const path=resolve(base,relative);if(!path.startsWith(base+sep))throw Error('outside assets');const data=await readFile(path);res.writeHead(200,{'Content-Type':types[extname(path)]||'application/octet-stream','Cache-Control':'no-store'});res.end(data);}catch{res.writeHead(404);res.end('Not found');}
}).listen(port,'127.0.0.1',()=>console.log(`http://127.0.0.1:${port}/kernelbasher/`));
