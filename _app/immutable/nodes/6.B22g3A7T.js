import{s as A,b as U,t as q,c as $,d as j,f as I,g as C,h as x,i as R,j as D,k as w,l as T,m as v,n as z,a as B,ad as nt,a8 as at,D as Ot,x as Nt,e as ot,af as it,p as zt,q as ct}from"../chunks/scheduler.DNWStqsm.js";import{S as M,i as F,t as L,g as kt,f as Wt,b as k,c as H,a as V,m as G,d as K}from"../chunks/index.cxl-M09p.js";import{h as lt}from"../chunks/config.DNfGVc1F.js";import{b as Z}from"../chunks/entry.vJj3kGdY.js";import{e as ut}from"../chunks/each.LDVH8paA.js";import{g as Tt}from"../chunks/spread.CgU5AtxT.js";import{s as qt}from"../chunks/moments.DB7qmFSF.js";const Ct=""+new URL("../assets/hero.esNPGaky.webp",import.meta.url).href;function At(r){let t,e,n,s,a=lt.title+"",o,i,c,f=lt.message+"",l,m,u,_='<button class="svelte-19i7ztv">Learn more</button>',h,g,b=`<img src="${Ct}" alt="A drawing ot the King&#39;s College Strand building" class="svelte-19i7ztv"/>`;return{c(){t=U("section"),e=U("div"),n=U("h1"),s=U("div"),o=q(a),i=$(),c=U("p"),l=q(f),m=$(),u=U("a"),u.innerHTML=_,h=$(),g=U("picture"),g.innerHTML=b,this.h()},l(y){t=j(y,"SECTION",{class:!0});var P=I(t);e=j(P,"DIV",{class:!0});var S=I(e);n=j(S,"H1",{class:!0});var et=I(n);s=j(et,"DIV",{});var rt=I(s);o=C(rt,a),rt.forEach(x),et.forEach(x),i=R(S),c=j(S,"P",{class:!0});var st=I(c);l=C(st,f),st.forEach(x),m=R(S),u=j(S,"A",{href:!0,class:!0,"data-svelte-h":!0}),D(u)!=="svelte-4ahjg0"&&(u.innerHTML=_),S.forEach(x),h=R(P),g=j(P,"PICTURE",{class:!0,"data-svelte-h":!0}),D(g)!=="svelte-lgv8l"&&(g.innerHTML=b),P.forEach(x),this.h()},h(){w(n,"class","hero-title svelte-19i7ztv"),w(c,"class","hero-message svelte-19i7ztv"),w(u,"href",Z+"/about"),w(u,"class","svelte-19i7ztv"),w(e,"class","hero-welcome svelte-19i7ztv"),w(g,"class","hero-img svelte-19i7ztv"),w(t,"class","hero svelte-19i7ztv")},m(y,P){T(y,t,P),v(t,e),v(e,n),v(n,s),v(s,o),v(e,i),v(e,c),v(c,l),v(e,m),v(e,u),v(t,h),v(t,g)},p:z,i:z,o:z,d(y){y&&x(t)}}}class Mt extends M{constructor(t){super(),F(this,t,null,At,A,{})}}const Ft={"images.ctfassets.net":"contentful","cdn.builder.io":"builder.io","images.prismic.io":"imgix","www.datocms-assets.com":"imgix","cdn.sanity.io":"imgix","images.unsplash.com":"imgix","cdn.shopify.com":"shopify","s7d1.scene7.com":"scene7","ip.keycdn.com":"keycdn","assets.caisy.io":"bunny","images.contentstack.io":"contentstack","ucarecdn.com":"uploadcare"},Dt={"imgix.net":"imgix","files.wordpress.com":"wordpress","b-cdn.net":"bunny","storyblok.com":"storyblok","kc-usercontent.com":"kontent.ai","cloudinary.com":"cloudinary","kxcdn.com":"keycdn","imgeng.in":"imageengine","imagekit.io":"imagekit","cloudimg.io":"cloudimage","ucarecdn.com":"uploadcare","supabase.co":"supabase"},Bt={"/cdn-cgi/image/":"cloudflare","/cdn-cgi/imagedelivery/":"cloudflare_images","/_next/image":"nextjs","/_next/static":"nextjs","/_vercel/image":"vercel","/is/image":"scene7","/_ipx/":"ipx","/_image":"astro","/.netlify/images":"netlify","/storage/v1/object/public/":"supabase","/storage/v1/render/image/public/":"supabase"},O=r=>{if(!r)return r;const t=Number(r);return isNaN(t)?r:Math.round(t)},d=(r,t,e,n,s)=>{e?(s&&(e=O(e)),r.searchParams.set(t,e.toString())):n&&r.searchParams.delete(t)},E=(r,t,e)=>{r.searchParams.has(t)||r.searchParams.set(t,e.toString())},W=(r,t)=>{const e=Number(r.searchParams.get(t));return isNaN(e)?void 0:e},yt=r=>{const{pathname:t,search:e}=r;return`${t}${e}`},J=r=>r.hostname==="n"?yt(r):r.toString(),p=(r,t)=>typeof r=="string"?new URL(r,t??"http://n/"):r,ft=new Map(Object.entries(Ft)),Ht=Object.entries(Dt);function Vt(r){return vt(r)||Gt(r)}function vt(r){if(typeof r=="string"&&!r.startsWith("https://"))return!1;const{hostname:t}=p(r);if(ft.has(t))return ft.get(t);for(const[e,n]of Ht)if(t.endsWith(`.${e}`))return n;return!1}function Gt(r){const{pathname:t}=p(r);for(const[e,n]of Object.entries(Bt))if(t.startsWith(e))return n;return!1}const Kt=({url:r,width:t,height:e,format:n})=>{const s=p(r);return t&&t>4e3&&(e&&(e=Math.round(e*4e3/t)),t=4e3),e&&e>4e3&&(t&&(t=Math.round(t*4e3/e)),e=4e3),d(s,"w",t,!0,!0),d(s,"h",e,!0,!0),d(s,"fm",n),E(s,"fit","fill"),s},Zt=({url:r,width:t,height:e,format:n})=>{const s=p(r);return d(s,"width",t,!0,!0),d(s,"height",e,!0,!0),d(s,"format",n),t&&e&&(E(s,"fit","cover"),E(s,"sharp","true")),s},Xt=({url:r,width:t,height:e,format:n})=>{var a;const s=p(r);if(d(s,"w",t,!0,!0),d(s,"h",e,!0,!0),E(s,"fit","min"),n){s.searchParams.set("fm",n);const o=s.searchParams.get("auto");o==="format"?s.searchParams.delete("auto"):o!=null&&o.includes("format")&&s.searchParams.set("auto",o.split(",").filter(i=>i!=="format").join(","))}else s.searchParams.delete("fm"),(a=s.searchParams.get("auto"))!=null&&a.includes("format")||s.searchParams.append("auto","format");return s},Jt=/(.+?)(?:_(?:(pico|icon|thumb|small|compact|medium|large|grande|original|master)|(\d*)x(\d*)))?(?:_crop_([a-z]+))?(\.[a-zA-Z]+)(\.png|\.jpg|\.webp|\.avif)?$/,Qt=r=>{const t=p(r),e=t.pathname.match(Jt);if(!e)throw new Error("Invalid Shopify URL");const[,n,s,a,o,i,c,f]=e;t.pathname=`${n}${c}`;const l=a||t.searchParams.get("width"),m=o||t.searchParams.get("height");return t.searchParams.delete("width"),t.searchParams.delete("height"),{base:t.toString(),width:Number(l)||void 0,height:Number(m)||void 0,format:f?f.slice(1):void 0,params:{crop:i,size:s},cdn:"shopify"}},Yt=({base:r,width:t,height:e,format:n,params:s})=>{const a=p(r);return d(a,"width",t,!0,!0),d(a,"height",e,!0,!0),d(a,"crop",s==null?void 0:s.crop),d(a,"format",n),a},te=({url:r,width:t,height:e})=>{const n=Qt(r);if(!n)return;const s={...n,width:t,height:e};return Yt(s)},ee=({url:r,width:t,height:e})=>{const n=p(r);return d(n,"w",t,!0,!0),d(n,"h",e,!0,!0),E(n,"crop","1"),n},re=({url:r,width:t,height:e})=>{const n=p(r);return d(n,"w",t,!0,!0),d(n,"h",e,!0,!0),d(n,"q",W(n,"q"),!0),n},se=/https?:\/\/(?<host>[^\/]+)\/(?<cloudName>[^\/]+)\/(?<assetType>image|video|raw)\/(?<deliveryType>upload|fetch|private|authenticated|sprite|facebook|twitter|youtube|vimeo)\/?(?<signature>s\-\-[a-zA-Z0-9]+\-\-)?\/?(?<transformations>(?:[^_\/]+_[^,\/]+,?)*)?\/(?:(?<version>v\d+)\/)?(?<idAndFormat>[^\s]+)$/g,ne=r=>r?Object.fromEntries(r.split(",").map(t=>t.split("_"))):{},St=({host:r,cloudName:t,assetType:e,deliveryType:n,signature:s,transformations:a={},version:o,id:i,format:c})=>{c&&(a.f=c);const f=Object.entries(a).map(([m,u])=>`${m}_${u}`).join(",");return`https://${[r,t,e,n,s,f,o,i].filter(Boolean).join("/")}`},wt=r=>{const e=[...p(r).toString().matchAll(se)];if(!e.length)throw new Error("Invalid Cloudinary URL");const n=e[0].groups||{},{transformations:s="",idAndFormat:a,...o}=n;delete n.idAndFormat;const i=a.lastIndexOf("."),c=i<0?a:a.slice(0,i),f=i<0?void 0:a.slice(i+1),{w:l,h:m,f:u,..._}=ne(s),h=u&&u!=="auto"?u:f;return{base:St({...o,id:c,transformations:_}),width:Number(l)||void 0,height:Number(m)||void 0,format:h,cdn:"cloudinary",params:{...n,id:n.deliveryType==="fetch"?a:c,format:h,transformations:_}}},ae=({base:r,width:t,height:e,format:n,params:s})=>{var i;const a=wt(r.toString()),o={transformations:{},...a.params,...s,format:n||"auto"};return t&&(o.transformations.w=O(t).toString()),e&&(o.transformations.h=O(e).toString()),(i=o.transformations).c||(i.c="lfill"),St(o)},oe=({url:r,width:t,height:e,format:n="auto"})=>{var o,i;const s=wt(r);if(!s)throw new Error("Invalid Cloudinary URL");if(((o=s.params)==null?void 0:o.assetType)!=="image")throw new Error("Cloudinary transformer only supports images");if((i=s.params)!=null&&i.signature)throw new Error("Cloudinary transformer does not support signed URLs");const a={...s,width:t,height:e,format:n};return ae(a)},ie=/https?:\/\/(?<host>[^\/]+)\/cdn-cgi\/image\/(?<transformations>[^\/]+)?\/(?<path>.*)$/g,ce=r=>Object.fromEntries(r.split(",").map(t=>t.split("="))),Pt=({host:r,transformations:t={},path:e})=>{const n=Object.entries(t).map(([a,o])=>`${a}=${o}`).join(",");return`https://${[r,"cdn-cgi","image",n,e].join("/")}`},xt=r=>{const t=p(r),e=[...t.toString().matchAll(ie)];if(!e.length)throw new Error("Invalid Cloudflare URL");const n=e[0].groups||{},{transformations:s,...a}=n,{width:o,height:i,f:c,...f}=ce(s);return Pt({...a,transformations:f}),{base:t.toString(),width:Number(o)||void 0,height:Number(i)||void 0,format:c,cdn:"cloudflare",params:{...n,transformations:f}}},le=({base:r,width:t,height:e,format:n,params:s})=>{var i;const a=xt(r.toString()),o={transformations:{},...a.params,...s};return t&&(o.transformations.width=t==null?void 0:t.toString()),e&&(o.transformations.height=e==null?void 0:e.toString()),n&&(o.transformations.f=n==="jpg"?"jpeg":n),(i=o.transformations).fit||(i.fit="cover"),new URL(Pt(o))},ue=({url:r,width:t,height:e,format:n="auto"})=>{const s=xt(r);if(!s)throw new Error("Invalid Cloudflare URL");const a={...s,width:t,height:e,format:n};return le(a)},fe=({url:r,width:t,height:e})=>{const n=p(r);return d(n,"width",t,!0,!0),t&&e&&E(n,"aspect_ratio",`${t}:${e}`),n},me=/(?<id>\/f\/\d+\/\d+x\d+\/\w+\/[^\/]+)\/?(?<modifiers>m\/?(?<crop>\d+x\d+:\d+x\d+)?\/?(?<resize>(?<flipx>\-)?(?<width>\d+)x(?<flipy>\-)?(?<height>\d+))?\/?(filters\:(?<filters>[^\/]+))?)?$/g,he=/^(?<modifiers>\/(?<crop>\d+x\d+:\d+x\d+)?\/?(?<resize>(?<flipx>\-)?(?<width>\d+)x(?<flipy>\-)?(?<height>\d+))?\/?(filters\:(?<filters>[^\/]+))?\/?)?(?<id>\/f\/.+)$/g,de=r=>r?Object.fromEntries(r.split(":").map(t=>{if(!t)return[];const[e,n]=t.split("(");return[e,n.replace(")","")]})):{},ge=r=>{if(!r)return;const t=Object.entries(r).map(([e,n])=>`${e}(${n??""})`);if(t.length!==0)return`filters:${t.join(":")}`},pe=r=>{const t=p(r),e=t.hostname==="img2.storyblok.com"?he:me,[n]=t.pathname.matchAll(e);if(!n||!n.groups)throw new Error("Invalid Storyblok URL");const{id:s,crop:a,width:o,height:i,filters:c,flipx:f,flipy:l}=n.groups,{format:m,...u}=de(c);return t.hostname==="img2.storyblok.com"&&(t.hostname="a.storyblok.com"),{base:t.origin+s,width:Number(o)||void 0,height:Number(i)||void 0,format:m,params:{crop:a,filters:u,flipx:f,flipy:l},cdn:"storyblok"}},_e=({base:r,width:t=0,height:e=0,format:n,params:s={}})=>{const{crop:a,filters:o,flipx:i="",flipy:c=""}=s,f=`${i}${t}x${c}${e}`;return new URL([r,"m",a,f,ge(o),n].filter(Boolean).join("/"))},be=({url:r,width:t,height:e,format:n})=>{const s=pe(r);if(s)return n&&(s.params||(s.params={filters:{}}),s.params.filters||(s.params.filters={}),s.params.filters.format=n),_e({...s,width:t,height:e})},ye=({url:r,width:t,height:e,format:n})=>{const s=p(r);return d(s,"w",t,!0,!0),d(s,"h",e,!0,!0),d(s,"fm",n,!0),t&&e&&E(s,"fit","crop"),s},mt=r=>{const e=p(r).searchParams.get("url");if(!e||!e.startsWith("http"))return!1;const n=vt(e);return n?{cdn:n,url:e}:!1},ve=({base:r,width:t,params:{quality:e=75,root:n="_vercel"}={}})=>{const s=new URL("http://n");return s.pathname=`/${n}/image`,s.searchParams.set("url",r.toString()),d(s,"w",t,!1,!0),E(s,"q",e),yt(s)},Ut=({url:r,width:t,cdn:e})=>{const n=p(r),s=n.pathname.startsWith("/_next/image")||n.pathname.startsWith("/_vercel/image"),a=s?n.searchParams.get("url"):r.toString();if(a)return d(n,"w",t,!0,!0),s?J(n):ve({base:a,width:t,params:{root:e==="nextjs"?"_next":"_vercel"}})},Se=r=>Ut({...r,cdn:"nextjs"}),we=({url:r,width:t,height:e,format:n})=>{const s=p(r);return d(s,"wid",t,!0,!0),d(s,"hei",e,!0,!0),d(s,"fmt",n,!0),d(s,"qlt",W(s,"qlt"),!0),d(s,"scl",W(s,"scl"),!0),E(s,"fit","crop"),!t&&!e&&E(s,"scl",1),s},Pe=({url:r,width:t,height:e,format:n})=>{const s=p(r);return d(s,"width",t,!0,!0),d(s,"height",e,!0,!0),d(s,"format",n,!0),d(s,"quality",W(s,"quality"),!0),E(s,"enlarge",0),s},xe=({url:r,width:t,height:e,format:n})=>{const s=p(r);return d(s,"width",t,!0,!0),d(s,"height",e,!0,!0),d(s,"format",n),d(s,"quality",W(s,"quality"),!0),s},X={width:"w",height:"h",autoWidthWithFallback:"w_auto",auto_width_fallback:"w_auto",scaleToScreenWidth:"pc",scale_to_screen_width:"pc",crop:"cr",outputFormat:"f",format:"f",fit:"m",fitMethod:"m",compression:"cmpr",sharpness:"s",rotate:"r",inline:"in",keepMeta:"meta",keep_meta:"meta",noOptimization:"pass",no_optimization:"pass",force_download:"dl",max_device_pixel_ratio:"maxdpr",maxDevicePixelRatio:"maxdpr"};function Ue(r){return Object.keys(X).find(n=>X[n]===r)||""}function je(r){let t=r.toString(),e=[];if(t){let n=t.split("imgeng=");n.length>1&&(e=n[1].split("/"))}return e}function Ee(r){let t=r.toString(),e="";if(t){let n=t.split("imgeng=");n.length>1?e=n[0].slice(0,-1):e=t}return e}const Ie=({url:r,width:t,height:e,format:n})=>{const s=p(r),a=Ee(s);let o={};const i=s.toString()===a?[]:je(s);i.length&&(o=Oe(i)),t&&(o.width=t),e&&(o.height=e),n&&(o.format=n),o.hasOwnProperty("fit")||(o={...o,fit:"cropbox"});let c=$e(o),f=Re(c),l=f===""?"":a.includes("?")?"&":"?";return`${a}${l}${f}`};function $e(r){return Object.entries(r).reduce((t,[e,n])=>t+Le(e,n),"")}function Re(r){return r&&r!==""?`imgeng=${r}`:""}function Le(r,t){let e=X[r];return e&&(t||t===0)?`/${e}_${t}`:""}function Oe(r){let t={};return r.forEach(e=>{let n=e.split("_");if(n.length>1){let s=n[0],a=n[1],o=Ue(s);o&&(t[o]=a)}}),t}const Ne=({url:r,width:t,height:e,format:n})=>{const s=p(r);return d(s,"width",t,!0,!0),d(s,"height",e,!0,!0),d(s,"format",n),s.searchParams.has("format")||E(s,"auto","webp"),t&&e&&E(s,"fit","crop"),s},ze=/https?:\/\/(?<host>[^\/]+)\/cdn-cgi\/imagedelivery\/(?<accountHash>[^\/]+)\/(?<imageId>[^\/]+)\/*(?<transformations>[^\/]+)*$/g,ke=r=>{var t;return Object.fromEntries(((t=r==null?void 0:r.split(","))==null?void 0:t.map(e=>e.split("=")))??[])},We=({host:r,accountHash:t,transformations:e={},imageId:n})=>{const s=Object.entries(e).map(([o,i])=>`${o}=${i}`).join(",");return`https://${[r,"cdn-cgi","imagedelivery",t,n,s].join("/")}`},jt=r=>{const t=p(r),e=[...t.toString().matchAll(ze)];if(!e.length)throw new Error("Invalid Cloudflare Images URL");const n=e[0].groups||{},{transformations:s,...a}=n,{w:o,h:i,f:c,...f}=ke(s);return{base:t.toString(),width:Number(o)||void 0,height:Number(i)||void 0,format:c,cdn:"cloudflare_images",params:{...a,transformations:f}}},Te=({base:r,width:t,height:e,format:n,params:s})=>{var i;const a=jt(r.toString()),o={transformations:{},...a.params,...s};return t&&(o.transformations.w=t==null?void 0:t.toString()),e&&(o.transformations.h=e==null?void 0:e.toString()),n&&(o.transformations.f=n),(i=o.transformations).fit||(i.fit="cover"),new URL(We(o))},qe=({url:r,width:t,height:e,format:n="auto"})=>{const s=jt(r);if(!s)throw new Error("Invalid Cloudflare Images URL");const a={...s,width:t,height:e,format:n};return Te(a)},Ce=r=>{const t=p(r),[e,...n]=t.pathname.split("/").slice(1),s=Object.fromEntries(e.split(",").map(a=>{const[o,i]=a.split("_");return[o,i]}));if(s.s){const[a,o]=s.s.split("x");s.w||(s.w=a),s.h||(s.h=o)}return{base:n.join("/"),width:Number(s.w)||void 0,height:Number(s.h)||void 0,quality:Number(s.q)||void 0,format:s.f||"auto",params:s,cdn:"ipx"}},ht=({base:r,width:t,height:e,format:n,params:s})=>{const a=(s==null?void 0:s.modifiers)??{};t&&e?a.s=`${t}x${e}`:t?a.w=`${t}`:e&&(a.h=`${e}`),n&&(a.f=n);const o=s!=null&&s.base.endsWith("/")?s==null?void 0:s.base:`${s==null?void 0:s.base}/`,i=Object.entries(a).map(([l,m])=>`${l}_${m}`).join(","),c=r.toString(),f=c.startsWith("/")?c.slice(1):c;return`${o}${i}/${f}`},Ae=r=>{var o,i,c,f;const t=String(r.url),e=p(t),n=e.pathname.startsWith("/_ipx")&&e.hostname!=="n"?`${e.origin}/_ipx`:"/_ipx",s=((i=(o=r.cdnOptions)==null?void 0:o.ipx)==null?void 0:i.base)??n;if(s&&s!=="/"&&t.startsWith(s)){const l=Ce(t.replace(s,""));return ht({...l,...r,params:{...(c=r.cdnOptions)==null?void 0:c.ipx,base:s}})}return ht({...r,base:t,params:{...(f=r.cdnOptions)==null?void 0:f.ipx,base:s}})},Me=({url:r,width:t,height:e,format:n})=>{const s=p(r),a=J(new URL(s.pathname,s.origin)),o={searchParams:new URLSearchParams};return d(o,"href",a,!0,!0),d(o,"w",t,!0,!0),d(o,"h",e,!0,!0),d(o,"f",n),`/_image?${o.searchParams.toString()}`},Fe=new Set(["w","h","q","fm","url","width","height","quality"]),De=r=>{const t=p(r),e=Number(t.searchParams.get("w")??t.searchParams.get("width"))??void 0,n=Number(t.searchParams.get("h")??t.searchParams.get("height"))??void 0,s=Number(t.searchParams.get("q")??t.searchParams.get("quality"))||void 0,a=t.searchParams.get("fm")||void 0,o=t.searchParams.get("url")||"",i={quality:s};return t.searchParams.forEach((c,f)=>{Fe.has(f)||(i[f]=c)}),t.search="",{base:o,width:e,height:n,format:a,params:i,cdn:"netlify"}},dt=({base:r,width:t,height:e,format:n,params:{site:s,quality:a,...o}={}})=>{const i=p("/.netlify/images",s);return Object.entries(o).forEach(([c,f])=>d(i,c,f)),d(i,"q",a,!0,!0),d(i,"w",t,!0,!0),d(i,"h",e,!0,!0),d(i,"fm",n),E(i,"fit","cover"),i.searchParams.set("url",r.toString()),J(i)},Be=r=>{var e,n;const t=p(r.url);if(t.pathname.startsWith("/.netlify/images")){const{params:s,base:a,format:o}=De(t);return dt({base:a,format:o,...r,params:{...s,site:t.hostname==="n"?void 0:t.origin}})}return dt({...r,base:r.url,params:{site:(n=(e=r.cdnOptions)==null?void 0:e.netlify)==null?void 0:n.site}})},He=r=>(r.searchParams.get("tr")||"").split(",").reduce((e,n)=>{const[s,a]=n.split("-");return e[s]=a,e},{}),Ve=({url:r,width:t,height:e,format:n})=>{const s=p(r),a=He(s);a.w=t&&Math.round(t),a.h=e&&Math.round(e),a.f||(a.f="auto"),n&&(a.f=n);const o=Object.keys(a).map(i=>{const c=a[i];if(c)return`${i}-${c}`}).filter(i=>i).join(",");return s.searchParams.set("tr",o),s},Ge=/^https?:\/\/(?<host>[^\/]+)\/(?<uuid>[^\/]+)/g;function Et(r){const t=new URL(r),e=t.pathname+t.search+t.hash,n=e.lastIndexOf("http"),s=e.lastIndexOf("/");let a="";return n>=0?a=e.slice(n):s>=0&&(a=e.slice(s+1)),a}function Ke(r){return r.startsWith("http")}function Ze(r){const t=new URL(r);return{pathname:t.origin+t.pathname||"",search:t.search||"",hash:t.hash||""}}function Xe(r){const t=new URL(r),e=Et(r),n=Ke(e)?Ze(e).pathname:e;return t.pathname=t.pathname.replace(n,""),t.search="",t.hash="",t.toString()}const Je=r=>{if(typeof r!="string"||!r)return"";let t=r.trim();return t.startsWith("-/")?t=t.slice(2):t.startsWith("/")&&(t=t.slice(1)),t.endsWith("/")&&(t=t.slice(0,t.length-1)),t};function Qe(r){const t=Xe(r),e=new URL(t),n=e.pathname.indexOf("/-/");return n===-1?[]:e.pathname.substring(n).split("/-/").filter(Boolean).map(a=>Je(a))}const Ye=r=>r.length?r.reduce((t,e)=>{const[n,s]=e.split("/");return{...t,[n]:s}},{}):{},It=({host:r,uuid:t,operations:e={},filename:n})=>{const s=Object.entries(e).map(([o,i])=>`${o}/${i}`).join("/-/");return`https://${[r,t,s?`-/${s}`:"",n].join("/")}`},$t=r=>{const t=p(r),e=[...t.toString().matchAll(Ge)];if(!e.length)throw new Error("Invalid Uploadcare URL");const n=e[0].groups||{},{...s}=n,a=Et(t.toString()),{format:o,...i}=Ye(Qe(t.toString())),c=o&&o!=="auto"?o:"auto";return{base:It({...s,filename:a||void 0,operations:{...i,format:c}}),cdn:"uploadcare",params:{...n,filename:a||void 0,operations:{...i,format:c}}}},tr=({base:r,width:t,height:e,params:n})=>{const s=r.toString(),a=$t(s.endsWith("/")?s:`${s}/`),o={operations:{},...a.params,...n};return t&&e?o.operations={...o.operations,resize:`${t}x${e}`}:(t&&(o.operations={...o.operations,resize:`${t}x`}),e&&(o.operations={...o.operations,resize:`x${e}`})),It(o)},er=({url:r,width:t,height:e})=>{const n=$t(r);if(!n)throw new Error("Invalid Uploadcare URL");const s={...n,width:t,height:e};return tr(s)},rr=["origin"],Rt="/storage/v1/object/public/",Q="/storage/v1/render/image/public/",sr=r=>r.pathname.startsWith(Q),Lt=r=>{const t=p(r);if(!sr(t))return{cdn:"supabase",base:t.origin+t.pathname};const n=t.pathname.replace(Q,""),s=t.searchParams.has("quality")?Number(t.searchParams.get("quality")):void 0,a=t.searchParams.has("width")?Number(t.searchParams.get("width")):void 0,o=t.searchParams.has("height")?Number(t.searchParams.get("height")):void 0,i=t.searchParams.has("format")?t.searchParams.get("format"):void 0,c=t.searchParams.has("resize")?t.searchParams.get("resize"):void 0;return{cdn:"supabase",base:t.origin+Rt+n,width:a,height:o,format:i,params:{quality:s,resize:c}}},nr=({base:r,width:t,height:e,format:n,params:s})=>{const a=Lt(r.toString());r=a.base,t=t||a.width,e=e||a.height,n=n||a.format,s={...a.params,...s};const o=new URLSearchParams;return t&&o.set("width",O(t).toString()),e&&o.set("height",O(e).toString()),n&&rr.includes(n)&&o.set("format",n),s!=null&&s.quality&&o.set("quality",O(s.quality).toString()),s!=null&&s.resize&&o.set("resize",s.resize),o.toString()===""?r:a.base.replace(Rt,Q)+"?"+o.toString()},ar=({url:r,width:t,height:e,format:n,cdnOptions:s})=>{const a=Lt(r);return nr({base:a.base,width:t||a.width,height:e||a.height,format:n||a.format,params:(s==null?void 0:s.supabase)||a.params})},gt={vercel:mt,nextjs:mt};function or(r,t){if(!(t in gt))return!1;const e=gt[t];return e?e(r):!1}function Y(r,t){const e=Vt(r)||t;if(!e)return!1;const n=or(r,e);return n||{cdn:e,url:r}}const tt=r=>({imgix:Xt,contentful:Kt,"builder.io":Zt,shopify:te,wordpress:ee,cloudimage:re,cloudinary:oe,bunny:fe,storyblok:be,cloudflare:ue,vercel:Ut,nextjs:Se,scene7:we,"kontent.ai":ye,keycdn:Pe,directus:xe,imageengine:Ie,contentstack:Ne,cloudflare_images:qe,ipx:Ae,astro:Me,netlify:Be,imagekit:Ve,uploadcare:er,supabase:ar})[r];var ir=(r,t)=>{if(!(!r||!t))switch(t){case"constrained":return`(min-width: ${r}px) ${r}px, 100vw`;case"fixed":return`${r}px`;case"fullWidth":return"100vw";default:return}},N=r=>r||r===0?`${r}px`:void 0,cr=({width:r,height:t,aspectRatio:e,layout:n,objectFit:s="cover",background:a})=>{const o=[["object-fit",s]];return a!=null&&a.startsWith("https:")||a!=null&&a.startsWith("http:")||a!=null&&a.startsWith("data:")?(o.push(["background-image",`url(${a})`]),o.push(["background-size","cover"]),o.push(["background-repeat","no-repeat"])):o.push(["background",a]),n==="fixed"&&(o.push(["width",N(r)]),o.push(["height",N(t)])),n==="constrained"&&(o.push(["max-width",N(r)]),o.push(["max-height",N(t)]),o.push(["aspect-ratio",e?`${e}`:void 0]),o.push(["width","100%"])),n==="fullWidth"&&(o.push(["width","100%"]),o.push(["aspect-ratio",e?`${e}`:void 0]),o.push(["height",N(t)])),Object.fromEntries(o.filter(([,i])=>i))},lr=[6016,5120,4480,3840,3200,2560,2048,1920,1668,1280,1080,960,828,750,640],pt=24,ur=({width:r,layout:t,resolutions:e=lr})=>{if(t==="fullWidth")return e;if(!r)return[];const n=r*2;return t==="fixed"?[r,n]:t==="constrained"?[r,n,...e.filter(s=>s<n)]:[]},fr=({src:r,width:t,layout:e="constrained",height:n,aspectRatio:s,breakpoints:a,cdn:o,transformer:i,format:c})=>{const f=Y(r,o);return f&&!i&&(i=tt(f.cdn)),i?(a||(a=ur({width:t,layout:e})),a.sort((l,m)=>l-m).map(l=>{let m;return n&&s&&(m=Math.round(l/s)),{url:f?f.url:r,width:l,height:m,format:c}})):[]},mr=r=>{let{src:t,cdn:e,transformer:n}=r;const s=Y(t,e);return s&&!n&&(n=tt(s.cdn)),n?fr({...r,transformer:n}).map(a=>{const o=n(a);return`${o==null?void 0:o.toString()} ${a.width}w`}).join(`,
`):""};function hr({width:r,height:t,priority:e,layout:n="constrained",aspectRatio:s,...a}){return r=r&&Number(r)||void 0,t=t&&Number(t)||void 0,e?(a.loading||(a.loading="eager"),a.fetchpriority||(a.fetchpriority="high")):(a.loading||(a.loading="lazy"),a.decoding||(a.decoding="async")),a.alt===""&&(a.role||(a.role="presentation")),s?r?t||(t=Math.round(r/s)):t&&(r=Math.round(t*s)):r&&t&&(s=r/t),{width:r,height:t,aspectRatio:s,layout:n,...a}}function dr(r){let{src:t,cdn:e,transformer:n,background:s,layout:a,objectFit:o,breakpoints:i,width:c,height:f,aspectRatio:l,unstyled:m,...u}=hr(r);const _=t?Y(t,e):void 0;let h=t;if(_&&(h=_.url,n||(n=tt(_.cdn))),n&&s==="auto"){const b=l?Math.round(pt/l):void 0,y=n({url:h,width:pt,height:b});y&&(s=y.toString())}const g={width:c,height:f,aspectRatio:l,layout:a,objectFit:o,background:s};if(u.sizes||(u.sizes=ir(c,a)),m||(u.style={...cr(g),...u.style}),n){u.srcset=mr({src:h,width:c,height:f,aspectRatio:l,layout:a,breakpoints:i,transformer:n,cdn:e});const b=n({url:h,width:c,height:f});b&&(h=b),(a==="fullWidth"||a==="constrained")&&(c=void 0,f=void 0)}return{...u,src:h==null?void 0:h.toString(),width:c,height:f}}function gr(r,t){const e=RegExp(r,"g");return n=>{if(typeof n!="string")throw new TypeError(`expected an argument of type string, but got ${typeof n}`);return n.match(e)?n.replace(e,t):n}}const pr=gr(/[A-Z]/,r=>`-${r.toLowerCase()}`);function _r(r,t=pr){if(!r||typeof r!="object"||Array.isArray(r))throw new TypeError(`expected an argument of type object, but got ${typeof r}`);return Object.keys(r).map(e=>`${t(e)}: ${r[e]};`).join(`
`)}function br(r){var l,m,u,_;let t,e,n,s,a,o,i,c=[r[11],{style:r[0]},{loading:r[6]},{width:r[8]},{height:r[7]},{decoding:r[5]},{role:r[3]},{fetchpriority:r[1]},{alt:e=(l=r[10])==null?void 0:l.toString()},{src:n=(m=r[9])==null?void 0:m.toString()},{srcset:s=(u=r[4])==null?void 0:u.toString()},{sizes:a=(_=r[2])==null?void 0:_.toString()}],f={};for(let h=0;h<c.length;h+=1)f=B(f,c[h]);return{c(){t=U("img"),this.h()},l(h){t=j(h,"IMG",{style:!0,loading:!0,width:!0,height:!0,decoding:!0,role:!0,fetchpriority:!0,alt:!0,src:!0,srcset:!0,sizes:!0}),this.h()},h(){nt(t,f)},m(h,g){T(h,t,g),o||(i=[at(t,"load",r[15]),at(t,"error",r[16])],o=!0)},p(h,[g]){var b,y,P,S;nt(t,f=Tt(c,[g&2048&&h[11],g&1&&{style:h[0]},g&64&&{loading:h[6]},g&256&&{width:h[8]},g&128&&{height:h[7]},g&32&&{decoding:h[5]},g&8&&{role:h[3]},g&2&&{fetchpriority:h[1]},g&1024&&e!==(e=(b=h[10])==null?void 0:b.toString())&&{alt:e},g&512&&!Ot(t.src,n=(y=h[9])==null?void 0:y.toString())&&{src:n},g&16&&s!==(s=(P=h[4])==null?void 0:P.toString())&&{srcset:s},g&4&&a!==(a=(S=h[2])==null?void 0:S.toString())&&{sizes:a}]))},i:z,o:z,d(h){h&&x(t),o=!1,Nt(i)}}}function yr(r,t,e){let n,s,a,o,i,c,f,l,m,u,_,h,g,b;function y(S){it.call(this,r,S)}function P(S){it.call(this,r,S)}return r.$$set=S=>{e(11,t=B(B({},t),ot(S)))},r.$$.update=()=>{e(12,{style:n,...s}=t,n,(e(14,s),e(11,t))),r.$$.dirty&16384&&e(10,{alt:a,style:o,src:i,width:c,height:f,loading:l,decoding:m,srcset:u,role:_,sizes:h,fetchpriority:g}=dr(s),a,(e(13,o),e(14,s),e(11,t)),(e(9,i),e(14,s),e(11,t)),(e(8,c),e(14,s),e(11,t)),(e(7,f),e(14,s),e(11,t)),(e(6,l),e(14,s),e(11,t)),(e(5,m),e(14,s),e(11,t)),(e(4,u),e(14,s),e(11,t)),(e(3,_),e(14,s),e(11,t)),(e(2,h),e(14,s),e(11,t)),(e(1,g),e(14,s),e(11,t))),r.$$.dirty&12288&&e(0,b=[_r(o||{}),n].filter(Boolean).join(";"))},t=ot(t),[b,g,h,_,u,m,l,f,c,i,a,t,n,o,s,y,P]}class vr extends M{constructor(t){super(),F(this,t,yr,br,A,{})}}function _t(r,t,e){const n=r.slice();n[1]=t[e];const s=qt(n[1].title);return n[2]=s,n}function bt(r){let t,e,n,s,a,o,i=r[2].year+"",c,f,l=r[2].name+"",m,u,_,h;return n=new vr({props:{src:`${Z}${r[1].feature.image}`,alt:r[1].feature.description,title:r[1].feature.title,layout:"fullWidth",height:320}}),{c(){t=U("li"),e=U("a"),H(n.$$.fragment),s=$(),a=U("div"),o=U("span"),c=q(i),f=$(),m=q(l),_=$(),this.h()},l(g){t=j(g,"LI",{class:!0});var b=I(t);e=j(b,"A",{href:!0,class:!0});var y=I(e);V(n.$$.fragment,y),s=R(y),a=j(y,"DIV",{class:!0});var P=I(a);o=j(P,"SPAN",{class:!0});var S=I(o);c=C(S,i),S.forEach(x),f=R(P),m=C(P,l),P.forEach(x),y.forEach(x),_=R(b),b.forEach(x),this.h()},h(){w(o,"class","svelte-fh9389"),w(a,"class","title svelte-fh9389"),w(e,"href",u="moments/"+r[1].slug),w(e,"class","svelte-fh9389"),w(t,"class","moment svelte-fh9389")},m(g,b){T(g,t,b),v(t,e),G(n,e,null),v(e,s),v(e,a),v(a,o),v(o,c),v(a,f),v(a,m),v(t,_),h=!0},p(g,b){const y={};b&1&&(y.src=`${Z}${g[1].feature.image}`),b&1&&(y.alt=g[1].feature.description),b&1&&(y.title=g[1].feature.title),n.$set(y),(!h||b&1)&&i!==(i=g[2].year+"")&&ct(c,i),(!h||b&1)&&l!==(l=g[2].name+"")&&ct(m,l),(!h||b&1&&u!==(u="moments/"+g[1].slug))&&w(e,"href",u)},i(g){h||(L(n.$$.fragment,g),h=!0)},o(g){k(n.$$.fragment,g),h=!1},d(g){g&&x(t),K(n)}}}function Sr(r){let t,e,n='<h2 class="svelte-fh9389">The 13 Moments</h2> <p class="svelte-fh9389">Explore the pivotal moments in King&#39;s College history</p>',s,a,o,i=ut(r[0]),c=[];for(let l=0;l<i.length;l+=1)c[l]=bt(_t(r,i,l));const f=l=>k(c[l],1,1,()=>{c[l]=null});return{c(){t=U("section"),e=U("hgroup"),e.innerHTML=n,s=$(),a=U("ul");for(let l=0;l<c.length;l+=1)c[l].c();this.h()},l(l){t=j(l,"SECTION",{id:!0,class:!0});var m=I(t);e=j(m,"HGROUP",{class:!0,"data-svelte-h":!0}),D(e)!=="svelte-4ab9fe"&&(e.innerHTML=n),s=R(m),a=j(m,"UL",{class:!0});var u=I(a);for(let _=0;_<c.length;_+=1)c[_].l(u);u.forEach(x),m.forEach(x),this.h()},h(){w(e,"class","svelte-fh9389"),w(a,"class","moments svelte-fh9389"),w(t,"id","moments"),w(t,"class","svelte-fh9389")},m(l,m){T(l,t,m),v(t,e),v(t,s),v(t,a);for(let u=0;u<c.length;u+=1)c[u]&&c[u].m(a,null);o=!0},p(l,[m]){if(m&1){i=ut(l[0]);let u;for(u=0;u<i.length;u+=1){const _=_t(l,i,u);c[u]?(c[u].p(_,m),L(c[u],1)):(c[u]=bt(_),c[u].c(),L(c[u],1),c[u].m(a,null))}for(kt(),u=i.length;u<c.length;u+=1)f(u);Wt()}},i(l){if(!o){for(let m=0;m<i.length;m+=1)L(c[m]);o=!0}},o(l){c=c.filter(Boolean);for(let m=0;m<c.length;m+=1)k(c[m]);o=!1},d(l){l&&x(t),zt(c,l)}}}function wr(r,t,e){let{moments:n}=t;return r.$$set=s=>{"moments"in s&&e(0,n=s.moments)},[n]}class Pr extends M{constructor(t){super(),F(this,t,wr,Sr,A,{moments:0})}}function xr(r){let t,e,n,s;return t=new Mt({}),n=new Pr({props:{moments:r[0].moments}}),{c(){H(t.$$.fragment),e=$(),H(n.$$.fragment)},l(a){V(t.$$.fragment,a),e=R(a),V(n.$$.fragment,a)},m(a,o){G(t,a,o),T(a,e,o),G(n,a,o),s=!0},p(a,[o]){const i={};o&1&&(i.moments=a[0].moments),n.$set(i)},i(a){s||(L(t.$$.fragment,a),L(n.$$.fragment,a),s=!0)},o(a){k(t.$$.fragment,a),k(n.$$.fragment,a),s=!1},d(a){a&&x(e),K(t,a),K(n,a)}}}function Ur(r,t,e){let{data:n}=t;return r.$$set=s=>{"data"in s&&e(0,n=s.data)},[n]}class Nr extends M{constructor(t){super(),F(this,t,Ur,xr,A,{data:0})}}export{Nr as component};