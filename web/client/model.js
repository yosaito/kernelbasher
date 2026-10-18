export const defaults=()=>({type:'settings',colours:[25,255,70,25,255,70,25,255,70,25,255,70,25,255,70,25,255,70,255],radius:3.25,camera:1,random:0,wire:0,whiteAnimation:0,whiteSplash:0,keepMachinery:0,torn:0,replaceLogo:0,outputSize:262144,logo:null});
const order=[6,7,8,3,4,5,12,13,14,15,16,17,18,-1,0,1,2,9,10,11];
export function readPreset(buffer,settings){
    if(buffer.byteLength!==88)throw Error('A KernelBasher preset must be exactly 88 bytes.');
    const view=new DataView(buffer),out=structuredClone(settings);
    order.forEach((index,i)=>{const n=view.getUint32(i*4,true);if(n>255)throw Error('This preset has an invalid slider value.');if(index<0)out.radius=Math.fround((255-n)*Math.fround(.025));else out.colours[index]=255-n;});
    return out;
}
export function writePreset(s,preserved=new Uint8Array(88)){
    const bytes=new Uint8Array(preserved),view=new DataView(bytes.buffer);
    order.forEach((index,i)=>view.setUint32(i*4,255-(index<0?Math.round(s.radius/.025):s.colours[index]),true));
    bytes[80]=Number(s.whiteSplash);bytes[81]=Number(s.keepMachinery);bytes[82]=Number(s.whiteAnimation);view.setUint32(84,48+s.camera,true);return bytes;
}
export function identifyBios(buffer){
    if(![262144,524288,1048576].includes(buffer.byteLength))throw Error('Choose a 256 KiB, 512 KiB or 1 MiB BIOS file.');
    const bytes=new Uint8Array(buffer);let sum=0,p=0,eof=false;
    for(let i=0;i<8000;i++){if(eof||p===bytes.length){sum--;continue;}let c=bytes[p++];if(c===26){eof=true;sum--;continue;}if(c===13&&bytes[p]===10){c=10;p++;}sum+=c;}
    const versions={0x516c1:[2,'Xecuter 4983.06'],0x5160d:[2,'Xecuter 4983.67'],0x501f9:[1,'Xecuter 4981'],0x4fab7:[3,'Evox M7'],0x4a03a:[4,'Evox M8 1.6'],0x4a0c2:[4,'Evox M8']};
    const [kind,name]=versions[sum]||[0,'Unrecognised BIOS'];return {kind,name,size:buffer.byteLength,checksum:sum>>>0};
}
export function readLogo(text){
    if(text.length>262144||!text.startsWith('xof ')||text.slice(8,11)!=='txt')throw Error('Choose a text DirectX .x file under 256 KiB.');
    const mesh=/\bMesh\s*(?:[A-Za-z_][A-Za-z_0-9]*)?\s*\{/.exec(text);if(!mesh)throw Error('The X file has no Mesh block.');
    let pos=mesh.index+mesh[0].length;
    function number(){while(/[\s;,]/.test(text[pos]||'!'))pos++;const m=/^[+-]?(?:\d+\.?\d*|\.\d+)(?:[eE][+-]?\d+)?/.exec(text.slice(pos));if(!m)throw Error('The X file contains an invalid number.');pos+=m[0].length;const n=Number(m[0]);if(!Number.isFinite(n))throw Error('The X file contains a non-finite value.');return n;}
    function integer(){const n=number();if(!Number.isInteger(n)||n<0||n>100000)throw Error('The X file contains an invalid count or index.');return n;}
    const vertices=[],indices=[],nv=integer();if(nv<2||nv>156)throw Error('The logo supports 2–156 vertices.');
    for(let i=0;i<nv*3;i++){const n=number();if(Math.abs(n)>3276.7)throw Error('A logo vertex is outside the supported range.');vertices.push(Math.fround(n));}
    const nf=integer();if(nf<2||nf>155)throw Error('The logo supports 2–155 triangular faces.');
    for(let i=0;i<nf;i++){if(integer()!==3)throw Error('Only triangular faces are supported.');for(let j=0;j<3;j++){const n=integer();if(n>=nv)throw Error('A logo face references a missing vertex.');indices.push(n);}}
    return {vertices,indices};
}
