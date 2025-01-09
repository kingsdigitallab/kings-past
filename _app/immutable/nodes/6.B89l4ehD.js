import{s as A,b as j,t as q,c as $,d as U,f as I,g as C,h as x,i as R,j as D,k as w,l as T,m as v,n as z,a as B,ad as ne,a8 as ae,D as Oe,x as Ne,e as oe,af as ie,p as ze,q as ce}from"../chunks/scheduler.C3aHL5nM.js";import{S as M,i as F,t as L,g as ke,f as We,b as k,c as H,a as V,m as G,d as K}from"../chunks/index.B0DoMMHu.js";import{h as le}from"../chunks/config.DNfGVc1F.js";import{b as Z}from"../chunks/entry.0P69D_2z.js";import{e as ue}from"../chunks/each.BPs89dqP.js";import{g as Te}from"../chunks/spread.CgU5AtxT.js";import{s as qe}from"../chunks/moments.bcAz3qL1.js";const Ce=""+new URL("../assets/hero.esNPGaky.webp",import.meta.url).href;function Ae(r){let e,t,n,s,a=le.title+"",o,i,c,f=le.message+"",l,m,u,_='<button class="svelte-19i7ztv">Learn more</button>',h,g,b=`<img src="${Ce}" alt="A drawing ot the King&#39;s College Strand building" class="svelte-19i7ztv"/>`;return{c(){e=j("section"),t=j("div"),n=j("h1"),s=j("div"),o=q(a),i=$(),c=j("p"),l=q(f),m=$(),u=j("a"),u.innerHTML=_,h=$(),g=j("picture"),g.innerHTML=b,this.h()},l(y){e=U(y,"SECTION",{class:!0});var P=I(e);t=U(P,"DIV",{class:!0});var S=I(t);n=U(S,"H1",{class:!0});var te=I(n);s=U(te,"DIV",{});var re=I(s);o=C(re,a),re.forEach(x),te.forEach(x),i=R(S),c=U(S,"P",{class:!0});var se=I(c);l=C(se,f),se.forEach(x),m=R(S),u=U(S,"A",{href:!0,class:!0,"data-svelte-h":!0}),D(u)!=="svelte-4ahjg0"&&(u.innerHTML=_),S.forEach(x),h=R(P),g=U(P,"PICTURE",{class:!0,"data-svelte-h":!0}),D(g)!=="svelte-lgv8l"&&(g.innerHTML=b),P.forEach(x),this.h()},h(){w(n,"class","hero-title svelte-19i7ztv"),w(c,"class","hero-message svelte-19i7ztv"),w(u,"href",Z+"/about"),w(u,"class","svelte-19i7ztv"),w(t,"class","hero-welcome svelte-19i7ztv"),w(g,"class","hero-img svelte-19i7ztv"),w(e,"class","hero svelte-19i7ztv")},m(y,P){T(y,e,P),v(e,t),v(t,n),v(n,s),v(s,o),v(t,i),v(t,c),v(c,l),v(t,m),v(t,u),v(e,h),v(e,g)},p:z,i:z,o:z,d(y){y&&x(e)}}}class Me extends M{constructor(e){super(),F(this,e,null,Ae,A,{})}}const Fe={"images.ctfassets.net":"contentful","cdn.builder.io":"builder.io","images.prismic.io":"imgix","www.datocms-assets.com":"imgix","cdn.sanity.io":"imgix","images.unsplash.com":"imgix","cdn.shopify.com":"shopify","s7d1.scene7.com":"scene7","ip.keycdn.com":"keycdn","assets.caisy.io":"bunny","images.contentstack.io":"contentstack","ucarecdn.com":"uploadcare"},De={"imgix.net":"imgix","files.wordpress.com":"wordpress","b-cdn.net":"bunny","storyblok.com":"storyblok","kc-usercontent.com":"kontent.ai","cloudinary.com":"cloudinary","kxcdn.com":"keycdn","imgeng.in":"imageengine","imagekit.io":"imagekit","cloudimg.io":"cloudimage","ucarecdn.com":"uploadcare","supabase.co":"supabase"},Be={"/cdn-cgi/image/":"cloudflare","/cdn-cgi/imagedelivery/":"cloudflare_images","/_next/image":"nextjs","/_next/static":"nextjs","/_vercel/image":"vercel","/is/image":"scene7","/_ipx/":"ipx","/_image":"astro","/.netlify/images":"netlify","/storage/v1/object/public/":"supabase","/storage/v1/render/image/public/":"supabase"},O=r=>{if(!r)return r;const e=Number(r);return isNaN(e)?r:Math.round(e)},d=(r,e,t,n,s)=>{t?(s&&(t=O(t)),r.searchParams.set(e,t.toString())):n&&r.searchParams.delete(e)},E=(r,e,t)=>{r.searchParams.has(e)||r.searchParams.set(e,t.toString())},W=(r,e)=>{const t=Number(r.searchParams.get(e));return isNaN(t)?void 0:t},ye=r=>{const{pathname:e,search:t}=r;return`${e}${t}`},J=r=>r.hostname==="n"?ye(r):r.toString(),p=(r,e)=>typeof r=="string"?new URL(r,e??"http://n/"):r,fe=new Map(Object.entries(Fe)),He=Object.entries(De);function Ve(r){return ve(r)||Ge(r)}function ve(r){if(typeof r=="string"&&!r.startsWith("https://"))return!1;const{hostname:e}=p(r);if(fe.has(e))return fe.get(e);for(const[t,n]of He)if(e.endsWith(`.${t}`))return n;return!1}function Ge(r){const{pathname:e}=p(r);for(const[t,n]of Object.entries(Be))if(e.startsWith(t))return n;return!1}const Ke=({url:r,width:e,height:t,format:n})=>{const s=p(r);return e&&e>4e3&&(t&&(t=Math.round(t*4e3/e)),e=4e3),t&&t>4e3&&(e&&(e=Math.round(e*4e3/t)),t=4e3),d(s,"w",e,!0,!0),d(s,"h",t,!0,!0),d(s,"fm",n),E(s,"fit","fill"),s},Ze=({url:r,width:e,height:t,format:n})=>{const s=p(r);return d(s,"width",e,!0,!0),d(s,"height",t,!0,!0),d(s,"format",n),e&&t&&(E(s,"fit","cover"),E(s,"sharp","true")),s},Xe=({url:r,width:e,height:t,format:n})=>{var a;const s=p(r);if(d(s,"w",e,!0,!0),d(s,"h",t,!0,!0),E(s,"fit","min"),n){s.searchParams.set("fm",n);const o=s.searchParams.get("auto");o==="format"?s.searchParams.delete("auto"):o!=null&&o.includes("format")&&s.searchParams.set("auto",o.split(",").filter(i=>i!=="format").join(","))}else s.searchParams.delete("fm"),(a=s.searchParams.get("auto"))!=null&&a.includes("format")||s.searchParams.append("auto","format");return s},Je=/(.+?)(?:_(?:(pico|icon|thumb|small|compact|medium|large|grande|original|master)|(\d*)x(\d*)))?(?:_crop_([a-z]+))?(\.[a-zA-Z]+)(\.png|\.jpg|\.webp|\.avif)?$/,Qe=r=>{const e=p(r),t=e.pathname.match(Je);if(!t)throw new Error("Invalid Shopify URL");const[,n,s,a,o,i,c,f]=t;e.pathname=`${n}${c}`;const l=a||e.searchParams.get("width"),m=o||e.searchParams.get("height");return e.searchParams.delete("width"),e.searchParams.delete("height"),{base:e.toString(),width:Number(l)||void 0,height:Number(m)||void 0,format:f?f.slice(1):void 0,params:{crop:i,size:s},cdn:"shopify"}},Ye=({base:r,width:e,height:t,format:n,params:s})=>{const a=p(r);return d(a,"width",e,!0,!0),d(a,"height",t,!0,!0),d(a,"crop",s==null?void 0:s.crop),d(a,"format",n),a},et=({url:r,width:e,height:t})=>{const n=Qe(r);if(!n)return;const s={...n,width:e,height:t};return Ye(s)},tt=({url:r,width:e,height:t})=>{const n=p(r);return d(n,"w",e,!0,!0),d(n,"h",t,!0,!0),E(n,"crop","1"),n},rt=({url:r,width:e,height:t})=>{const n=p(r);return d(n,"w",e,!0,!0),d(n,"h",t,!0,!0),d(n,"q",W(n,"q"),!0),n},st=/https?:\/\/(?<host>[^\/]+)\/(?<cloudName>[^\/]+)\/(?<assetType>image|video|raw)\/(?<deliveryType>upload|fetch|private|authenticated|sprite|facebook|twitter|youtube|vimeo)\/?(?<signature>s\-\-[a-zA-Z0-9]+\-\-)?\/?(?<transformations>(?:[^_\/]+_[^,\/]+,?)*)?\/(?:(?<version>v\d+)\/)?(?<idAndFormat>[^\s]+)$/g,nt=r=>r?Object.fromEntries(r.split(",").map(e=>e.split("_"))):{},Se=({host:r,cloudName:e,assetType:t,deliveryType:n,signature:s,transformations:a={},version:o,id:i,format:c})=>{c&&(a.f=c);const f=Object.entries(a).map(([m,u])=>`${m}_${u}`).join(",");return`https://${[r,e,t,n,s,f,o,i].filter(Boolean).join("/")}`},we=r=>{const t=[...p(r).toString().matchAll(st)];if(!t.length)throw new Error("Invalid Cloudinary URL");const n=t[0].groups||{},{transformations:s="",idAndFormat:a,...o}=n;delete n.idAndFormat;const i=a.lastIndexOf("."),c=i<0?a:a.slice(0,i),f=i<0?void 0:a.slice(i+1),{w:l,h:m,f:u,..._}=nt(s),h=u&&u!=="auto"?u:f;return{base:Se({...o,id:c,transformations:_}),width:Number(l)||void 0,height:Number(m)||void 0,format:h,cdn:"cloudinary",params:{...n,id:n.deliveryType==="fetch"?a:c,format:h,transformations:_}}},at=({base:r,width:e,height:t,format:n,params:s})=>{var i;const a=we(r.toString()),o={transformations:{},...a.params,...s,format:n||"auto"};return e&&(o.transformations.w=O(e).toString()),t&&(o.transformations.h=O(t).toString()),(i=o.transformations).c||(i.c="lfill"),Se(o)},ot=({url:r,width:e,height:t,format:n="auto"})=>{var o,i;const s=we(r);if(!s)throw new Error("Invalid Cloudinary URL");if(((o=s.params)==null?void 0:o.assetType)!=="image")throw new Error("Cloudinary transformer only supports images");if((i=s.params)!=null&&i.signature)throw new Error("Cloudinary transformer does not support signed URLs");const a={...s,width:e,height:t,format:n};return at(a)},it=/https?:\/\/(?<host>[^\/]+)\/cdn-cgi\/image\/(?<transformations>[^\/]+)?\/(?<path>.*)$/g,ct=r=>Object.fromEntries(r.split(",").map(e=>e.split("="))),Pe=({host:r,transformations:e={},path:t})=>{const n=Object.entries(e).map(([a,o])=>`${a}=${o}`).join(",");return`https://${[r,"cdn-cgi","image",n,t].join("/")}`},xe=r=>{const e=p(r),t=[...e.toString().matchAll(it)];if(!t.length)throw new Error("Invalid Cloudflare URL");const n=t[0].groups||{},{transformations:s,...a}=n,{width:o,height:i,f:c,...f}=ct(s);return Pe({...a,transformations:f}),{base:e.toString(),width:Number(o)||void 0,height:Number(i)||void 0,format:c,cdn:"cloudflare",params:{...n,transformations:f}}},lt=({base:r,width:e,height:t,format:n,params:s})=>{var i;const a=xe(r.toString()),o={transformations:{},...a.params,...s};return e&&(o.transformations.width=e==null?void 0:e.toString()),t&&(o.transformations.height=t==null?void 0:t.toString()),n&&(o.transformations.f=n==="jpg"?"jpeg":n),(i=o.transformations).fit||(i.fit="cover"),new URL(Pe(o))},ut=({url:r,width:e,height:t,format:n="auto"})=>{const s=xe(r);if(!s)throw new Error("Invalid Cloudflare URL");const a={...s,width:e,height:t,format:n};return lt(a)},ft=({url:r,width:e,height:t})=>{const n=p(r);return d(n,"width",e,!0,!0),e&&t&&E(n,"aspect_ratio",`${e}:${t}`),n},mt=/(?<id>\/f\/\d+\/\d+x\d+\/\w+\/[^\/]+)\/?(?<modifiers>m\/?(?<crop>\d+x\d+:\d+x\d+)?\/?(?<resize>(?<flipx>\-)?(?<width>\d+)x(?<flipy>\-)?(?<height>\d+))?\/?(filters\:(?<filters>[^\/]+))?)?$/g,ht=/^(?<modifiers>\/(?<crop>\d+x\d+:\d+x\d+)?\/?(?<resize>(?<flipx>\-)?(?<width>\d+)x(?<flipy>\-)?(?<height>\d+))?\/?(filters\:(?<filters>[^\/]+))?\/?)?(?<id>\/f\/.+)$/g,dt=r=>r?Object.fromEntries(r.split(":").map(e=>{if(!e)return[];const[t,n]=e.split("(");return[t,n.replace(")","")]})):{},gt=r=>{if(!r)return;const e=Object.entries(r).map(([t,n])=>`${t}(${n??""})`);if(e.length!==0)return`filters:${e.join(":")}`},pt=r=>{const e=p(r),t=e.hostname==="img2.storyblok.com"?ht:mt,[n]=e.pathname.matchAll(t);if(!n||!n.groups)throw new Error("Invalid Storyblok URL");const{id:s,crop:a,width:o,height:i,filters:c,flipx:f,flipy:l}=n.groups,{format:m,...u}=dt(c);return e.hostname==="img2.storyblok.com"&&(e.hostname="a.storyblok.com"),{base:e.origin+s,width:Number(o)||void 0,height:Number(i)||void 0,format:m,params:{crop:a,filters:u,flipx:f,flipy:l},cdn:"storyblok"}},_t=({base:r,width:e=0,height:t=0,format:n,params:s={}})=>{const{crop:a,filters:o,flipx:i="",flipy:c=""}=s,f=`${i}${e}x${c}${t}`;return new URL([r,"m",a,f,gt(o),n].filter(Boolean).join("/"))},bt=({url:r,width:e,height:t,format:n})=>{const s=pt(r);if(s)return n&&(s.params||(s.params={filters:{}}),s.params.filters||(s.params.filters={}),s.params.filters.format=n),_t({...s,width:e,height:t})},yt=({url:r,width:e,height:t,format:n})=>{const s=p(r);return d(s,"w",e,!0,!0),d(s,"h",t,!0,!0),d(s,"fm",n,!0),e&&t&&E(s,"fit","crop"),s},me=r=>{const t=p(r).searchParams.get("url");if(!t||!t.startsWith("http"))return!1;const n=ve(t);return n?{cdn:n,url:t}:!1},vt=({base:r,width:e,params:{quality:t=75,root:n="_vercel"}={}})=>{const s=new URL("http://n");return s.pathname=`/${n}/image`,s.searchParams.set("url",r.toString()),d(s,"w",e,!1,!0),E(s,"q",t),ye(s)},je=({url:r,width:e,cdn:t})=>{const n=p(r),s=n.pathname.startsWith("/_next/image")||n.pathname.startsWith("/_vercel/image"),a=s?n.searchParams.get("url"):r.toString();if(a)return d(n,"w",e,!0,!0),s?J(n):vt({base:a,width:e,params:{root:t==="nextjs"?"_next":"_vercel"}})},St=r=>je({...r,cdn:"nextjs"}),wt=({url:r,width:e,height:t,format:n})=>{const s=p(r);return d(s,"wid",e,!0,!0),d(s,"hei",t,!0,!0),d(s,"fmt",n,!0),d(s,"qlt",W(s,"qlt"),!0),d(s,"scl",W(s,"scl"),!0),E(s,"fit","crop"),!e&&!t&&E(s,"scl",1),s},Pt=({url:r,width:e,height:t,format:n})=>{const s=p(r);return d(s,"width",e,!0,!0),d(s,"height",t,!0,!0),d(s,"format",n,!0),d(s,"quality",W(s,"quality"),!0),E(s,"enlarge",0),s},xt=({url:r,width:e,height:t,format:n})=>{const s=p(r);return d(s,"width",e,!0,!0),d(s,"height",t,!0,!0),d(s,"format",n),d(s,"quality",W(s,"quality"),!0),s},X={width:"w",height:"h",autoWidthWithFallback:"w_auto",auto_width_fallback:"w_auto",scaleToScreenWidth:"pc",scale_to_screen_width:"pc",crop:"cr",outputFormat:"f",format:"f",fit:"m",fitMethod:"m",compression:"cmpr",sharpness:"s",rotate:"r",inline:"in",keepMeta:"meta",keep_meta:"meta",noOptimization:"pass",no_optimization:"pass",force_download:"dl",max_device_pixel_ratio:"maxdpr",maxDevicePixelRatio:"maxdpr"};function jt(r){return Object.keys(X).find(n=>X[n]===r)||""}function Ut(r){let e=r.toString(),t=[];if(e){let n=e.split("imgeng=");n.length>1&&(t=n[1].split("/"))}return t}function Et(r){let e=r.toString(),t="";if(e){let n=e.split("imgeng=");n.length>1?t=n[0].slice(0,-1):t=e}return t}const It=({url:r,width:e,height:t,format:n})=>{const s=p(r),a=Et(s);let o={};const i=s.toString()===a?[]:Ut(s);i.length&&(o=Ot(i)),e&&(o.width=e),t&&(o.height=t),n&&(o.format=n),o.hasOwnProperty("fit")||(o={...o,fit:"cropbox"});let c=$t(o),f=Rt(c),l=f===""?"":a.includes("?")?"&":"?";return`${a}${l}${f}`};function $t(r){return Object.entries(r).reduce((e,[t,n])=>e+Lt(t,n),"")}function Rt(r){return r&&r!==""?`imgeng=${r}`:""}function Lt(r,e){let t=X[r];return t&&(e||e===0)?`/${t}_${e}`:""}function Ot(r){let e={};return r.forEach(t=>{let n=t.split("_");if(n.length>1){let s=n[0],a=n[1],o=jt(s);o&&(e[o]=a)}}),e}const Nt=({url:r,width:e,height:t,format:n})=>{const s=p(r);return d(s,"width",e,!0,!0),d(s,"height",t,!0,!0),d(s,"format",n),s.searchParams.has("format")||E(s,"auto","webp"),e&&t&&E(s,"fit","crop"),s},zt=/https?:\/\/(?<host>[^\/]+)\/cdn-cgi\/imagedelivery\/(?<accountHash>[^\/]+)\/(?<imageId>[^\/]+)\/*(?<transformations>[^\/]+)*$/g,kt=r=>{var e;return Object.fromEntries(((e=r==null?void 0:r.split(","))==null?void 0:e.map(t=>t.split("=")))??[])},Wt=({host:r,accountHash:e,transformations:t={},imageId:n})=>{const s=Object.entries(t).map(([o,i])=>`${o}=${i}`).join(",");return`https://${[r,"cdn-cgi","imagedelivery",e,n,s].join("/")}`},Ue=r=>{const e=p(r),t=[...e.toString().matchAll(zt)];if(!t.length)throw new Error("Invalid Cloudflare Images URL");const n=t[0].groups||{},{transformations:s,...a}=n,{w:o,h:i,f:c,...f}=kt(s);return{base:e.toString(),width:Number(o)||void 0,height:Number(i)||void 0,format:c,cdn:"cloudflare_images",params:{...a,transformations:f}}},Tt=({base:r,width:e,height:t,format:n,params:s})=>{var i;const a=Ue(r.toString()),o={transformations:{},...a.params,...s};return e&&(o.transformations.w=e==null?void 0:e.toString()),t&&(o.transformations.h=t==null?void 0:t.toString()),n&&(o.transformations.f=n),(i=o.transformations).fit||(i.fit="cover"),new URL(Wt(o))},qt=({url:r,width:e,height:t,format:n="auto"})=>{const s=Ue(r);if(!s)throw new Error("Invalid Cloudflare Images URL");const a={...s,width:e,height:t,format:n};return Tt(a)},Ct=r=>{const e=p(r),[t,...n]=e.pathname.split("/").slice(1),s=Object.fromEntries(t.split(",").map(a=>{const[o,i]=a.split("_");return[o,i]}));if(s.s){const[a,o]=s.s.split("x");s.w||(s.w=a),s.h||(s.h=o)}return{base:n.join("/"),width:Number(s.w)||void 0,height:Number(s.h)||void 0,quality:Number(s.q)||void 0,format:s.f||"auto",params:s,cdn:"ipx"}},he=({base:r,width:e,height:t,format:n,params:s})=>{const a=(s==null?void 0:s.modifiers)??{};e&&t?a.s=`${e}x${t}`:e?a.w=`${e}`:t&&(a.h=`${t}`),n&&(a.f=n);const o=s!=null&&s.base.endsWith("/")?s==null?void 0:s.base:`${s==null?void 0:s.base}/`,i=Object.entries(a).map(([l,m])=>`${l}_${m}`).join(","),c=r.toString(),f=c.startsWith("/")?c.slice(1):c;return`${o}${i}/${f}`},At=r=>{var o,i,c,f;const e=String(r.url),t=p(e),n=t.pathname.startsWith("/_ipx")&&t.hostname!=="n"?`${t.origin}/_ipx`:"/_ipx",s=((i=(o=r.cdnOptions)==null?void 0:o.ipx)==null?void 0:i.base)??n;if(s&&s!=="/"&&e.startsWith(s)){const l=Ct(e.replace(s,""));return he({...l,...r,params:{...(c=r.cdnOptions)==null?void 0:c.ipx,base:s}})}return he({...r,base:e,params:{...(f=r.cdnOptions)==null?void 0:f.ipx,base:s}})},Mt=({url:r,width:e,height:t,format:n})=>{const s=p(r),a=J(new URL(s.pathname,s.origin)),o={searchParams:new URLSearchParams};return d(o,"href",a,!0,!0),d(o,"w",e,!0,!0),d(o,"h",t,!0,!0),d(o,"f",n),`/_image?${o.searchParams.toString()}`},Ft=new Set(["w","h","q","fm","url","width","height","quality"]),Dt=r=>{const e=p(r),t=Number(e.searchParams.get("w")??e.searchParams.get("width"))??void 0,n=Number(e.searchParams.get("h")??e.searchParams.get("height"))??void 0,s=Number(e.searchParams.get("q")??e.searchParams.get("quality"))||void 0,a=e.searchParams.get("fm")||void 0,o=e.searchParams.get("url")||"",i={quality:s};return e.searchParams.forEach((c,f)=>{Ft.has(f)||(i[f]=c)}),e.search="",{base:o,width:t,height:n,format:a,params:i,cdn:"netlify"}},de=({base:r,width:e,height:t,format:n,params:{site:s,quality:a,...o}={}})=>{const i=p("/.netlify/images",s);return Object.entries(o).forEach(([c,f])=>d(i,c,f)),d(i,"q",a,!0,!0),d(i,"w",e,!0,!0),d(i,"h",t,!0,!0),d(i,"fm",n),E(i,"fit","cover"),i.searchParams.set("url",r.toString()),J(i)},Bt=r=>{var t,n;const e=p(r.url);if(e.pathname.startsWith("/.netlify/images")){const{params:s,base:a,format:o}=Dt(e);return de({base:a,format:o,...r,params:{...s,site:e.hostname==="n"?void 0:e.origin}})}return de({...r,base:r.url,params:{site:(n=(t=r.cdnOptions)==null?void 0:t.netlify)==null?void 0:n.site}})},Ht=r=>(r.searchParams.get("tr")||"").split(",").reduce((t,n)=>{const[s,a]=n.split("-");return t[s]=a,t},{}),Vt=({url:r,width:e,height:t,format:n})=>{const s=p(r),a=Ht(s);a.w=e&&Math.round(e),a.h=t&&Math.round(t),a.f||(a.f="auto"),n&&(a.f=n);const o=Object.keys(a).map(i=>{const c=a[i];if(c)return`${i}-${c}`}).filter(i=>i).join(",");return s.searchParams.set("tr",o),s},Gt=/^https?:\/\/(?<host>[^\/]+)\/(?<uuid>[^\/]+)/g;function Ee(r){const e=new URL(r),t=e.pathname+e.search+e.hash,n=t.lastIndexOf("http"),s=t.lastIndexOf("/");let a="";return n>=0?a=t.slice(n):s>=0&&(a=t.slice(s+1)),a}function Kt(r){return r.startsWith("http")}function Zt(r){const e=new URL(r);return{pathname:e.origin+e.pathname||"",search:e.search||"",hash:e.hash||""}}function Xt(r){const e=new URL(r),t=Ee(r),n=Kt(t)?Zt(t).pathname:t;return e.pathname=e.pathname.replace(n,""),e.search="",e.hash="",e.toString()}const Jt=r=>{if(typeof r!="string"||!r)return"";let e=r.trim();return e.startsWith("-/")?e=e.slice(2):e.startsWith("/")&&(e=e.slice(1)),e.endsWith("/")&&(e=e.slice(0,e.length-1)),e};function Qt(r){const e=Xt(r),t=new URL(e),n=t.pathname.indexOf("/-/");return n===-1?[]:t.pathname.substring(n).split("/-/").filter(Boolean).map(a=>Jt(a))}const Yt=r=>r.length?r.reduce((e,t)=>{const[n,s]=t.split("/");return{...e,[n]:s}},{}):{},Ie=({host:r,uuid:e,operations:t={},filename:n})=>{const s=Object.entries(t).map(([o,i])=>`${o}/${i}`).join("/-/");return`https://${[r,e,s?`-/${s}`:"",n].join("/")}`},$e=r=>{const e=p(r),t=[...e.toString().matchAll(Gt)];if(!t.length)throw new Error("Invalid Uploadcare URL");const n=t[0].groups||{},{...s}=n,a=Ee(e.toString()),{format:o,...i}=Yt(Qt(e.toString())),c=o&&o!=="auto"?o:"auto";return{base:Ie({...s,filename:a||void 0,operations:{...i,format:c}}),cdn:"uploadcare",params:{...n,filename:a||void 0,operations:{...i,format:c}}}},er=({base:r,width:e,height:t,params:n})=>{const s=r.toString(),a=$e(s.endsWith("/")?s:`${s}/`),o={operations:{},...a.params,...n};return e&&t?o.operations={...o.operations,resize:`${e}x${t}`}:(e&&(o.operations={...o.operations,resize:`${e}x`}),t&&(o.operations={...o.operations,resize:`x${t}`})),Ie(o)},tr=({url:r,width:e,height:t})=>{const n=$e(r);if(!n)throw new Error("Invalid Uploadcare URL");const s={...n,width:e,height:t};return er(s)},rr=["origin"],Re="/storage/v1/object/public/",Q="/storage/v1/render/image/public/",sr=r=>r.pathname.startsWith(Q),Le=r=>{const e=p(r);if(!sr(e))return{cdn:"supabase",base:e.origin+e.pathname};const n=e.pathname.replace(Q,""),s=e.searchParams.has("quality")?Number(e.searchParams.get("quality")):void 0,a=e.searchParams.has("width")?Number(e.searchParams.get("width")):void 0,o=e.searchParams.has("height")?Number(e.searchParams.get("height")):void 0,i=e.searchParams.has("format")?e.searchParams.get("format"):void 0,c=e.searchParams.has("resize")?e.searchParams.get("resize"):void 0;return{cdn:"supabase",base:e.origin+Re+n,width:a,height:o,format:i,params:{quality:s,resize:c}}},nr=({base:r,width:e,height:t,format:n,params:s})=>{const a=Le(r.toString());r=a.base,e=e||a.width,t=t||a.height,n=n||a.format,s={...a.params,...s};const o=new URLSearchParams;return e&&o.set("width",O(e).toString()),t&&o.set("height",O(t).toString()),n&&rr.includes(n)&&o.set("format",n),s!=null&&s.quality&&o.set("quality",O(s.quality).toString()),s!=null&&s.resize&&o.set("resize",s.resize),o.toString()===""?r:a.base.replace(Re,Q)+"?"+o.toString()},ar=({url:r,width:e,height:t,format:n,cdnOptions:s})=>{const a=Le(r);return nr({base:a.base,width:e||a.width,height:t||a.height,format:n||a.format,params:(s==null?void 0:s.supabase)||a.params})},ge={vercel:me,nextjs:me};function or(r,e){if(!(e in ge))return!1;const t=ge[e];return t?t(r):!1}function Y(r,e){const t=Ve(r)||e;if(!t)return!1;const n=or(r,t);return n||{cdn:t,url:r}}const ee=r=>({imgix:Xe,contentful:Ke,"builder.io":Ze,shopify:et,wordpress:tt,cloudimage:rt,cloudinary:ot,bunny:ft,storyblok:bt,cloudflare:ut,vercel:je,nextjs:St,scene7:wt,"kontent.ai":yt,keycdn:Pt,directus:xt,imageengine:It,contentstack:Nt,cloudflare_images:qt,ipx:At,astro:Mt,netlify:Bt,imagekit:Vt,uploadcare:tr,supabase:ar})[r];var ir=(r,e)=>{if(!(!r||!e))switch(e){case"constrained":return`(min-width: ${r}px) ${r}px, 100vw`;case"fixed":return`${r}px`;case"fullWidth":return"100vw";default:return}},N=r=>r||r===0?`${r}px`:void 0,cr=({width:r,height:e,aspectRatio:t,layout:n,objectFit:s="cover",background:a})=>{const o=[["object-fit",s]];return a!=null&&a.startsWith("https:")||a!=null&&a.startsWith("http:")||a!=null&&a.startsWith("data:")?(o.push(["background-image",`url(${a})`]),o.push(["background-size","cover"]),o.push(["background-repeat","no-repeat"])):o.push(["background",a]),n==="fixed"&&(o.push(["width",N(r)]),o.push(["height",N(e)])),n==="constrained"&&(o.push(["max-width",N(r)]),o.push(["max-height",N(e)]),o.push(["aspect-ratio",t?`${t}`:void 0]),o.push(["width","100%"])),n==="fullWidth"&&(o.push(["width","100%"]),o.push(["aspect-ratio",t?`${t}`:void 0]),o.push(["height",N(e)])),Object.fromEntries(o.filter(([,i])=>i))},lr=[6016,5120,4480,3840,3200,2560,2048,1920,1668,1280,1080,960,828,750,640],pe=24,ur=({width:r,layout:e,resolutions:t=lr})=>{if(e==="fullWidth")return t;if(!r)return[];const n=r*2;return e==="fixed"?[r,n]:e==="constrained"?[r,n,...t.filter(s=>s<n)]:[]},fr=({src:r,width:e,layout:t="constrained",height:n,aspectRatio:s,breakpoints:a,cdn:o,transformer:i,format:c})=>{const f=Y(r,o);return f&&!i&&(i=ee(f.cdn)),i?(a||(a=ur({width:e,layout:t})),a.sort((l,m)=>l-m).map(l=>{let m;return n&&s&&(m=Math.round(l/s)),{url:f?f.url:r,width:l,height:m,format:c}})):[]},mr=r=>{let{src:e,cdn:t,transformer:n}=r;const s=Y(e,t);return s&&!n&&(n=ee(s.cdn)),n?fr({...r,transformer:n}).map(a=>{const o=n(a);return`${o==null?void 0:o.toString()} ${a.width}w`}).join(`,
`):""};function hr({width:r,height:e,priority:t,layout:n="constrained",aspectRatio:s,...a}){return r=r&&Number(r)||void 0,e=e&&Number(e)||void 0,t?(a.loading||(a.loading="eager"),a.fetchpriority||(a.fetchpriority="high")):(a.loading||(a.loading="lazy"),a.decoding||(a.decoding="async")),a.alt===""&&(a.role||(a.role="presentation")),s?r?e||(e=Math.round(r/s)):e&&(r=Math.round(e*s)):r&&e&&(s=r/e),{width:r,height:e,aspectRatio:s,layout:n,...a}}function dr(r){let{src:e,cdn:t,transformer:n,background:s,layout:a,objectFit:o,breakpoints:i,width:c,height:f,aspectRatio:l,unstyled:m,...u}=hr(r);const _=e?Y(e,t):void 0;let h=e;if(_&&(h=_.url,n||(n=ee(_.cdn))),n&&s==="auto"){const b=l?Math.round(pe/l):void 0,y=n({url:h,width:pe,height:b});y&&(s=y.toString())}const g={width:c,height:f,aspectRatio:l,layout:a,objectFit:o,background:s};if(u.sizes||(u.sizes=ir(c,a)),m||(u.style={...cr(g),...u.style}),n){u.srcset=mr({src:h,width:c,height:f,aspectRatio:l,layout:a,breakpoints:i,transformer:n,cdn:t});const b=n({url:h,width:c,height:f});b&&(h=b),(a==="fullWidth"||a==="constrained")&&(c=void 0,f=void 0)}return{...u,src:h==null?void 0:h.toString(),width:c,height:f}}function gr(r,e){const t=RegExp(r,"g");return n=>{if(typeof n!="string")throw new TypeError(`expected an argument of type string, but got ${typeof n}`);return n.match(t)?n.replace(t,e):n}}const pr=gr(/[A-Z]/,r=>`-${r.toLowerCase()}`);function _r(r,e=pr){if(!r||typeof r!="object"||Array.isArray(r))throw new TypeError(`expected an argument of type object, but got ${typeof r}`);return Object.keys(r).map(t=>`${e(t)}: ${r[t]};`).join(`
`)}function br(r){var l,m,u,_;let e,t,n,s,a,o,i,c=[r[11],{style:r[0]},{loading:r[6]},{width:r[8]},{height:r[7]},{decoding:r[5]},{role:r[3]},{fetchpriority:r[1]},{alt:t=(l=r[10])==null?void 0:l.toString()},{src:n=(m=r[9])==null?void 0:m.toString()},{srcset:s=(u=r[4])==null?void 0:u.toString()},{sizes:a=(_=r[2])==null?void 0:_.toString()}],f={};for(let h=0;h<c.length;h+=1)f=B(f,c[h]);return{c(){e=j("img"),this.h()},l(h){e=U(h,"IMG",{style:!0,loading:!0,width:!0,height:!0,decoding:!0,role:!0,fetchpriority:!0,alt:!0,src:!0,srcset:!0,sizes:!0}),this.h()},h(){ne(e,f)},m(h,g){T(h,e,g),o||(i=[ae(e,"load",r[15]),ae(e,"error",r[16])],o=!0)},p(h,[g]){var b,y,P,S;ne(e,f=Te(c,[g&2048&&h[11],g&1&&{style:h[0]},g&64&&{loading:h[6]},g&256&&{width:h[8]},g&128&&{height:h[7]},g&32&&{decoding:h[5]},g&8&&{role:h[3]},g&2&&{fetchpriority:h[1]},g&1024&&t!==(t=(b=h[10])==null?void 0:b.toString())&&{alt:t},g&512&&!Oe(e.src,n=(y=h[9])==null?void 0:y.toString())&&{src:n},g&16&&s!==(s=(P=h[4])==null?void 0:P.toString())&&{srcset:s},g&4&&a!==(a=(S=h[2])==null?void 0:S.toString())&&{sizes:a}]))},i:z,o:z,d(h){h&&x(e),o=!1,Ne(i)}}}function yr(r,e,t){let n,s,a,o,i,c,f,l,m,u,_,h,g,b;function y(S){ie.call(this,r,S)}function P(S){ie.call(this,r,S)}return r.$$set=S=>{t(11,e=B(B({},e),oe(S)))},r.$$.update=()=>{t(12,{style:n,...s}=e,n,(t(14,s),t(11,e))),r.$$.dirty&16384&&t(10,{alt:a,style:o,src:i,width:c,height:f,loading:l,decoding:m,srcset:u,role:_,sizes:h,fetchpriority:g}=dr(s),a,(t(13,o),t(14,s),t(11,e)),(t(9,i),t(14,s),t(11,e)),(t(8,c),t(14,s),t(11,e)),(t(7,f),t(14,s),t(11,e)),(t(6,l),t(14,s),t(11,e)),(t(5,m),t(14,s),t(11,e)),(t(4,u),t(14,s),t(11,e)),(t(3,_),t(14,s),t(11,e)),(t(2,h),t(14,s),t(11,e)),(t(1,g),t(14,s),t(11,e))),r.$$.dirty&12288&&t(0,b=[_r(o||{}),n].filter(Boolean).join(";"))},e=oe(e),[b,g,h,_,u,m,l,f,c,i,a,e,n,o,s,y,P]}class vr extends M{constructor(e){super(),F(this,e,yr,br,A,{})}}function _e(r,e,t){const n=r.slice();n[1]=e[t];const s=qe(n[1].title);return n[2]=s,n}function be(r){let e,t,n,s,a,o,i=r[2].year+"",c,f,l=r[2].name+"",m,u,_,h;return n=new vr({props:{src:`${Z}${r[1].feature.image}`,alt:r[1].feature.description,title:r[1].feature.title,layout:"fullWidth",height:320}}),{c(){e=j("li"),t=j("a"),H(n.$$.fragment),s=$(),a=j("div"),o=j("span"),c=q(i),f=$(),m=q(l),_=$(),this.h()},l(g){e=U(g,"LI",{class:!0});var b=I(e);t=U(b,"A",{href:!0,class:!0});var y=I(t);V(n.$$.fragment,y),s=R(y),a=U(y,"DIV",{class:!0});var P=I(a);o=U(P,"SPAN",{class:!0});var S=I(o);c=C(S,i),S.forEach(x),f=R(P),m=C(P,l),P.forEach(x),y.forEach(x),_=R(b),b.forEach(x),this.h()},h(){w(o,"class","svelte-11epj5s"),w(a,"class","title svelte-11epj5s"),w(t,"href",u="moments/"+r[1].slug),w(t,"class","svelte-11epj5s"),w(e,"class","moment svelte-11epj5s")},m(g,b){T(g,e,b),v(e,t),G(n,t,null),v(t,s),v(t,a),v(a,o),v(o,c),v(a,f),v(a,m),v(e,_),h=!0},p(g,b){const y={};b&1&&(y.src=`${Z}${g[1].feature.image}`),b&1&&(y.alt=g[1].feature.description),b&1&&(y.title=g[1].feature.title),n.$set(y),(!h||b&1)&&i!==(i=g[2].year+"")&&ce(c,i),(!h||b&1)&&l!==(l=g[2].name+"")&&ce(m,l),(!h||b&1&&u!==(u="moments/"+g[1].slug))&&w(t,"href",u)},i(g){h||(L(n.$$.fragment,g),h=!0)},o(g){k(n.$$.fragment,g),h=!1},d(g){g&&x(e),K(n)}}}function Sr(r){let e,t,n='<h2 class="svelte-11epj5s">The 13 Moments</h2> <p class="svelte-11epj5s">Explore the pivotal moments in King&#39;s College history</p>',s,a,o,i=ue(r[0]),c=[];for(let l=0;l<i.length;l+=1)c[l]=be(_e(r,i,l));const f=l=>k(c[l],1,1,()=>{c[l]=null});return{c(){e=j("section"),t=j("hgroup"),t.innerHTML=n,s=$(),a=j("ul");for(let l=0;l<c.length;l+=1)c[l].c();this.h()},l(l){e=U(l,"SECTION",{id:!0,class:!0});var m=I(e);t=U(m,"HGROUP",{class:!0,"data-svelte-h":!0}),D(t)!=="svelte-4ab9fe"&&(t.innerHTML=n),s=R(m),a=U(m,"UL",{class:!0});var u=I(a);for(let _=0;_<c.length;_+=1)c[_].l(u);u.forEach(x),m.forEach(x),this.h()},h(){w(t,"class","svelte-11epj5s"),w(a,"class","moments svelte-11epj5s"),w(e,"id","moments"),w(e,"class","svelte-11epj5s")},m(l,m){T(l,e,m),v(e,t),v(e,s),v(e,a);for(let u=0;u<c.length;u+=1)c[u]&&c[u].m(a,null);o=!0},p(l,[m]){if(m&1){i=ue(l[0]);let u;for(u=0;u<i.length;u+=1){const _=_e(l,i,u);c[u]?(c[u].p(_,m),L(c[u],1)):(c[u]=be(_),c[u].c(),L(c[u],1),c[u].m(a,null))}for(ke(),u=i.length;u<c.length;u+=1)f(u);We()}},i(l){if(!o){for(let m=0;m<i.length;m+=1)L(c[m]);o=!0}},o(l){c=c.filter(Boolean);for(let m=0;m<c.length;m+=1)k(c[m]);o=!1},d(l){l&&x(e),ze(c,l)}}}function wr(r,e,t){let{moments:n}=e;return r.$$set=s=>{"moments"in s&&t(0,n=s.moments)},[n]}class Pr extends M{constructor(e){super(),F(this,e,wr,Sr,A,{moments:0})}}function xr(r){let e,t,n,s;return e=new Me({}),n=new Pr({props:{moments:r[0].moments}}),{c(){H(e.$$.fragment),t=$(),H(n.$$.fragment)},l(a){V(e.$$.fragment,a),t=R(a),V(n.$$.fragment,a)},m(a,o){G(e,a,o),T(a,t,o),G(n,a,o),s=!0},p(a,[o]){const i={};o&1&&(i.moments=a[0].moments),n.$set(i)},i(a){s||(L(e.$$.fragment,a),L(n.$$.fragment,a),s=!0)},o(a){k(e.$$.fragment,a),k(n.$$.fragment,a),s=!1},d(a){a&&x(t),K(e,a),K(n,a)}}}function jr(r,e,t){let{data:n}=e;return r.$$set=s=>{"data"in s&&t(0,n=s.data)},[n]}class Nr extends M{constructor(e){super(),F(this,e,jr,xr,A,{data:0})}}export{Nr as component};
