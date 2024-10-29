import{s as C,n as k,a as D,j as Oe,r as ze,e as ne,I as ae}from"../chunks/scheduler.BmBaUOvj.js";import{S as M,i as F,e as U,t as q,s as $,c as j,h as I,j as A,f as S,a as R,g as B,b as x,d as z,k as v,J as oe,y as ie,p as L,z as Ne,A as ke,q as W,v as We,l as H,n as V,o as G,w as ce,r as K,m as Te}from"../chunks/index.C_nRBhsY.js";import{h as le,t as qe}from"../chunks/config.gUoqXaG8.js";import{b as Z}from"../chunks/paths.DKPltMw8.js";import{e as ue}from"../chunks/each.DhGhqZbU.js";import{g as Ae}from"../chunks/spread.CgU5AtxT.js";import{s as Ce}from"../chunks/moments.Bnxy5ADs.js";const Me=""+new URL("../assets/hero.esNPGaky.webp",import.meta.url).href;function Fe(r){let e,t,n,s,a=le.title+"",o,i,c,f=le.message+"",l,m,u,_='<button class="svelte-u2xvp4">Learn more</button>',h,g,b=`<img src="${Me}" alt="A drawing ot the King&#39;s College Strand building" class="svelte-u2xvp4"/>`;return{c(){e=U("section"),t=U("div"),n=U("h1"),s=U("div"),o=q(a),i=$(),c=U("p"),l=q(f),m=$(),u=U("a"),u.innerHTML=_,h=$(),g=U("picture"),g.innerHTML=b,this.h()},l(y){e=j(y,"SECTION",{class:!0});var P=I(e);t=j(P,"DIV",{class:!0});var w=I(t);n=j(w,"H1",{class:!0});var te=I(n);s=j(te,"DIV",{});var re=I(s);o=A(re,a),re.forEach(S),te.forEach(S),i=R(w),c=j(w,"P",{class:!0});var se=I(c);l=A(se,f),se.forEach(S),m=R(w),u=j(w,"A",{href:!0,class:!0,"data-svelte-h":!0}),B(u)!=="svelte-4ahjg0"&&(u.innerHTML=_),w.forEach(S),h=R(P),g=j(P,"PICTURE",{class:!0,"data-svelte-h":!0}),B(g)!=="svelte-lgv8l"&&(g.innerHTML=b),P.forEach(S),this.h()},h(){x(n,"class","hero-title svelte-u2xvp4"),x(c,"class","hero-message svelte-u2xvp4"),x(u,"href",Z+"/about"),x(u,"class","svelte-u2xvp4"),x(t,"class","hero-welcome svelte-u2xvp4"),x(g,"class","hero-img svelte-u2xvp4"),x(e,"class","hero svelte-u2xvp4")},m(y,P){z(y,e,P),v(e,t),v(t,n),v(n,s),v(s,o),v(t,i),v(t,c),v(c,l),v(t,m),v(t,u),v(e,h),v(e,g)},p:k,i:k,o:k,d(y){y&&S(e)}}}class De extends M{constructor(e){super(),F(this,e,null,Fe,C,{})}}const Be={"images.ctfassets.net":"contentful","cdn.builder.io":"builder.io","images.prismic.io":"imgix","www.datocms-assets.com":"imgix","cdn.sanity.io":"imgix","images.unsplash.com":"imgix","cdn.shopify.com":"shopify","s7d1.scene7.com":"scene7","ip.keycdn.com":"keycdn","assets.caisy.io":"bunny","images.contentstack.io":"contentstack","ucarecdn.com":"uploadcare"},He={"imgix.net":"imgix","files.wordpress.com":"wordpress","b-cdn.net":"bunny","storyblok.com":"storyblok","kc-usercontent.com":"kontent.ai","cloudinary.com":"cloudinary","kxcdn.com":"keycdn","imgeng.in":"imageengine","imagekit.io":"imagekit","cloudimg.io":"cloudimage","ucarecdn.com":"uploadcare","supabase.co":"supabase"},Ve={"/cdn-cgi/image/":"cloudflare","/cdn-cgi/imagedelivery/":"cloudflare_images","/_next/image":"nextjs","/_next/static":"nextjs","/_vercel/image":"vercel","/is/image":"scene7","/_ipx/":"ipx","/_image":"astro","/.netlify/images":"netlify","/storage/v1/object/public/":"supabase","/storage/v1/render/image/public/":"supabase"},O=r=>{if(!r)return r;const e=Number(r);return isNaN(e)?r:Math.round(e)},d=(r,e,t,n,s)=>{t?(s&&(t=O(t)),r.searchParams.set(e,t.toString())):n&&r.searchParams.delete(e)},E=(r,e,t)=>{r.searchParams.has(e)||r.searchParams.set(e,t.toString())},T=(r,e)=>{const t=Number(r.searchParams.get(e));return isNaN(t)?void 0:t},ye=r=>{const{pathname:e,search:t}=r;return`${e}${t}`},X=r=>r.hostname==="n"?ye(r):r.toString(),p=(r,e)=>typeof r=="string"?new URL(r,e??"http://n/"):r,fe=new Map(Object.entries(Be)),Ge=Object.entries(He);function Ke(r){return ve(r)||Ze(r)}function ve(r){if(typeof r=="string"&&!r.startsWith("https://"))return!1;const{hostname:e}=p(r);if(fe.has(e))return fe.get(e);for(const[t,n]of Ge)if(e.endsWith(`.${t}`))return n;return!1}function Ze(r){const{pathname:e}=p(r);for(const[t,n]of Object.entries(Ve))if(e.startsWith(t))return n;return!1}const Je=({url:r,width:e,height:t,format:n})=>{const s=p(r);return e&&e>4e3&&(t&&(t=Math.round(t*4e3/e)),e=4e3),t&&t>4e3&&(e&&(e=Math.round(e*4e3/t)),t=4e3),d(s,"w",e,!0,!0),d(s,"h",t,!0,!0),d(s,"fm",n),E(s,"fit","fill"),s},Xe=({url:r,width:e,height:t,format:n})=>{const s=p(r);return d(s,"width",e,!0,!0),d(s,"height",t,!0,!0),d(s,"format",n),e&&t&&(E(s,"fit","cover"),E(s,"sharp","true")),s},Qe=({url:r,width:e,height:t,format:n})=>{var a;const s=p(r);if(d(s,"w",e,!0,!0),d(s,"h",t,!0,!0),E(s,"fit","min"),n){s.searchParams.set("fm",n);const o=s.searchParams.get("auto");o==="format"?s.searchParams.delete("auto"):o!=null&&o.includes("format")&&s.searchParams.set("auto",o.split(",").filter(i=>i!=="format").join(","))}else s.searchParams.delete("fm"),(a=s.searchParams.get("auto"))!=null&&a.includes("format")||s.searchParams.append("auto","format");return s},Ye=/(.+?)(?:_(?:(pico|icon|thumb|small|compact|medium|large|grande|original|master)|(\d*)x(\d*)))?(?:_crop_([a-z]+))?(\.[a-zA-Z]+)(\.png|\.jpg|\.webp|\.avif)?$/,et=r=>{const e=p(r),t=e.pathname.match(Ye);if(!t)throw new Error("Invalid Shopify URL");const[,n,s,a,o,i,c,f]=t;e.pathname=`${n}${c}`;const l=a||e.searchParams.get("width"),m=o||e.searchParams.get("height");return e.searchParams.delete("width"),e.searchParams.delete("height"),{base:e.toString(),width:Number(l)||void 0,height:Number(m)||void 0,format:f?f.slice(1):void 0,params:{crop:i,size:s},cdn:"shopify"}},tt=({base:r,width:e,height:t,format:n,params:s})=>{const a=p(r);return d(a,"width",e,!0,!0),d(a,"height",t,!0,!0),d(a,"crop",s==null?void 0:s.crop),d(a,"format",n),a},rt=({url:r,width:e,height:t})=>{const n=et(r);if(!n)return;const s={...n,width:e,height:t};return tt(s)},st=({url:r,width:e,height:t})=>{const n=p(r);return d(n,"w",e,!0,!0),d(n,"h",t,!0,!0),E(n,"crop","1"),n},nt=({url:r,width:e,height:t})=>{const n=p(r);return d(n,"w",e,!0,!0),d(n,"h",t,!0,!0),d(n,"q",T(n,"q"),!0),n},at=/https?:\/\/(?<host>[^\/]+)\/(?<cloudName>[^\/]+)\/(?<assetType>image|video|raw)\/(?<deliveryType>upload|fetch|private|authenticated|sprite|facebook|twitter|youtube|vimeo)\/?(?<signature>s\-\-[a-zA-Z0-9]+\-\-)?\/?(?<transformations>(?:[^_\/]+_[^,\/]+,?)*)?\/(?:(?<version>v\d+)\/)?(?<idAndFormat>[^\s]+)$/g,ot=r=>r?Object.fromEntries(r.split(",").map(e=>e.split("_"))):{},we=({host:r,cloudName:e,assetType:t,deliveryType:n,signature:s,transformations:a={},version:o,id:i,format:c})=>{c&&(a.f=c);const f=Object.entries(a).map(([m,u])=>`${m}_${u}`).join(",");return`https://${[r,e,t,n,s,f,o,i].filter(Boolean).join("/")}`},Se=r=>{const t=[...p(r).toString().matchAll(at)];if(!t.length)throw new Error("Invalid Cloudinary URL");const n=t[0].groups||{},{transformations:s="",idAndFormat:a,...o}=n;delete n.idAndFormat;const i=a.lastIndexOf("."),c=i<0?a:a.slice(0,i),f=i<0?void 0:a.slice(i+1),{w:l,h:m,f:u,..._}=ot(s),h=u&&u!=="auto"?u:f;return{base:we({...o,id:c,transformations:_}),width:Number(l)||void 0,height:Number(m)||void 0,format:h,cdn:"cloudinary",params:{...n,id:n.deliveryType==="fetch"?a:c,format:h,transformations:_}}},it=({base:r,width:e,height:t,format:n,params:s})=>{var i;const a=Se(r.toString()),o={transformations:{},...a.params,...s,format:n||"auto"};return e&&(o.transformations.w=O(e).toString()),t&&(o.transformations.h=O(t).toString()),(i=o.transformations).c||(i.c="lfill"),we(o)},ct=({url:r,width:e,height:t,format:n="auto"})=>{var o,i;const s=Se(r);if(!s)throw new Error("Invalid Cloudinary URL");if(((o=s.params)==null?void 0:o.assetType)!=="image")throw new Error("Cloudinary transformer only supports images");if((i=s.params)!=null&&i.signature)throw new Error("Cloudinary transformer does not support signed URLs");const a={...s,width:e,height:t,format:n};return it(a)},lt=/https?:\/\/(?<host>[^\/]+)\/cdn-cgi\/image\/(?<transformations>[^\/]+)?\/(?<path>.*)$/g,ut=r=>Object.fromEntries(r.split(",").map(e=>e.split("="))),xe=({host:r,transformations:e={},path:t})=>{const n=Object.entries(e).map(([a,o])=>`${a}=${o}`).join(",");return`https://${[r,"cdn-cgi","image",n,t].join("/")}`},Pe=r=>{const e=p(r),t=[...e.toString().matchAll(lt)];if(!t.length)throw new Error("Invalid Cloudflare URL");const n=t[0].groups||{},{transformations:s,...a}=n,{width:o,height:i,f:c,...f}=ut(s);return xe({...a,transformations:f}),{base:e.toString(),width:Number(o)||void 0,height:Number(i)||void 0,format:c,cdn:"cloudflare",params:{...n,transformations:f}}},ft=({base:r,width:e,height:t,format:n,params:s})=>{var i;const a=Pe(r.toString()),o={transformations:{},...a.params,...s};return e&&(o.transformations.width=e==null?void 0:e.toString()),t&&(o.transformations.height=t==null?void 0:t.toString()),n&&(o.transformations.f=n==="jpg"?"jpeg":n),(i=o.transformations).fit||(i.fit="cover"),new URL(xe(o))},mt=({url:r,width:e,height:t,format:n="auto"})=>{const s=Pe(r);if(!s)throw new Error("Invalid Cloudflare URL");const a={...s,width:e,height:t,format:n};return ft(a)},ht=({url:r,width:e,height:t})=>{const n=p(r);return d(n,"width",e,!0,!0),e&&t&&E(n,"aspect_ratio",`${e}:${t}`),n},dt=/(?<id>\/f\/\d+\/\d+x\d+\/\w+\/[^\/]+)\/?(?<modifiers>m\/?(?<crop>\d+x\d+:\d+x\d+)?\/?(?<resize>(?<flipx>\-)?(?<width>\d+)x(?<flipy>\-)?(?<height>\d+))?\/?(filters\:(?<filters>[^\/]+))?)?$/g,gt=/^(?<modifiers>\/(?<crop>\d+x\d+:\d+x\d+)?\/?(?<resize>(?<flipx>\-)?(?<width>\d+)x(?<flipy>\-)?(?<height>\d+))?\/?(filters\:(?<filters>[^\/]+))?\/?)?(?<id>\/f\/.+)$/g,pt=r=>r?Object.fromEntries(r.split(":").map(e=>{if(!e)return[];const[t,n]=e.split("(");return[t,n.replace(")","")]})):{},_t=r=>{if(!r)return;const e=Object.entries(r).map(([t,n])=>`${t}(${n??""})`);if(e.length!==0)return`filters:${e.join(":")}`},bt=r=>{const e=p(r),t=e.hostname==="img2.storyblok.com"?gt:dt,[n]=e.pathname.matchAll(t);if(!n||!n.groups)throw new Error("Invalid Storyblok URL");const{id:s,crop:a,width:o,height:i,filters:c,flipx:f,flipy:l}=n.groups,{format:m,...u}=pt(c);return e.hostname==="img2.storyblok.com"&&(e.hostname="a.storyblok.com"),{base:e.origin+s,width:Number(o)||void 0,height:Number(i)||void 0,format:m,params:{crop:a,filters:u,flipx:f,flipy:l},cdn:"storyblok"}},yt=({base:r,width:e=0,height:t=0,format:n,params:s={}})=>{const{crop:a,filters:o,flipx:i="",flipy:c=""}=s,f=`${i}${e}x${c}${t}`;return new URL([r,"m",a,f,_t(o),n].filter(Boolean).join("/"))},vt=({url:r,width:e,height:t,format:n})=>{const s=bt(r);if(s)return n&&(s.params||(s.params={filters:{}}),s.params.filters||(s.params.filters={}),s.params.filters.format=n),yt({...s,width:e,height:t})},wt=({url:r,width:e,height:t,format:n})=>{const s=p(r);return d(s,"w",e,!0,!0),d(s,"h",t,!0,!0),d(s,"fm",n,!0),e&&t&&E(s,"fit","crop"),s},me=r=>{const t=p(r).searchParams.get("url");if(!t||!t.startsWith("http"))return!1;const n=ve(t);return n?{cdn:n,url:t}:!1},St=({base:r,width:e,params:{quality:t=75,root:n="_vercel"}={}})=>{const s=new URL("http://n");return s.pathname=`/${n}/image`,s.searchParams.set("url",r.toString()),d(s,"w",e,!1,!0),E(s,"q",t),ye(s)},Ue=({url:r,width:e,cdn:t})=>{const n=p(r),s=n.pathname.startsWith("/_next/image")||n.pathname.startsWith("/_vercel/image"),a=s?n.searchParams.get("url"):r.toString();if(a)return d(n,"w",e,!0,!0),s?X(n):St({base:a,width:e,params:{root:t==="nextjs"?"_next":"_vercel"}})},xt=r=>Ue({...r,cdn:"nextjs"}),Pt=({url:r,width:e,height:t,format:n})=>{const s=p(r);return d(s,"wid",e,!0,!0),d(s,"hei",t,!0,!0),d(s,"fmt",n,!0),d(s,"qlt",T(s,"qlt"),!0),d(s,"scl",T(s,"scl"),!0),E(s,"fit","crop"),!e&&!t&&E(s,"scl",1),s},Ut=({url:r,width:e,height:t,format:n})=>{const s=p(r);return d(s,"width",e,!0,!0),d(s,"height",t,!0,!0),d(s,"format",n,!0),d(s,"quality",T(s,"quality"),!0),E(s,"enlarge",0),s},jt=({url:r,width:e,height:t,format:n})=>{const s=p(r);return d(s,"width",e,!0,!0),d(s,"height",t,!0,!0),d(s,"format",n),d(s,"quality",T(s,"quality"),!0),s},J={width:"w",height:"h",autoWidthWithFallback:"w_auto",auto_width_fallback:"w_auto",scaleToScreenWidth:"pc",scale_to_screen_width:"pc",crop:"cr",outputFormat:"f",format:"f",fit:"m",fitMethod:"m",compression:"cmpr",sharpness:"s",rotate:"r",inline:"in",keepMeta:"meta",keep_meta:"meta",noOptimization:"pass",no_optimization:"pass",force_download:"dl",max_device_pixel_ratio:"maxdpr",maxDevicePixelRatio:"maxdpr"};function Et(r){return Object.keys(J).find(n=>J[n]===r)||""}function It(r){let e=r.toString(),t=[];if(e){let n=e.split("imgeng=");n.length>1&&(t=n[1].split("/"))}return t}function $t(r){let e=r.toString(),t="";if(e){let n=e.split("imgeng=");n.length>1?t=n[0].slice(0,-1):t=e}return t}const Rt=({url:r,width:e,height:t,format:n})=>{const s=p(r),a=$t(s);let o={};const i=s.toString()===a?[]:It(s);i.length&&(o=Nt(i)),e&&(o.width=e),t&&(o.height=t),n&&(o.format=n),o.hasOwnProperty("fit")||(o={...o,fit:"cropbox"});let c=Lt(o),f=Ot(c),l=f===""?"":a.includes("?")?"&":"?";return`${a}${l}${f}`};function Lt(r){return Object.entries(r).reduce((e,[t,n])=>e+zt(t,n),"")}function Ot(r){return r&&r!==""?`imgeng=${r}`:""}function zt(r,e){let t=J[r];return t&&(e||e===0)?`/${t}_${e}`:""}function Nt(r){let e={};return r.forEach(t=>{let n=t.split("_");if(n.length>1){let s=n[0],a=n[1],o=Et(s);o&&(e[o]=a)}}),e}const kt=({url:r,width:e,height:t,format:n})=>{const s=p(r);return d(s,"width",e,!0,!0),d(s,"height",t,!0,!0),d(s,"format",n),s.searchParams.has("format")||E(s,"auto","webp"),e&&t&&E(s,"fit","crop"),s},Wt=/https?:\/\/(?<host>[^\/]+)\/cdn-cgi\/imagedelivery\/(?<accountHash>[^\/]+)\/(?<imageId>[^\/]+)\/*(?<transformations>[^\/]+)*$/g,Tt=r=>{var e;return Object.fromEntries(((e=r==null?void 0:r.split(","))==null?void 0:e.map(t=>t.split("=")))??[])},qt=({host:r,accountHash:e,transformations:t={},imageId:n})=>{const s=Object.entries(t).map(([o,i])=>`${o}=${i}`).join(",");return`https://${[r,"cdn-cgi","imagedelivery",e,n,s].join("/")}`},je=r=>{const e=p(r),t=[...e.toString().matchAll(Wt)];if(!t.length)throw new Error("Invalid Cloudflare Images URL");const n=t[0].groups||{},{transformations:s,...a}=n,{w:o,h:i,f:c,...f}=Tt(s);return{base:e.toString(),width:Number(o)||void 0,height:Number(i)||void 0,format:c,cdn:"cloudflare_images",params:{...a,transformations:f}}},At=({base:r,width:e,height:t,format:n,params:s})=>{var i;const a=je(r.toString()),o={transformations:{},...a.params,...s};return e&&(o.transformations.w=e==null?void 0:e.toString()),t&&(o.transformations.h=t==null?void 0:t.toString()),n&&(o.transformations.f=n),(i=o.transformations).fit||(i.fit="cover"),new URL(qt(o))},Ct=({url:r,width:e,height:t,format:n="auto"})=>{const s=je(r);if(!s)throw new Error("Invalid Cloudflare Images URL");const a={...s,width:e,height:t,format:n};return At(a)},Mt=r=>{const e=p(r),[t,...n]=e.pathname.split("/").slice(1),s=Object.fromEntries(t.split(",").map(a=>{const[o,i]=a.split("_");return[o,i]}));if(s.s){const[a,o]=s.s.split("x");s.w||(s.w=a),s.h||(s.h=o)}return{base:n.join("/"),width:Number(s.w)||void 0,height:Number(s.h)||void 0,quality:Number(s.q)||void 0,format:s.f||"auto",params:s,cdn:"ipx"}},he=({base:r,width:e,height:t,format:n,params:s})=>{const a=(s==null?void 0:s.modifiers)??{};e&&t?a.s=`${e}x${t}`:e?a.w=`${e}`:t&&(a.h=`${t}`),n&&(a.f=n);const o=s!=null&&s.base.endsWith("/")?s==null?void 0:s.base:`${s==null?void 0:s.base}/`,i=Object.entries(a).map(([l,m])=>`${l}_${m}`).join(","),c=r.toString(),f=c.startsWith("/")?c.slice(1):c;return`${o}${i}/${f}`},Ft=r=>{var o,i,c,f;const e=String(r.url),t=p(e),n=t.pathname.startsWith("/_ipx")&&t.hostname!=="n"?`${t.origin}/_ipx`:"/_ipx",s=((i=(o=r.cdnOptions)==null?void 0:o.ipx)==null?void 0:i.base)??n;if(s&&s!=="/"&&e.startsWith(s)){const l=Mt(e.replace(s,""));return he({...l,...r,params:{...(c=r.cdnOptions)==null?void 0:c.ipx,base:s}})}return he({...r,base:e,params:{...(f=r.cdnOptions)==null?void 0:f.ipx,base:s}})},Dt=({url:r,width:e,height:t,format:n})=>{const s=p(r),a=X(new URL(s.pathname,s.origin)),o={searchParams:new URLSearchParams};return d(o,"href",a,!0,!0),d(o,"w",e,!0,!0),d(o,"h",t,!0,!0),d(o,"f",n),`/_image?${o.searchParams.toString()}`},Bt=new Set(["w","h","q","fm","url","width","height","quality"]),Ht=r=>{const e=p(r),t=Number(e.searchParams.get("w")??e.searchParams.get("width"))??void 0,n=Number(e.searchParams.get("h")??e.searchParams.get("height"))??void 0,s=Number(e.searchParams.get("q")??e.searchParams.get("quality"))||void 0,a=e.searchParams.get("fm")||void 0,o=e.searchParams.get("url")||"",i={quality:s};return e.searchParams.forEach((c,f)=>{Bt.has(f)||(i[f]=c)}),e.search="",{base:o,width:t,height:n,format:a,params:i,cdn:"netlify"}},de=({base:r,width:e,height:t,format:n,params:{site:s,quality:a,...o}={}})=>{const i=p("/.netlify/images",s);return Object.entries(o).forEach(([c,f])=>d(i,c,f)),d(i,"q",a,!0,!0),d(i,"w",e,!0,!0),d(i,"h",t,!0,!0),d(i,"fm",n),E(i,"fit","cover"),i.searchParams.set("url",r.toString()),X(i)},Vt=r=>{var t,n;const e=p(r.url);if(e.pathname.startsWith("/.netlify/images")){const{params:s,base:a,format:o}=Ht(e);return de({base:a,format:o,...r,params:{...s,site:e.hostname==="n"?void 0:e.origin}})}return de({...r,base:r.url,params:{site:(n=(t=r.cdnOptions)==null?void 0:t.netlify)==null?void 0:n.site}})},Gt=r=>(r.searchParams.get("tr")||"").split(",").reduce((t,n)=>{const[s,a]=n.split("-");return t[s]=a,t},{}),Kt=({url:r,width:e,height:t,format:n})=>{const s=p(r),a=Gt(s);a.w=e&&Math.round(e),a.h=t&&Math.round(t),a.f||(a.f="auto"),n&&(a.f=n);const o=Object.keys(a).map(i=>{const c=a[i];if(c)return`${i}-${c}`}).filter(i=>i).join(",");return s.searchParams.set("tr",o),s},Zt=/^https?:\/\/(?<host>[^\/]+)\/(?<uuid>[^\/]+)/g;function Ee(r){const e=new URL(r),t=e.pathname+e.search+e.hash,n=t.lastIndexOf("http"),s=t.lastIndexOf("/");let a="";return n>=0?a=t.slice(n):s>=0&&(a=t.slice(s+1)),a}function Jt(r){return r.startsWith("http")}function Xt(r){const e=new URL(r);return{pathname:e.origin+e.pathname||"",search:e.search||"",hash:e.hash||""}}function Qt(r){const e=new URL(r),t=Ee(r),n=Jt(t)?Xt(t).pathname:t;return e.pathname=e.pathname.replace(n,""),e.search="",e.hash="",e.toString()}const Yt=r=>{if(typeof r!="string"||!r)return"";let e=r.trim();return e.startsWith("-/")?e=e.slice(2):e.startsWith("/")&&(e=e.slice(1)),e.endsWith("/")&&(e=e.slice(0,e.length-1)),e};function er(r){const e=Qt(r),t=new URL(e),n=t.pathname.indexOf("/-/");return n===-1?[]:t.pathname.substring(n).split("/-/").filter(Boolean).map(a=>Yt(a))}const tr=r=>r.length?r.reduce((e,t)=>{const[n,s]=t.split("/");return{...e,[n]:s}},{}):{},Ie=({host:r,uuid:e,operations:t={},filename:n})=>{const s=Object.entries(t).map(([o,i])=>`${o}/${i}`).join("/-/");return`https://${[r,e,s?`-/${s}`:"",n].join("/")}`},$e=r=>{const e=p(r),t=[...e.toString().matchAll(Zt)];if(!t.length)throw new Error("Invalid Uploadcare URL");const n=t[0].groups||{},{...s}=n,a=Ee(e.toString()),{format:o,...i}=tr(er(e.toString())),c=o&&o!=="auto"?o:"auto";return{base:Ie({...s,filename:a||void 0,operations:{...i,format:c}}),cdn:"uploadcare",params:{...n,filename:a||void 0,operations:{...i,format:c}}}},rr=({base:r,width:e,height:t,params:n})=>{const s=r.toString(),a=$e(s.endsWith("/")?s:`${s}/`),o={operations:{},...a.params,...n};return e&&t?o.operations={...o.operations,resize:`${e}x${t}`}:(e&&(o.operations={...o.operations,resize:`${e}x`}),t&&(o.operations={...o.operations,resize:`x${t}`})),Ie(o)},sr=({url:r,width:e,height:t})=>{const n=$e(r);if(!n)throw new Error("Invalid Uploadcare URL");const s={...n,width:e,height:t};return rr(s)},nr=["origin"],Re="/storage/v1/object/public/",Q="/storage/v1/render/image/public/",ar=r=>r.pathname.startsWith(Q),Le=r=>{const e=p(r);if(!ar(e))return{cdn:"supabase",base:e.origin+e.pathname};const n=e.pathname.replace(Q,""),s=e.searchParams.has("quality")?Number(e.searchParams.get("quality")):void 0,a=e.searchParams.has("width")?Number(e.searchParams.get("width")):void 0,o=e.searchParams.has("height")?Number(e.searchParams.get("height")):void 0,i=e.searchParams.has("format")?e.searchParams.get("format"):void 0,c=e.searchParams.has("resize")?e.searchParams.get("resize"):void 0;return{cdn:"supabase",base:e.origin+Re+n,width:a,height:o,format:i,params:{quality:s,resize:c}}},or=({base:r,width:e,height:t,format:n,params:s})=>{const a=Le(r.toString());r=a.base,e=e||a.width,t=t||a.height,n=n||a.format,s={...a.params,...s};const o=new URLSearchParams;return e&&o.set("width",O(e).toString()),t&&o.set("height",O(t).toString()),n&&nr.includes(n)&&o.set("format",n),s!=null&&s.quality&&o.set("quality",O(s.quality).toString()),s!=null&&s.resize&&o.set("resize",s.resize),o.toString()===""?r:a.base.replace(Re,Q)+"?"+o.toString()},ir=({url:r,width:e,height:t,format:n,cdnOptions:s})=>{const a=Le(r);return or({base:a.base,width:e||a.width,height:t||a.height,format:n||a.format,params:(s==null?void 0:s.supabase)||a.params})},ge={vercel:me,nextjs:me};function cr(r,e){if(!(e in ge))return!1;const t=ge[e];return t?t(r):!1}function Y(r,e){const t=Ke(r)||e;if(!t)return!1;const n=cr(r,t);return n||{cdn:t,url:r}}const ee=r=>({imgix:Qe,contentful:Je,"builder.io":Xe,shopify:rt,wordpress:st,cloudimage:nt,cloudinary:ct,bunny:ht,storyblok:vt,cloudflare:mt,vercel:Ue,nextjs:xt,scene7:Pt,"kontent.ai":wt,keycdn:Ut,directus:jt,imageengine:Rt,contentstack:kt,cloudflare_images:Ct,ipx:Ft,astro:Dt,netlify:Vt,imagekit:Kt,uploadcare:sr,supabase:ir})[r];var lr=(r,e)=>{if(!(!r||!e))switch(e){case"constrained":return`(min-width: ${r}px) ${r}px, 100vw`;case"fixed":return`${r}px`;case"fullWidth":return"100vw";default:return}},N=r=>r||r===0?`${r}px`:void 0,ur=({width:r,height:e,aspectRatio:t,layout:n,objectFit:s="cover",background:a})=>{const o=[["object-fit",s]];return a!=null&&a.startsWith("https:")||a!=null&&a.startsWith("http:")||a!=null&&a.startsWith("data:")?(o.push(["background-image",`url(${a})`]),o.push(["background-size","cover"]),o.push(["background-repeat","no-repeat"])):o.push(["background",a]),n==="fixed"&&(o.push(["width",N(r)]),o.push(["height",N(e)])),n==="constrained"&&(o.push(["max-width",N(r)]),o.push(["max-height",N(e)]),o.push(["aspect-ratio",t?`${t}`:void 0]),o.push(["width","100%"])),n==="fullWidth"&&(o.push(["width","100%"]),o.push(["aspect-ratio",t?`${t}`:void 0]),o.push(["height",N(e)])),Object.fromEntries(o.filter(([,i])=>i))},fr=[6016,5120,4480,3840,3200,2560,2048,1920,1668,1280,1080,960,828,750,640],pe=24,mr=({width:r,layout:e,resolutions:t=fr})=>{if(e==="fullWidth")return t;if(!r)return[];const n=r*2;return e==="fixed"?[r,n]:e==="constrained"?[r,n,...t.filter(s=>s<n)]:[]},hr=({src:r,width:e,layout:t="constrained",height:n,aspectRatio:s,breakpoints:a,cdn:o,transformer:i,format:c})=>{const f=Y(r,o);return f&&!i&&(i=ee(f.cdn)),i?(a||(a=mr({width:e,layout:t})),a.sort((l,m)=>l-m).map(l=>{let m;return n&&s&&(m=Math.round(l/s)),{url:f?f.url:r,width:l,height:m,format:c}})):[]},dr=r=>{let{src:e,cdn:t,transformer:n}=r;const s=Y(e,t);return s&&!n&&(n=ee(s.cdn)),n?hr({...r,transformer:n}).map(a=>{const o=n(a);return`${o==null?void 0:o.toString()} ${a.width}w`}).join(`,
`):""};function gr({width:r,height:e,priority:t,layout:n="constrained",aspectRatio:s,...a}){return r=r&&Number(r)||void 0,e=e&&Number(e)||void 0,t?(a.loading||(a.loading="eager"),a.fetchpriority||(a.fetchpriority="high")):(a.loading||(a.loading="lazy"),a.decoding||(a.decoding="async")),a.alt===""&&(a.role||(a.role="presentation")),s?r?e||(e=Math.round(r/s)):e&&(r=Math.round(e*s)):r&&e&&(s=r/e),{width:r,height:e,aspectRatio:s,layout:n,...a}}function pr(r){let{src:e,cdn:t,transformer:n,background:s,layout:a,objectFit:o,breakpoints:i,width:c,height:f,aspectRatio:l,unstyled:m,...u}=gr(r);const _=e?Y(e,t):void 0;let h=e;if(_&&(h=_.url,n||(n=ee(_.cdn))),n&&s==="auto"){const b=l?Math.round(pe/l):void 0,y=n({url:h,width:pe,height:b});y&&(s=y.toString())}const g={width:c,height:f,aspectRatio:l,layout:a,objectFit:o,background:s};if(u.sizes||(u.sizes=lr(c,a)),m||(u.style={...ur(g),...u.style}),n){u.srcset=dr({src:h,width:c,height:f,aspectRatio:l,layout:a,breakpoints:i,transformer:n,cdn:t});const b=n({url:h,width:c,height:f});b&&(h=b),(a==="fullWidth"||a==="constrained")&&(c=void 0,f=void 0)}return{...u,src:h==null?void 0:h.toString(),width:c,height:f}}function _r(r,e){const t=RegExp(r,"g");return n=>{if(typeof n!="string")throw new TypeError(`expected an argument of type string, but got ${typeof n}`);return n.match(t)?n.replace(t,e):n}}const br=_r(/[A-Z]/,r=>`-${r.toLowerCase()}`);function yr(r,e=br){if(!r||typeof r!="object"||Array.isArray(r))throw new TypeError(`expected an argument of type object, but got ${typeof r}`);return Object.keys(r).map(t=>`${e(t)}: ${r[t]};`).join(`
`)}function vr(r){var l,m,u,_;let e,t,n,s,a,o,i,c=[r[11],{style:r[0]},{loading:r[6]},{width:r[8]},{height:r[7]},{decoding:r[5]},{role:r[3]},{fetchpriority:r[1]},{alt:t=(l=r[10])==null?void 0:l.toString()},{src:n=(m=r[9])==null?void 0:m.toString()},{srcset:s=(u=r[4])==null?void 0:u.toString()},{sizes:a=(_=r[2])==null?void 0:_.toString()}],f={};for(let h=0;h<c.length;h+=1)f=D(f,c[h]);return{c(){e=U("img"),this.h()},l(h){e=j(h,"IMG",{style:!0,loading:!0,width:!0,height:!0,decoding:!0,role:!0,fetchpriority:!0,alt:!0,src:!0,srcset:!0,sizes:!0}),this.h()},h(){oe(e,f)},m(h,g){z(h,e,g),o||(i=[ie(e,"load",r[15]),ie(e,"error",r[16])],o=!0)},p(h,[g]){var b,y,P,w;oe(e,f=Ae(c,[g&2048&&h[11],g&1&&{style:h[0]},g&64&&{loading:h[6]},g&256&&{width:h[8]},g&128&&{height:h[7]},g&32&&{decoding:h[5]},g&8&&{role:h[3]},g&2&&{fetchpriority:h[1]},g&1024&&t!==(t=(b=h[10])==null?void 0:b.toString())&&{alt:t},g&512&&!Oe(e.src,n=(y=h[9])==null?void 0:y.toString())&&{src:n},g&16&&s!==(s=(P=h[4])==null?void 0:P.toString())&&{srcset:s},g&4&&a!==(a=(w=h[2])==null?void 0:w.toString())&&{sizes:a}]))},i:k,o:k,d(h){h&&S(e),o=!1,ze(i)}}}function wr(r,e,t){let n,s,a,o,i,c,f,l,m,u,_,h,g,b;function y(w){ae.call(this,r,w)}function P(w){ae.call(this,r,w)}return r.$$set=w=>{t(11,e=D(D({},e),ne(w)))},r.$$.update=()=>{t(12,{style:n,...s}=e,n,(t(14,s),t(11,e))),r.$$.dirty&16384&&t(10,{alt:a,style:o,src:i,width:c,height:f,loading:l,decoding:m,srcset:u,role:_,sizes:h,fetchpriority:g}=pr(s),a,(t(13,o),t(14,s),t(11,e)),(t(9,i),t(14,s),t(11,e)),(t(8,c),t(14,s),t(11,e)),(t(7,f),t(14,s),t(11,e)),(t(6,l),t(14,s),t(11,e)),(t(5,m),t(14,s),t(11,e)),(t(4,u),t(14,s),t(11,e)),(t(3,_),t(14,s),t(11,e)),(t(2,h),t(14,s),t(11,e)),(t(1,g),t(14,s),t(11,e))),r.$$.dirty&12288&&t(0,b=[yr(o||{}),n].filter(Boolean).join(";"))},e=ne(e),[b,g,h,_,u,m,l,f,c,i,a,e,n,o,s,y,P]}class Sr extends M{constructor(e){super(),F(this,e,wr,vr,C,{})}}function _e(r,e,t){const n=r.slice();n[1]=e[t];const s=Ce(n[1].title);return n[2]=s,n}function be(r){let e,t,n,s,a,o,i=r[2].year+"",c,f,l=r[2].name+"",m,u,_,h;return n=new Sr({props:{src:`${Z}${r[1].feature.image}`,alt:r[1].feature.description,title:r[1].feature.title,layout:"fullWidth",height:320}}),{c(){e=U("li"),t=U("a"),H(n.$$.fragment),s=$(),a=U("div"),o=U("span"),c=q(i),f=$(),m=q(l),_=$(),this.h()},l(g){e=j(g,"LI",{class:!0});var b=I(e);t=j(b,"A",{href:!0,class:!0});var y=I(t);V(n.$$.fragment,y),s=R(y),a=j(y,"DIV",{class:!0});var P=I(a);o=j(P,"SPAN",{class:!0});var w=I(o);c=A(w,i),w.forEach(S),f=R(P),m=A(P,l),P.forEach(S),y.forEach(S),_=R(b),b.forEach(S),this.h()},h(){x(o,"class","svelte-1giuzwu"),x(a,"class","title svelte-1giuzwu"),x(t,"href",u="moments/"+r[1].slug),x(t,"class","svelte-1giuzwu"),x(e,"class","moment svelte-1giuzwu")},m(g,b){z(g,e,b),v(e,t),G(n,t,null),v(t,s),v(t,a),v(a,o),v(o,c),v(a,f),v(a,m),v(e,_),h=!0},p(g,b){const y={};b&1&&(y.src=`${Z}${g[1].feature.image}`),b&1&&(y.alt=g[1].feature.description),b&1&&(y.title=g[1].feature.title),n.$set(y),(!h||b&1)&&i!==(i=g[2].year+"")&&ce(c,i),(!h||b&1)&&l!==(l=g[2].name+"")&&ce(m,l),(!h||b&1&&u!==(u="moments/"+g[1].slug))&&x(t,"href",u)},i(g){h||(L(n.$$.fragment,g),h=!0)},o(g){W(n.$$.fragment,g),h=!1},d(g){g&&S(e),K(n)}}}function xr(r){let e,t,n='<h2>The 13 Moments</h2> <p class="svelte-1giuzwu">Explore the pivotal moments in King&#39;s College history</p>',s,a,o,i=ue(r[0]),c=[];for(let l=0;l<i.length;l+=1)c[l]=be(_e(r,i,l));const f=l=>W(c[l],1,1,()=>{c[l]=null});return{c(){e=U("section"),t=U("hgroup"),t.innerHTML=n,s=$(),a=U("ul");for(let l=0;l<c.length;l+=1)c[l].c();this.h()},l(l){e=j(l,"SECTION",{id:!0,class:!0});var m=I(e);t=j(m,"HGROUP",{class:!0,"data-svelte-h":!0}),B(t)!=="svelte-4ab9fe"&&(t.innerHTML=n),s=R(m),a=j(m,"UL",{class:!0});var u=I(a);for(let _=0;_<c.length;_+=1)c[_].l(u);u.forEach(S),m.forEach(S),this.h()},h(){x(t,"class","svelte-1giuzwu"),x(a,"class","moments svelte-1giuzwu"),x(e,"id","moments"),x(e,"class","svelte-1giuzwu")},m(l,m){z(l,e,m),v(e,t),v(e,s),v(e,a);for(let u=0;u<c.length;u+=1)c[u]&&c[u].m(a,null);o=!0},p(l,[m]){if(m&1){i=ue(l[0]);let u;for(u=0;u<i.length;u+=1){const _=_e(l,i,u);c[u]?(c[u].p(_,m),L(c[u],1)):(c[u]=be(_),c[u].c(),L(c[u],1),c[u].m(a,null))}for(Ne(),u=i.length;u<c.length;u+=1)f(u);ke()}},i(l){if(!o){for(let m=0;m<i.length;m+=1)L(c[m]);o=!0}},o(l){c=c.filter(Boolean);for(let m=0;m<c.length;m+=1)W(c[m]);o=!1},d(l){l&&S(e),We(c,l)}}}function Pr(r,e,t){let{moments:n}=e;return r.$$set=s=>{"moments"in s&&t(0,n=s.moments)},[n]}class Ur extends M{constructor(e){super(),F(this,e,Pr,xr,C,{moments:0})}}function jr(r){let e,t,n,s,a;return document.title=qe,t=new De({}),s=new Ur({props:{moments:r[0].moments}}),{c(){e=$(),H(t.$$.fragment),n=$(),H(s.$$.fragment)},l(o){Te("svelte-fbczdu",document.head).forEach(S),e=R(o),V(t.$$.fragment,o),n=R(o),V(s.$$.fragment,o)},m(o,i){z(o,e,i),G(t,o,i),z(o,n,i),G(s,o,i),a=!0},p(o,[i]){const c={};i&1&&(c.moments=o[0].moments),s.$set(c)},i(o){a||(L(t.$$.fragment,o),L(s.$$.fragment,o),a=!0)},o(o){W(t.$$.fragment,o),W(s.$$.fragment,o),a=!1},d(o){o&&(S(e),S(n)),K(t,o),K(s,o)}}}function Er(r,e,t){let{data:n}=e;return r.$$set=s=>{"data"in s&&t(0,n=s.data)},[n]}class kr extends M{constructor(e){super(),F(this,e,Er,jr,C,{data:0})}}export{kr as component};
