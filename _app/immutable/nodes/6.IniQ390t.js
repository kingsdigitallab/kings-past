import{s as q,n as N,h as M,f as Le,r as Oe,j as se,I as ae}from"../chunks/scheduler.DwN6YR0h.js";import{S as C,i as A,e as v,t as F,s as $,c as P,h as I,j as D,f as y,a as R,g as B,b as w,d as k,k as _,J as oe,G as ie,p as L,z as ke,A as ze,q as W,v as Ne,l as H,n as G,o as V,w as We,r as K,m as Te}from"../chunks/index.CGIb6VRR.js";import{h as ce,t as qe}from"../chunks/config.gUoqXaG8.js";import{b as Z}from"../chunks/paths.DLgMoLrW.js";import{e as le}from"../chunks/each.D-l6fev2.js";import{g as Ce}from"../chunks/spread.CgU5AtxT.js";const Ae=""+new URL("../assets/hero.esNPGaky.webp",import.meta.url).href;function Me(r){let e,t,s,n,a=ce.title+"",o,i,c,m=ce.message+"",u,f,l,g="<button>Learn more</button>",d,b,j=`<img src="${Ae}" alt="A drawing ot the King&#39;s College Strand building" class="svelte-lzjkll"/>`;return{c(){e=v("section"),t=v("div"),s=v("h1"),n=v("div"),o=F(a),i=$(),c=v("p"),u=F(m),f=$(),l=v("a"),l.innerHTML=g,d=$(),b=v("picture"),b.innerHTML=j,this.h()},l(U){e=P(U,"SECTION",{class:!0});var E=I(e);t=P(E,"DIV",{class:!0});var S=I(t);s=P(S,"H1",{class:!0});var te=I(s);n=P(te,"DIV",{});var re=I(n);o=D(re,a),re.forEach(y),te.forEach(y),i=R(S),c=P(S,"P",{class:!0});var ne=I(c);u=D(ne,m),ne.forEach(y),f=R(S),l=P(S,"A",{href:!0,"data-svelte-h":!0}),B(l)!=="svelte-4ahjg0"&&(l.innerHTML=g),S.forEach(y),d=R(E),b=P(E,"PICTURE",{class:!0,"data-svelte-h":!0}),B(b)!=="svelte-lgv8l"&&(b.innerHTML=j),E.forEach(y),this.h()},h(){w(s,"class","hero-title svelte-lzjkll"),w(c,"class","hero-message svelte-lzjkll"),w(l,"href",Z+"/about"),w(t,"class","hero-welcome svelte-lzjkll"),w(b,"class","hero-img svelte-lzjkll"),w(e,"class","hero svelte-lzjkll")},m(U,E){k(U,e,E),_(e,t),_(t,s),_(s,n),_(n,o),_(t,i),_(t,c),_(c,u),_(t,f),_(t,l),_(e,d),_(e,b)},p:N,i:N,o:N,d(U){U&&y(e)}}}class Fe extends C{constructor(e){super(),A(this,e,null,Me,q,{})}}const De={"images.ctfassets.net":"contentful","cdn.builder.io":"builder.io","images.prismic.io":"imgix","www.datocms-assets.com":"imgix","cdn.sanity.io":"imgix","images.unsplash.com":"imgix","cdn.shopify.com":"shopify","s7d1.scene7.com":"scene7","ip.keycdn.com":"keycdn","assets.caisy.io":"bunny","images.contentstack.io":"contentstack","ucarecdn.com":"uploadcare"},Be={"imgix.net":"imgix","files.wordpress.com":"wordpress","b-cdn.net":"bunny","storyblok.com":"storyblok","kc-usercontent.com":"kontent.ai","cloudinary.com":"cloudinary","kxcdn.com":"keycdn","imgeng.in":"imageengine","imagekit.io":"imagekit","cloudimg.io":"cloudimage","ucarecdn.com":"uploadcare","supabase.co":"supabase"},He={"/cdn-cgi/image/":"cloudflare","/cdn-cgi/imagedelivery/":"cloudflare_images","/_next/image":"nextjs","/_next/static":"nextjs","/_vercel/image":"vercel","/is/image":"scene7","/_ipx/":"ipx","/_image":"astro","/.netlify/images":"netlify","/storage/v1/object/public/":"supabase","/storage/v1/render/image/public/":"supabase"},O=r=>{if(!r)return r;const e=Number(r);return isNaN(e)?r:Math.round(e)},h=(r,e,t,s,n)=>{t?(n&&(t=O(t)),r.searchParams.set(e,t.toString())):s&&r.searchParams.delete(e)},x=(r,e,t)=>{r.searchParams.has(e)||r.searchParams.set(e,t.toString())},T=(r,e)=>{const t=Number(r.searchParams.get(e));return isNaN(t)?void 0:t},_e=r=>{const{pathname:e,search:t}=r;return`${e}${t}`},X=r=>r.hostname==="n"?_e(r):r.toString(),p=(r,e)=>typeof r=="string"?new URL(r,e??"http://n/"):r,ue=new Map(Object.entries(De)),Ge=Object.entries(Be);function Ve(r){return ye(r)||Ke(r)}function ye(r){if(typeof r=="string"&&!r.startsWith("https://"))return!1;const{hostname:e}=p(r);if(ue.has(e))return ue.get(e);for(const[t,s]of Ge)if(e.endsWith(`.${t}`))return s;return!1}function Ke(r){const{pathname:e}=p(r);for(const[t,s]of Object.entries(He))if(e.startsWith(t))return s;return!1}const Ze=({url:r,width:e,height:t,format:s})=>{const n=p(r);return e&&e>4e3&&(t&&(t=Math.round(t*4e3/e)),e=4e3),t&&t>4e3&&(e&&(e=Math.round(e*4e3/t)),t=4e3),h(n,"w",e,!0,!0),h(n,"h",t,!0,!0),h(n,"fm",s),x(n,"fit","fill"),n},Je=({url:r,width:e,height:t,format:s})=>{const n=p(r);return h(n,"width",e,!0,!0),h(n,"height",t,!0,!0),h(n,"format",s),e&&t&&(x(n,"fit","cover"),x(n,"sharp","true")),n},Xe=({url:r,width:e,height:t,format:s})=>{var a;const n=p(r);if(h(n,"w",e,!0,!0),h(n,"h",t,!0,!0),x(n,"fit","min"),s){n.searchParams.set("fm",s);const o=n.searchParams.get("auto");o==="format"?n.searchParams.delete("auto"):o!=null&&o.includes("format")&&n.searchParams.set("auto",o.split(",").filter(i=>i!=="format").join(","))}else n.searchParams.delete("fm"),(a=n.searchParams.get("auto"))!=null&&a.includes("format")||n.searchParams.append("auto","format");return n},Qe=/(.+?)(?:_(?:(pico|icon|thumb|small|compact|medium|large|grande|original|master)|(\d*)x(\d*)))?(?:_crop_([a-z]+))?(\.[a-zA-Z]+)(\.png|\.jpg|\.webp|\.avif)?$/,Ye=r=>{const e=p(r),t=e.pathname.match(Qe);if(!t)throw new Error("Invalid Shopify URL");const[,s,n,a,o,i,c,m]=t;e.pathname=`${s}${c}`;const u=a||e.searchParams.get("width"),f=o||e.searchParams.get("height");return e.searchParams.delete("width"),e.searchParams.delete("height"),{base:e.toString(),width:Number(u)||void 0,height:Number(f)||void 0,format:m?m.slice(1):void 0,params:{crop:i,size:n},cdn:"shopify"}},et=({base:r,width:e,height:t,format:s,params:n})=>{const a=p(r);return h(a,"width",e,!0,!0),h(a,"height",t,!0,!0),h(a,"crop",n==null?void 0:n.crop),h(a,"format",s),a},tt=({url:r,width:e,height:t})=>{const s=Ye(r);if(!s)return;const n={...s,width:e,height:t};return et(n)},rt=({url:r,width:e,height:t})=>{const s=p(r);return h(s,"w",e,!0,!0),h(s,"h",t,!0,!0),x(s,"crop","1"),s},nt=({url:r,width:e,height:t})=>{const s=p(r);return h(s,"w",e,!0,!0),h(s,"h",t,!0,!0),h(s,"q",T(s,"q"),!0),s},st=/https?:\/\/(?<host>[^\/]+)\/(?<cloudName>[^\/]+)\/(?<assetType>image|video|raw)\/(?<deliveryType>upload|fetch|private|authenticated|sprite|facebook|twitter|youtube|vimeo)\/?(?<signature>s\-\-[a-zA-Z0-9]+\-\-)?\/?(?<transformations>(?:[^_\/]+_[^,\/]+,?)*)?\/(?:(?<version>v\d+)\/)?(?<idAndFormat>[^\s]+)$/g,at=r=>r?Object.fromEntries(r.split(",").map(e=>e.split("_"))):{},Se=({host:r,cloudName:e,assetType:t,deliveryType:s,signature:n,transformations:a={},version:o,id:i,format:c})=>{c&&(a.f=c);const m=Object.entries(a).map(([f,l])=>`${f}_${l}`).join(",");return`https://${[r,e,t,s,n,m,o,i].filter(Boolean).join("/")}`},we=r=>{const t=[...p(r).toString().matchAll(st)];if(!t.length)throw new Error("Invalid Cloudinary URL");const s=t[0].groups||{},{transformations:n="",idAndFormat:a,...o}=s;delete s.idAndFormat;const i=a.lastIndexOf("."),c=i<0?a:a.slice(0,i),m=i<0?void 0:a.slice(i+1),{w:u,h:f,f:l,...g}=at(n),d=l&&l!=="auto"?l:m;return{base:Se({...o,id:c,transformations:g}),width:Number(u)||void 0,height:Number(f)||void 0,format:d,cdn:"cloudinary",params:{...s,id:s.deliveryType==="fetch"?a:c,format:d,transformations:g}}},ot=({base:r,width:e,height:t,format:s,params:n})=>{var i;const a=we(r.toString()),o={transformations:{},...a.params,...n,format:s||"auto"};return e&&(o.transformations.w=O(e).toString()),t&&(o.transformations.h=O(t).toString()),(i=o.transformations).c||(i.c="lfill"),Se(o)},it=({url:r,width:e,height:t,format:s="auto"})=>{var o,i;const n=we(r);if(!n)throw new Error("Invalid Cloudinary URL");if(((o=n.params)==null?void 0:o.assetType)!=="image")throw new Error("Cloudinary transformer only supports images");if((i=n.params)!=null&&i.signature)throw new Error("Cloudinary transformer does not support signed URLs");const a={...n,width:e,height:t,format:s};return ot(a)},ct=/https?:\/\/(?<host>[^\/]+)\/cdn-cgi\/image\/(?<transformations>[^\/]+)?\/(?<path>.*)$/g,lt=r=>Object.fromEntries(r.split(",").map(e=>e.split("="))),ve=({host:r,transformations:e={},path:t})=>{const s=Object.entries(e).map(([a,o])=>`${a}=${o}`).join(",");return`https://${[r,"cdn-cgi","image",s,t].join("/")}`},Pe=r=>{const e=p(r),t=[...e.toString().matchAll(ct)];if(!t.length)throw new Error("Invalid Cloudflare URL");const s=t[0].groups||{},{transformations:n,...a}=s,{width:o,height:i,f:c,...m}=lt(n);return ve({...a,transformations:m}),{base:e.toString(),width:Number(o)||void 0,height:Number(i)||void 0,format:c,cdn:"cloudflare",params:{...s,transformations:m}}},ut=({base:r,width:e,height:t,format:s,params:n})=>{var i;const a=Pe(r.toString()),o={transformations:{},...a.params,...n};return e&&(o.transformations.width=e==null?void 0:e.toString()),t&&(o.transformations.height=t==null?void 0:t.toString()),s&&(o.transformations.f=s==="jpg"?"jpeg":s),(i=o.transformations).fit||(i.fit="cover"),new URL(ve(o))},ft=({url:r,width:e,height:t,format:s="auto"})=>{const n=Pe(r);if(!n)throw new Error("Invalid Cloudflare URL");const a={...n,width:e,height:t,format:s};return ut(a)},mt=({url:r,width:e,height:t})=>{const s=p(r);return h(s,"width",e,!0,!0),e&&t&&x(s,"aspect_ratio",`${e}:${t}`),s},ht=/(?<id>\/f\/\d+\/\d+x\d+\/\w+\/[^\/]+)\/?(?<modifiers>m\/?(?<crop>\d+x\d+:\d+x\d+)?\/?(?<resize>(?<flipx>\-)?(?<width>\d+)x(?<flipy>\-)?(?<height>\d+))?\/?(filters\:(?<filters>[^\/]+))?)?$/g,dt=/^(?<modifiers>\/(?<crop>\d+x\d+:\d+x\d+)?\/?(?<resize>(?<flipx>\-)?(?<width>\d+)x(?<flipy>\-)?(?<height>\d+))?\/?(filters\:(?<filters>[^\/]+))?\/?)?(?<id>\/f\/.+)$/g,gt=r=>r?Object.fromEntries(r.split(":").map(e=>{if(!e)return[];const[t,s]=e.split("(");return[t,s.replace(")","")]})):{},pt=r=>{if(!r)return;const e=Object.entries(r).map(([t,s])=>`${t}(${s??""})`);if(e.length!==0)return`filters:${e.join(":")}`},bt=r=>{const e=p(r),t=e.hostname==="img2.storyblok.com"?dt:ht,[s]=e.pathname.matchAll(t);if(!s||!s.groups)throw new Error("Invalid Storyblok URL");const{id:n,crop:a,width:o,height:i,filters:c,flipx:m,flipy:u}=s.groups,{format:f,...l}=gt(c);return e.hostname==="img2.storyblok.com"&&(e.hostname="a.storyblok.com"),{base:e.origin+n,width:Number(o)||void 0,height:Number(i)||void 0,format:f,params:{crop:a,filters:l,flipx:m,flipy:u},cdn:"storyblok"}},_t=({base:r,width:e=0,height:t=0,format:s,params:n={}})=>{const{crop:a,filters:o,flipx:i="",flipy:c=""}=n,m=`${i}${e}x${c}${t}`;return new URL([r,"m",a,m,pt(o),s].filter(Boolean).join("/"))},yt=({url:r,width:e,height:t,format:s})=>{const n=bt(r);if(n)return s&&(n.params||(n.params={filters:{}}),n.params.filters||(n.params.filters={}),n.params.filters.format=s),_t({...n,width:e,height:t})},St=({url:r,width:e,height:t,format:s})=>{const n=p(r);return h(n,"w",e,!0,!0),h(n,"h",t,!0,!0),h(n,"fm",s,!0),e&&t&&x(n,"fit","crop"),n},fe=r=>{const t=p(r).searchParams.get("url");if(!t||!t.startsWith("http"))return!1;const s=ye(t);return s?{cdn:s,url:t}:!1},wt=({base:r,width:e,params:{quality:t=75,root:s="_vercel"}={}})=>{const n=new URL("http://n");return n.pathname=`/${s}/image`,n.searchParams.set("url",r.toString()),h(n,"w",e,!1,!0),x(n,"q",t),_e(n)},xe=({url:r,width:e,cdn:t})=>{const s=p(r),n=s.pathname.startsWith("/_next/image")||s.pathname.startsWith("/_vercel/image"),a=n?s.searchParams.get("url"):r.toString();if(a)return h(s,"w",e,!0,!0),n?X(s):wt({base:a,width:e,params:{root:t==="nextjs"?"_next":"_vercel"}})},vt=r=>xe({...r,cdn:"nextjs"}),Pt=({url:r,width:e,height:t,format:s})=>{const n=p(r);return h(n,"wid",e,!0,!0),h(n,"hei",t,!0,!0),h(n,"fmt",s,!0),h(n,"qlt",T(n,"qlt"),!0),h(n,"scl",T(n,"scl"),!0),x(n,"fit","crop"),!e&&!t&&x(n,"scl",1),n},xt=({url:r,width:e,height:t,format:s})=>{const n=p(r);return h(n,"width",e,!0,!0),h(n,"height",t,!0,!0),h(n,"format",s,!0),h(n,"quality",T(n,"quality"),!0),x(n,"enlarge",0),n},jt=({url:r,width:e,height:t,format:s})=>{const n=p(r);return h(n,"width",e,!0,!0),h(n,"height",t,!0,!0),h(n,"format",s),h(n,"quality",T(n,"quality"),!0),n},J={width:"w",height:"h",autoWidthWithFallback:"w_auto",auto_width_fallback:"w_auto",scaleToScreenWidth:"pc",scale_to_screen_width:"pc",crop:"cr",outputFormat:"f",format:"f",fit:"m",fitMethod:"m",compression:"cmpr",sharpness:"s",rotate:"r",inline:"in",keepMeta:"meta",keep_meta:"meta",noOptimization:"pass",no_optimization:"pass",force_download:"dl",max_device_pixel_ratio:"maxdpr",maxDevicePixelRatio:"maxdpr"};function Ut(r){return Object.keys(J).find(s=>J[s]===r)||""}function Et(r){let e=r.toString(),t=[];if(e){let s=e.split("imgeng=");s.length>1&&(t=s[1].split("/"))}return t}function It(r){let e=r.toString(),t="";if(e){let s=e.split("imgeng=");s.length>1?t=s[0].slice(0,-1):t=e}return t}const $t=({url:r,width:e,height:t,format:s})=>{const n=p(r),a=It(n);let o={};const i=n.toString()===a?[]:Et(n);i.length&&(o=kt(i)),e&&(o.width=e),t&&(o.height=t),s&&(o.format=s),o.hasOwnProperty("fit")||(o={...o,fit:"cropbox"});let c=Rt(o),m=Lt(c),u=m===""?"":a.includes("?")?"&":"?";return`${a}${u}${m}`};function Rt(r){return Object.entries(r).reduce((e,[t,s])=>e+Ot(t,s),"")}function Lt(r){return r&&r!==""?`imgeng=${r}`:""}function Ot(r,e){let t=J[r];return t&&(e||e===0)?`/${t}_${e}`:""}function kt(r){let e={};return r.forEach(t=>{let s=t.split("_");if(s.length>1){let n=s[0],a=s[1],o=Ut(n);o&&(e[o]=a)}}),e}const zt=({url:r,width:e,height:t,format:s})=>{const n=p(r);return h(n,"width",e,!0,!0),h(n,"height",t,!0,!0),h(n,"format",s),n.searchParams.has("format")||x(n,"auto","webp"),e&&t&&x(n,"fit","crop"),n},Nt=/https?:\/\/(?<host>[^\/]+)\/cdn-cgi\/imagedelivery\/(?<accountHash>[^\/]+)\/(?<imageId>[^\/]+)\/*(?<transformations>[^\/]+)*$/g,Wt=r=>{var e;return Object.fromEntries(((e=r==null?void 0:r.split(","))==null?void 0:e.map(t=>t.split("=")))??[])},Tt=({host:r,accountHash:e,transformations:t={},imageId:s})=>{const n=Object.entries(t).map(([o,i])=>`${o}=${i}`).join(",");return`https://${[r,"cdn-cgi","imagedelivery",e,s,n].join("/")}`},je=r=>{const e=p(r),t=[...e.toString().matchAll(Nt)];if(!t.length)throw new Error("Invalid Cloudflare Images URL");const s=t[0].groups||{},{transformations:n,...a}=s,{w:o,h:i,f:c,...m}=Wt(n);return{base:e.toString(),width:Number(o)||void 0,height:Number(i)||void 0,format:c,cdn:"cloudflare_images",params:{...a,transformations:m}}},qt=({base:r,width:e,height:t,format:s,params:n})=>{var i;const a=je(r.toString()),o={transformations:{},...a.params,...n};return e&&(o.transformations.w=e==null?void 0:e.toString()),t&&(o.transformations.h=t==null?void 0:t.toString()),s&&(o.transformations.f=s),(i=o.transformations).fit||(i.fit="cover"),new URL(Tt(o))},Ct=({url:r,width:e,height:t,format:s="auto"})=>{const n=je(r);if(!n)throw new Error("Invalid Cloudflare Images URL");const a={...n,width:e,height:t,format:s};return qt(a)},At=r=>{const e=p(r),[t,...s]=e.pathname.split("/").slice(1),n=Object.fromEntries(t.split(",").map(a=>{const[o,i]=a.split("_");return[o,i]}));if(n.s){const[a,o]=n.s.split("x");n.w||(n.w=a),n.h||(n.h=o)}return{base:s.join("/"),width:Number(n.w)||void 0,height:Number(n.h)||void 0,quality:Number(n.q)||void 0,format:n.f||"auto",params:n,cdn:"ipx"}},me=({base:r,width:e,height:t,format:s,params:n})=>{const a=(n==null?void 0:n.modifiers)??{};e&&t?a.s=`${e}x${t}`:e?a.w=`${e}`:t&&(a.h=`${t}`),s&&(a.f=s);const o=n!=null&&n.base.endsWith("/")?n==null?void 0:n.base:`${n==null?void 0:n.base}/`,i=Object.entries(a).map(([u,f])=>`${u}_${f}`).join(","),c=r.toString(),m=c.startsWith("/")?c.slice(1):c;return`${o}${i}/${m}`},Mt=r=>{var o,i,c,m;const e=String(r.url),t=p(e),s=t.pathname.startsWith("/_ipx")&&t.hostname!=="n"?`${t.origin}/_ipx`:"/_ipx",n=((i=(o=r.cdnOptions)==null?void 0:o.ipx)==null?void 0:i.base)??s;if(n&&n!=="/"&&e.startsWith(n)){const u=At(e.replace(n,""));return me({...u,...r,params:{...(c=r.cdnOptions)==null?void 0:c.ipx,base:n}})}return me({...r,base:e,params:{...(m=r.cdnOptions)==null?void 0:m.ipx,base:n}})},Ft=({url:r,width:e,height:t,format:s})=>{const n=p(r),a=X(new URL(n.pathname,n.origin)),o={searchParams:new URLSearchParams};return h(o,"href",a,!0,!0),h(o,"w",e,!0,!0),h(o,"h",t,!0,!0),h(o,"f",s),`/_image?${o.searchParams.toString()}`},Dt=new Set(["w","h","q","fm","url","width","height","quality"]),Bt=r=>{const e=p(r),t=Number(e.searchParams.get("w")??e.searchParams.get("width"))??void 0,s=Number(e.searchParams.get("h")??e.searchParams.get("height"))??void 0,n=Number(e.searchParams.get("q")??e.searchParams.get("quality"))||void 0,a=e.searchParams.get("fm")||void 0,o=e.searchParams.get("url")||"",i={quality:n};return e.searchParams.forEach((c,m)=>{Dt.has(m)||(i[m]=c)}),e.search="",{base:o,width:t,height:s,format:a,params:i,cdn:"netlify"}},he=({base:r,width:e,height:t,format:s,params:{site:n,quality:a,...o}={}})=>{const i=p("/.netlify/images",n);return Object.entries(o).forEach(([c,m])=>h(i,c,m)),h(i,"q",a,!0,!0),h(i,"w",e,!0,!0),h(i,"h",t,!0,!0),h(i,"fm",s),x(i,"fit","cover"),i.searchParams.set("url",r.toString()),X(i)},Ht=r=>{var t,s;const e=p(r.url);if(e.pathname.startsWith("/.netlify/images")){const{params:n,base:a,format:o}=Bt(e);return he({base:a,format:o,...r,params:{...n,site:e.hostname==="n"?void 0:e.origin}})}return he({...r,base:r.url,params:{site:(s=(t=r.cdnOptions)==null?void 0:t.netlify)==null?void 0:s.site}})},Gt=r=>(r.searchParams.get("tr")||"").split(",").reduce((t,s)=>{const[n,a]=s.split("-");return t[n]=a,t},{}),Vt=({url:r,width:e,height:t,format:s})=>{const n=p(r),a=Gt(n);a.w=e&&Math.round(e),a.h=t&&Math.round(t),a.f||(a.f="auto"),s&&(a.f=s);const o=Object.keys(a).map(i=>{const c=a[i];if(c)return`${i}-${c}`}).filter(i=>i).join(",");return n.searchParams.set("tr",o),n},Kt=/^https?:\/\/(?<host>[^\/]+)\/(?<uuid>[^\/]+)/g;function Ue(r){const e=new URL(r),t=e.pathname+e.search+e.hash,s=t.lastIndexOf("http"),n=t.lastIndexOf("/");let a="";return s>=0?a=t.slice(s):n>=0&&(a=t.slice(n+1)),a}function Zt(r){return r.startsWith("http")}function Jt(r){const e=new URL(r);return{pathname:e.origin+e.pathname||"",search:e.search||"",hash:e.hash||""}}function Xt(r){const e=new URL(r),t=Ue(r),s=Zt(t)?Jt(t).pathname:t;return e.pathname=e.pathname.replace(s,""),e.search="",e.hash="",e.toString()}const Qt=r=>{if(typeof r!="string"||!r)return"";let e=r.trim();return e.startsWith("-/")?e=e.slice(2):e.startsWith("/")&&(e=e.slice(1)),e.endsWith("/")&&(e=e.slice(0,e.length-1)),e};function Yt(r){const e=Xt(r),t=new URL(e),s=t.pathname.indexOf("/-/");return s===-1?[]:t.pathname.substring(s).split("/-/").filter(Boolean).map(a=>Qt(a))}const er=r=>r.length?r.reduce((e,t)=>{const[s,n]=t.split("/");return{...e,[s]:n}},{}):{},Ee=({host:r,uuid:e,operations:t={},filename:s})=>{const n=Object.entries(t).map(([o,i])=>`${o}/${i}`).join("/-/");return`https://${[r,e,n?`-/${n}`:"",s].join("/")}`},Ie=r=>{const e=p(r),t=[...e.toString().matchAll(Kt)];if(!t.length)throw new Error("Invalid Uploadcare URL");const s=t[0].groups||{},{...n}=s,a=Ue(e.toString()),{format:o,...i}=er(Yt(e.toString())),c=o&&o!=="auto"?o:"auto";return{base:Ee({...n,filename:a||void 0,operations:{...i,format:c}}),cdn:"uploadcare",params:{...s,filename:a||void 0,operations:{...i,format:c}}}},tr=({base:r,width:e,height:t,params:s})=>{const n=r.toString(),a=Ie(n.endsWith("/")?n:`${n}/`),o={operations:{},...a.params,...s};return e&&t?o.operations={...o.operations,resize:`${e}x${t}`}:(e&&(o.operations={...o.operations,resize:`${e}x`}),t&&(o.operations={...o.operations,resize:`x${t}`})),Ee(o)},rr=({url:r,width:e,height:t})=>{const s=Ie(r);if(!s)throw new Error("Invalid Uploadcare URL");const n={...s,width:e,height:t};return tr(n)},nr=["origin"],$e="/storage/v1/object/public/",Q="/storage/v1/render/image/public/",sr=r=>r.pathname.startsWith(Q),Re=r=>{const e=p(r);if(!sr(e))return{cdn:"supabase",base:e.origin+e.pathname};const s=e.pathname.replace(Q,""),n=e.searchParams.has("quality")?Number(e.searchParams.get("quality")):void 0,a=e.searchParams.has("width")?Number(e.searchParams.get("width")):void 0,o=e.searchParams.has("height")?Number(e.searchParams.get("height")):void 0,i=e.searchParams.has("format")?e.searchParams.get("format"):void 0,c=e.searchParams.has("resize")?e.searchParams.get("resize"):void 0;return{cdn:"supabase",base:e.origin+$e+s,width:a,height:o,format:i,params:{quality:n,resize:c}}},ar=({base:r,width:e,height:t,format:s,params:n})=>{const a=Re(r.toString());r=a.base,e=e||a.width,t=t||a.height,s=s||a.format,n={...a.params,...n};const o=new URLSearchParams;return e&&o.set("width",O(e).toString()),t&&o.set("height",O(t).toString()),s&&nr.includes(s)&&o.set("format",s),n!=null&&n.quality&&o.set("quality",O(n.quality).toString()),n!=null&&n.resize&&o.set("resize",n.resize),o.toString()===""?r:a.base.replace($e,Q)+"?"+o.toString()},or=({url:r,width:e,height:t,format:s,cdnOptions:n})=>{const a=Re(r);return ar({base:a.base,width:e||a.width,height:t||a.height,format:s||a.format,params:(n==null?void 0:n.supabase)||a.params})},de={vercel:fe,nextjs:fe};function ir(r,e){if(!(e in de))return!1;const t=de[e];return t?t(r):!1}function Y(r,e){const t=Ve(r)||e;if(!t)return!1;const s=ir(r,t);return s||{cdn:t,url:r}}const ee=r=>({imgix:Xe,contentful:Ze,"builder.io":Je,shopify:tt,wordpress:rt,cloudimage:nt,cloudinary:it,bunny:mt,storyblok:yt,cloudflare:ft,vercel:xe,nextjs:vt,scene7:Pt,"kontent.ai":St,keycdn:xt,directus:jt,imageengine:$t,contentstack:zt,cloudflare_images:Ct,ipx:Mt,astro:Ft,netlify:Ht,imagekit:Vt,uploadcare:rr,supabase:or})[r];var cr=(r,e)=>{if(!(!r||!e))switch(e){case"constrained":return`(min-width: ${r}px) ${r}px, 100vw`;case"fixed":return`${r}px`;case"fullWidth":return"100vw";default:return}},z=r=>r||r===0?`${r}px`:void 0,lr=({width:r,height:e,aspectRatio:t,layout:s,objectFit:n="cover",background:a})=>{const o=[["object-fit",n]];return a!=null&&a.startsWith("https:")||a!=null&&a.startsWith("http:")||a!=null&&a.startsWith("data:")?(o.push(["background-image",`url(${a})`]),o.push(["background-size","cover"]),o.push(["background-repeat","no-repeat"])):o.push(["background",a]),s==="fixed"&&(o.push(["width",z(r)]),o.push(["height",z(e)])),s==="constrained"&&(o.push(["max-width",z(r)]),o.push(["max-height",z(e)]),o.push(["aspect-ratio",t?`${t}`:void 0]),o.push(["width","100%"])),s==="fullWidth"&&(o.push(["width","100%"]),o.push(["aspect-ratio",t?`${t}`:void 0]),o.push(["height",z(e)])),Object.fromEntries(o.filter(([,i])=>i))},ur=[6016,5120,4480,3840,3200,2560,2048,1920,1668,1280,1080,960,828,750,640],ge=24,fr=({width:r,layout:e,resolutions:t=ur})=>{if(e==="fullWidth")return t;if(!r)return[];const s=r*2;return e==="fixed"?[r,s]:e==="constrained"?[r,s,...t.filter(n=>n<s)]:[]},mr=({src:r,width:e,layout:t="constrained",height:s,aspectRatio:n,breakpoints:a,cdn:o,transformer:i,format:c})=>{const m=Y(r,o);return m&&!i&&(i=ee(m.cdn)),i?(a||(a=fr({width:e,layout:t})),a.sort((u,f)=>u-f).map(u=>{let f;return s&&n&&(f=Math.round(u/n)),{url:m?m.url:r,width:u,height:f,format:c}})):[]},hr=r=>{let{src:e,cdn:t,transformer:s}=r;const n=Y(e,t);return n&&!s&&(s=ee(n.cdn)),s?mr({...r,transformer:s}).map(a=>{const o=s(a);return`${o==null?void 0:o.toString()} ${a.width}w`}).join(`,
`):""};function dr({width:r,height:e,priority:t,layout:s="constrained",aspectRatio:n,...a}){return r=r&&Number(r)||void 0,e=e&&Number(e)||void 0,t?(a.loading||(a.loading="eager"),a.fetchpriority||(a.fetchpriority="high")):(a.loading||(a.loading="lazy"),a.decoding||(a.decoding="async")),a.alt===""&&(a.role||(a.role="presentation")),n?r?e||(e=Math.round(r/n)):e&&(r=Math.round(e*n)):r&&e&&(n=r/e),{width:r,height:e,aspectRatio:n,layout:s,...a}}function gr(r){let{src:e,cdn:t,transformer:s,background:n,layout:a,objectFit:o,breakpoints:i,width:c,height:m,aspectRatio:u,unstyled:f,...l}=dr(r);const g=e?Y(e,t):void 0;let d=e;if(g&&(d=g.url,s||(s=ee(g.cdn))),s&&n==="auto"){const j=u?Math.round(ge/u):void 0,U=s({url:d,width:ge,height:j});U&&(n=U.toString())}const b={width:c,height:m,aspectRatio:u,layout:a,objectFit:o,background:n};if(l.sizes||(l.sizes=cr(c,a)),f||(l.style={...lr(b),...l.style}),s){l.srcset=hr({src:d,width:c,height:m,aspectRatio:u,layout:a,breakpoints:i,transformer:s,cdn:t});const j=s({url:d,width:c,height:m});j&&(d=j),(a==="fullWidth"||a==="constrained")&&(c=void 0,m=void 0)}return{...l,src:d==null?void 0:d.toString(),width:c,height:m}}function pr(r,e){const t=RegExp(r,"g");return s=>{if(typeof s!="string")throw new TypeError(`expected an argument of type string, but got ${typeof s}`);return s.match(t)?s.replace(t,e):s}}const br=pr(/[A-Z]/,r=>`-${r.toLowerCase()}`);function _r(r,e=br){if(!r||typeof r!="object"||Array.isArray(r))throw new TypeError(`expected an argument of type object, but got ${typeof r}`);return Object.keys(r).map(t=>`${e(t)}: ${r[t]};`).join(`
`)}function yr(r){var u,f,l,g;let e,t,s,n,a,o,i,c=[r[11],{style:r[0]},{loading:r[6]},{width:r[8]},{height:r[7]},{decoding:r[5]},{role:r[3]},{fetchpriority:r[1]},{alt:t=(u=r[10])==null?void 0:u.toString()},{src:s=(f=r[9])==null?void 0:f.toString()},{srcset:n=(l=r[4])==null?void 0:l.toString()},{sizes:a=(g=r[2])==null?void 0:g.toString()}],m={};for(let d=0;d<c.length;d+=1)m=M(m,c[d]);return{c(){e=v("img"),this.h()},l(d){e=P(d,"IMG",{style:!0,loading:!0,width:!0,height:!0,decoding:!0,role:!0,fetchpriority:!0,alt:!0,src:!0,srcset:!0,sizes:!0}),this.h()},h(){oe(e,m)},m(d,b){k(d,e,b),o||(i=[ie(e,"load",r[15]),ie(e,"error",r[16])],o=!0)},p(d,[b]){var j,U,E,S;oe(e,m=Ce(c,[b&2048&&d[11],b&1&&{style:d[0]},b&64&&{loading:d[6]},b&256&&{width:d[8]},b&128&&{height:d[7]},b&32&&{decoding:d[5]},b&8&&{role:d[3]},b&2&&{fetchpriority:d[1]},b&1024&&t!==(t=(j=d[10])==null?void 0:j.toString())&&{alt:t},b&512&&!Le(e.src,s=(U=d[9])==null?void 0:U.toString())&&{src:s},b&16&&n!==(n=(E=d[4])==null?void 0:E.toString())&&{srcset:n},b&4&&a!==(a=(S=d[2])==null?void 0:S.toString())&&{sizes:a}]))},i:N,o:N,d(d){d&&y(e),o=!1,Oe(i)}}}function Sr(r,e,t){let s,n,a,o,i,c,m,u,f,l,g,d,b,j;function U(S){ae.call(this,r,S)}function E(S){ae.call(this,r,S)}return r.$$set=S=>{t(11,e=M(M({},e),se(S)))},r.$$.update=()=>{t(12,{style:s,...n}=e,s,(t(14,n),t(11,e))),r.$$.dirty&16384&&t(10,{alt:a,style:o,src:i,width:c,height:m,loading:u,decoding:f,srcset:l,role:g,sizes:d,fetchpriority:b}=gr(n),a,(t(13,o),t(14,n),t(11,e)),(t(9,i),t(14,n),t(11,e)),(t(8,c),t(14,n),t(11,e)),(t(7,m),t(14,n),t(11,e)),(t(6,u),t(14,n),t(11,e)),(t(5,f),t(14,n),t(11,e)),(t(4,l),t(14,n),t(11,e)),(t(3,g),t(14,n),t(11,e)),(t(2,d),t(14,n),t(11,e)),(t(1,b),t(14,n),t(11,e))),r.$$.dirty&12288&&t(0,j=[_r(o||{}),s].filter(Boolean).join(";"))},e=se(e),[j,b,d,g,l,f,u,m,c,i,a,e,s,o,n,U,E]}class wr extends C{constructor(e){super(),A(this,e,Sr,yr,q,{})}}function pe(r,e,t){const s=r.slice();return s[1]=e[t],s}function be(r){let e,t,s,n,a,o=r[1].title+"",i,c,m,u;return s=new wr({props:{src:`${Z}${r[1].feature.image}`,alt:r[1].feature.description,title:r[1].feature.title,layout:"fullWidth",height:320}}),{c(){e=v("li"),t=v("a"),H(s.$$.fragment),n=$(),a=v("div"),i=F(o),m=$(),this.h()},l(f){e=P(f,"LI",{class:!0});var l=I(e);t=P(l,"A",{href:!0,class:!0});var g=I(t);G(s.$$.fragment,g),n=R(g),a=P(g,"DIV",{class:!0});var d=I(a);i=D(d,o),d.forEach(y),g.forEach(y),m=R(l),l.forEach(y),this.h()},h(){w(a,"class","title svelte-by2d6g"),w(t,"href",c="moments/"+r[1].slug),w(t,"class","svelte-by2d6g"),w(e,"class","moment svelte-by2d6g")},m(f,l){k(f,e,l),_(e,t),V(s,t,null),_(t,n),_(t,a),_(a,i),_(e,m),u=!0},p(f,l){const g={};l&1&&(g.src=`${Z}${f[1].feature.image}`),l&1&&(g.alt=f[1].feature.description),l&1&&(g.title=f[1].feature.title),s.$set(g),(!u||l&1)&&o!==(o=f[1].title+"")&&We(i,o),(!u||l&1&&c!==(c="moments/"+f[1].slug))&&w(t,"href",c)},i(f){u||(L(s.$$.fragment,f),u=!0)},o(f){W(s.$$.fragment,f),u=!1},d(f){f&&y(e),K(s)}}}function vr(r){let e,t,s='<h2>The 13 Moments</h2> <p class="svelte-by2d6g">Explore the pivotal moments in King&#39;s College history</p>',n,a,o,i=le(r[0]),c=[];for(let u=0;u<i.length;u+=1)c[u]=be(pe(r,i,u));const m=u=>W(c[u],1,1,()=>{c[u]=null});return{c(){e=v("section"),t=v("hgroup"),t.innerHTML=s,n=$(),a=v("ul");for(let u=0;u<c.length;u+=1)c[u].c();this.h()},l(u){e=P(u,"SECTION",{id:!0,class:!0});var f=I(e);t=P(f,"HGROUP",{class:!0,"data-svelte-h":!0}),B(t)!=="svelte-4ab9fe"&&(t.innerHTML=s),n=R(f),a=P(f,"UL",{class:!0});var l=I(a);for(let g=0;g<c.length;g+=1)c[g].l(l);l.forEach(y),f.forEach(y),this.h()},h(){w(t,"class","svelte-by2d6g"),w(a,"class","moments svelte-by2d6g"),w(e,"id","moments"),w(e,"class","svelte-by2d6g")},m(u,f){k(u,e,f),_(e,t),_(e,n),_(e,a);for(let l=0;l<c.length;l+=1)c[l]&&c[l].m(a,null);o=!0},p(u,[f]){if(f&1){i=le(u[0]);let l;for(l=0;l<i.length;l+=1){const g=pe(u,i,l);c[l]?(c[l].p(g,f),L(c[l],1)):(c[l]=be(g),c[l].c(),L(c[l],1),c[l].m(a,null))}for(ke(),l=i.length;l<c.length;l+=1)m(l);ze()}},i(u){if(!o){for(let f=0;f<i.length;f+=1)L(c[f]);o=!0}},o(u){c=c.filter(Boolean);for(let f=0;f<c.length;f+=1)W(c[f]);o=!1},d(u){u&&y(e),Ne(c,u)}}}function Pr(r,e,t){let{moments:s}=e;return r.$$set=n=>{"moments"in n&&t(0,s=n.moments)},[s]}class xr extends C{constructor(e){super(),A(this,e,Pr,vr,q,{moments:0})}}function jr(r){let e,t,s,n,a;return document.title=qe,t=new Fe({}),n=new xr({props:{moments:r[0].moments}}),{c(){e=$(),H(t.$$.fragment),s=$(),H(n.$$.fragment)},l(o){Te("svelte-fbczdu",document.head).forEach(y),e=R(o),G(t.$$.fragment,o),s=R(o),G(n.$$.fragment,o)},m(o,i){k(o,e,i),V(t,o,i),k(o,s,i),V(n,o,i),a=!0},p(o,[i]){const c={};i&1&&(c.moments=o[0].moments),n.$set(c)},i(o){a||(L(t.$$.fragment,o),L(n.$$.fragment,o),a=!0)},o(o){W(t.$$.fragment,o),W(n.$$.fragment,o),a=!1},d(o){o&&(y(e),y(s)),K(t,o),K(n,o)}}}function Ur(r,e,t){let{data:s}=e;return r.$$set=n=>{"data"in n&&t(0,s=n.data)},[s]}class kr extends C{constructor(e){super(),A(this,e,Ur,jr,q,{data:0})}}export{kr as component};
