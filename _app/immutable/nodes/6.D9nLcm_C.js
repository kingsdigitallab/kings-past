import{s as D,b as U,t as N,c as $,d as E,f as j,g as k,h as x,i as z,j as se,k as P,l as M,m as S,n as A,a as V,ad as ne,a8 as ae,D as Le,z as Ne,e as oe,af as ie,p as ke,q as ce}from"../chunks/scheduler.BFCMfM9_.js";import{S as B,i as H,t as O,g as We,f as qe,b as C,c as G,a as Z,m as K,d as X}from"../chunks/index.mj2WGaPU.js";import{h as le,m as ue}from"../chunks/config.CN8WCQTz.js";import{b as J}from"../chunks/entry.Df4dZc3s.js";import{e as fe}from"../chunks/each.B2PkbbDs.js";import{g as Te}from"../chunks/spread.CgU5AtxT.js";import{s as Ae}from"../chunks/moments.Bv6NMFYP.js";const Ce=""+new URL("../assets/hero.esNPGaky.webp",import.meta.url).href;function Fe(r){let e,t,n,s,a=le.title+"",o,i,l,u=le.message+"",d,b,p,v='<button class="svelte-19i7ztv">Learn more</button>',c,m,f=`<img src="${Ce}" alt="A drawing ot the King&#39;s College Strand building" class="svelte-19i7ztv"/>`;return{c(){e=U("section"),t=U("div"),n=U("h1"),s=U("div"),o=N(a),i=$(),l=U("p"),d=N(u),b=$(),p=U("a"),p.innerHTML=v,c=$(),m=U("picture"),m.innerHTML=f,this.h()},l(_){e=E(_,"SECTION",{class:!0});var g=j(e);t=E(g,"DIV",{class:!0});var w=j(t);n=E(w,"H1",{class:!0});var W=j(n);s=E(W,"DIV",{});var q=j(s);o=k(q,a),q.forEach(x),W.forEach(x),i=z(w),l=E(w,"P",{class:!0});var R=j(l);d=k(R,u),R.forEach(x),b=z(w),p=E(w,"A",{href:!0,class:!0,"data-svelte-h":!0}),se(p)!=="svelte-4ahjg0"&&(p.innerHTML=v),w.forEach(x),c=z(g),m=E(g,"PICTURE",{class:!0,"data-svelte-h":!0}),se(m)!=="svelte-lgv8l"&&(m.innerHTML=f),g.forEach(x),this.h()},h(){P(n,"class","hero-title svelte-19i7ztv"),P(l,"class","hero-message svelte-19i7ztv"),P(p,"href",J+"/about"),P(p,"class","svelte-19i7ztv"),P(t,"class","hero-welcome svelte-19i7ztv"),P(m,"class","hero-img svelte-19i7ztv"),P(e,"class","hero svelte-19i7ztv")},m(_,g){M(_,e,g),S(e,t),S(t,n),S(n,s),S(s,o),S(t,i),S(t,l),S(l,d),S(t,b),S(t,p),S(e,c),S(e,m)},p:A,i:A,o:A,d(_){_&&x(e)}}}class Me extends B{constructor(e){super(),H(this,e,null,Fe,D,{})}}const De={"images.ctfassets.net":"contentful","cdn.builder.io":"builder.io","images.prismic.io":"imgix","www.datocms-assets.com":"imgix","cdn.sanity.io":"imgix","images.unsplash.com":"imgix","cdn.shopify.com":"shopify","s7d1.scene7.com":"scene7","ip.keycdn.com":"keycdn","assets.caisy.io":"bunny","images.contentstack.io":"contentstack","ucarecdn.com":"uploadcare"},Be={"imgix.net":"imgix","files.wordpress.com":"wordpress","b-cdn.net":"bunny","storyblok.com":"storyblok","kc-usercontent.com":"kontent.ai","cloudinary.com":"cloudinary","kxcdn.com":"keycdn","imgeng.in":"imageengine","imagekit.io":"imagekit","cloudimg.io":"cloudimage","ucarecdn.com":"uploadcare","supabase.co":"supabase"},He={"/cdn-cgi/image/":"cloudflare","/cdn-cgi/imagedelivery/":"cloudflare_images","/_next/image":"nextjs","/_next/static":"nextjs","/_vercel/image":"vercel","/is/image":"scene7","/_ipx/":"ipx","/_image":"astro","/.netlify/images":"netlify","/storage/v1/object/public/":"supabase","/storage/v1/render/image/public/":"supabase"},L=r=>{if(!r)return r;const e=Number(r);return isNaN(e)?r:Math.round(e)},h=(r,e,t,n,s)=>{t?(s&&(t=L(t)),r.searchParams.set(e,t.toString())):n&&r.searchParams.delete(e)},I=(r,e,t)=>{r.searchParams.has(e)||r.searchParams.set(e,t.toString())},F=(r,e)=>{const t=Number(r.searchParams.get(e));return isNaN(t)?void 0:t},ve=r=>{const{pathname:e,search:t}=r;return`${e}${t}`},Y=r=>r.hostname==="n"?ve(r):r.toString(),y=(r,e)=>typeof r=="string"?new URL(r,e??"http://n/"):r,me=new Map(Object.entries(De)),Ve=Object.entries(Be);function Ge(r){return Se(r)||Ze(r)}function Se(r){if(typeof r=="string"&&!r.startsWith("https://"))return!1;const{hostname:e}=y(r);if(me.has(e))return me.get(e);for(const[t,n]of Ve)if(e.endsWith(`.${t}`))return n;return!1}function Ze(r){const{pathname:e}=y(r);for(const[t,n]of Object.entries(He))if(e.startsWith(t))return n;return!1}const Ke=({url:r,width:e,height:t,format:n})=>{const s=y(r);return e&&e>4e3&&(t&&(t=Math.round(t*4e3/e)),e=4e3),t&&t>4e3&&(e&&(e=Math.round(e*4e3/t)),t=4e3),h(s,"w",e,!0,!0),h(s,"h",t,!0,!0),h(s,"fm",n),I(s,"fit","fill"),s},Xe=({url:r,width:e,height:t,format:n})=>{const s=y(r);return h(s,"width",e,!0,!0),h(s,"height",t,!0,!0),h(s,"format",n),e&&t&&(I(s,"fit","cover"),I(s,"sharp","true")),s},Je=({url:r,width:e,height:t,format:n})=>{var a;const s=y(r);if(h(s,"w",e,!0,!0),h(s,"h",t,!0,!0),I(s,"fit","min"),n){s.searchParams.set("fm",n);const o=s.searchParams.get("auto");o==="format"?s.searchParams.delete("auto"):o!=null&&o.includes("format")&&s.searchParams.set("auto",o.split(",").filter(i=>i!=="format").join(","))}else s.searchParams.delete("fm"),(a=s.searchParams.get("auto"))!=null&&a.includes("format")||s.searchParams.append("auto","format");return s},Qe=/(.+?)(?:_(?:(pico|icon|thumb|small|compact|medium|large|grande|original|master)|(\d*)x(\d*)))?(?:_crop_([a-z]+))?(\.[a-zA-Z]+)(\.png|\.jpg|\.webp|\.avif)?$/,Ye=r=>{const e=y(r),t=e.pathname.match(Qe);if(!t)throw new Error("Invalid Shopify URL");const[,n,s,a,o,i,l,u]=t;e.pathname=`${n}${l}`;const d=a||e.searchParams.get("width"),b=o||e.searchParams.get("height");return e.searchParams.delete("width"),e.searchParams.delete("height"),{base:e.toString(),width:Number(d)||void 0,height:Number(b)||void 0,format:u?u.slice(1):void 0,params:{crop:i,size:s},cdn:"shopify"}},et=({base:r,width:e,height:t,format:n,params:s})=>{const a=y(r);return h(a,"width",e,!0,!0),h(a,"height",t,!0,!0),h(a,"crop",s==null?void 0:s.crop),h(a,"format",n),a},tt=({url:r,width:e,height:t})=>{const n=Ye(r);if(!n)return;const s={...n,width:e,height:t};return et(s)},rt=({url:r,width:e,height:t})=>{const n=y(r);return h(n,"w",e,!0,!0),h(n,"h",t,!0,!0),I(n,"crop","1"),n},st=({url:r,width:e,height:t})=>{const n=y(r);return h(n,"w",e,!0,!0),h(n,"h",t,!0,!0),h(n,"q",F(n,"q"),!0),n},nt=/https?:\/\/(?<host>[^\/]+)\/(?<cloudName>[^\/]+)\/(?<assetType>image|video|raw)\/(?<deliveryType>upload|fetch|private|authenticated|sprite|facebook|twitter|youtube|vimeo)\/?(?<signature>s\-\-[a-zA-Z0-9]+\-\-)?\/?(?<transformations>(?:[^_\/]+_[^,\/]+,?)*)?\/(?:(?<version>v\d+)\/)?(?<idAndFormat>[^\s]+)$/g,at=r=>r?Object.fromEntries(r.split(",").map(e=>e.split("_"))):{},we=({host:r,cloudName:e,assetType:t,deliveryType:n,signature:s,transformations:a={},version:o,id:i,format:l})=>{l&&(a.f=l);const u=Object.entries(a).map(([b,p])=>`${b}_${p}`).join(",");return`https://${[r,e,t,n,s,u,o,i].filter(Boolean).join("/")}`},Pe=r=>{const t=[...y(r).toString().matchAll(nt)];if(!t.length)throw new Error("Invalid Cloudinary URL");const n=t[0].groups||{},{transformations:s="",idAndFormat:a,...o}=n;delete n.idAndFormat;const i=a.lastIndexOf("."),l=i<0?a:a.slice(0,i),u=i<0?void 0:a.slice(i+1),{w:d,h:b,f:p,...v}=at(s),c=p&&p!=="auto"?p:u;return{base:we({...o,id:l,transformations:v}),width:Number(d)||void 0,height:Number(b)||void 0,format:c,cdn:"cloudinary",params:{...n,id:n.deliveryType==="fetch"?a:l,format:c,transformations:v}}},ot=({base:r,width:e,height:t,format:n,params:s})=>{var i;const a=Pe(r.toString()),o={transformations:{},...a.params,...s,format:n||"auto"};return e&&(o.transformations.w=L(e).toString()),t&&(o.transformations.h=L(t).toString()),(i=o.transformations).c||(i.c="lfill"),we(o)},it=({url:r,width:e,height:t,format:n="auto"})=>{var o,i;const s=Pe(r);if(!s)throw new Error("Invalid Cloudinary URL");if(((o=s.params)==null?void 0:o.assetType)!=="image")throw new Error("Cloudinary transformer only supports images");if((i=s.params)!=null&&i.signature)throw new Error("Cloudinary transformer does not support signed URLs");const a={...s,width:e,height:t,format:n};return ot(a)},ct=/https?:\/\/(?<host>[^\/]+)\/cdn-cgi\/image\/(?<transformations>[^\/]+)?\/(?<path>.*)$/g,lt=r=>Object.fromEntries(r.split(",").map(e=>e.split("="))),xe=({host:r,transformations:e={},path:t})=>{const n=Object.entries(e).map(([a,o])=>`${a}=${o}`).join(",");return`https://${[r,"cdn-cgi","image",n,t].join("/")}`},Ue=r=>{const e=y(r),t=[...e.toString().matchAll(ct)];if(!t.length)throw new Error("Invalid Cloudflare URL");const n=t[0].groups||{},{transformations:s,...a}=n,{width:o,height:i,f:l,...u}=lt(s);return xe({...a,transformations:u}),{base:e.toString(),width:Number(o)||void 0,height:Number(i)||void 0,format:l,cdn:"cloudflare",params:{...n,transformations:u}}},ut=({base:r,width:e,height:t,format:n,params:s})=>{var i;const a=Ue(r.toString()),o={transformations:{},...a.params,...s};return e&&(o.transformations.width=e==null?void 0:e.toString()),t&&(o.transformations.height=t==null?void 0:t.toString()),n&&(o.transformations.f=n==="jpg"?"jpeg":n),(i=o.transformations).fit||(i.fit="cover"),new URL(xe(o))},ft=({url:r,width:e,height:t,format:n="auto"})=>{const s=Ue(r);if(!s)throw new Error("Invalid Cloudflare URL");const a={...s,width:e,height:t,format:n};return ut(a)},mt=({url:r,width:e,height:t})=>{const n=y(r);return h(n,"width",e,!0,!0),e&&t&&I(n,"aspect_ratio",`${e}:${t}`),n},ht=/(?<id>\/f\/\d+\/\d+x\d+\/\w+\/[^\/]+)\/?(?<modifiers>m\/?(?<crop>\d+x\d+:\d+x\d+)?\/?(?<resize>(?<flipx>\-)?(?<width>\d+)x(?<flipy>\-)?(?<height>\d+))?\/?(filters\:(?<filters>[^\/]+))?)?$/g,dt=/^(?<modifiers>\/(?<crop>\d+x\d+:\d+x\d+)?\/?(?<resize>(?<flipx>\-)?(?<width>\d+)x(?<flipy>\-)?(?<height>\d+))?\/?(filters\:(?<filters>[^\/]+))?\/?)?(?<id>\/f\/.+)$/g,gt=r=>r?Object.fromEntries(r.split(":").map(e=>{if(!e)return[];const[t,n]=e.split("(");return[t,n.replace(")","")]})):{},pt=r=>{if(!r)return;const e=Object.entries(r).map(([t,n])=>`${t}(${n??""})`);if(e.length!==0)return`filters:${e.join(":")}`},_t=r=>{const e=y(r),t=e.hostname==="img2.storyblok.com"?dt:ht,[n]=e.pathname.matchAll(t);if(!n||!n.groups)throw new Error("Invalid Storyblok URL");const{id:s,crop:a,width:o,height:i,filters:l,flipx:u,flipy:d}=n.groups,{format:b,...p}=gt(l);return e.hostname==="img2.storyblok.com"&&(e.hostname="a.storyblok.com"),{base:e.origin+s,width:Number(o)||void 0,height:Number(i)||void 0,format:b,params:{crop:a,filters:p,flipx:u,flipy:d},cdn:"storyblok"}},bt=({base:r,width:e=0,height:t=0,format:n,params:s={}})=>{const{crop:a,filters:o,flipx:i="",flipy:l=""}=s,u=`${i}${e}x${l}${t}`;return new URL([r,"m",a,u,pt(o),n].filter(Boolean).join("/"))},yt=({url:r,width:e,height:t,format:n})=>{const s=_t(r);if(s)return n&&(s.params||(s.params={filters:{}}),s.params.filters||(s.params.filters={}),s.params.filters.format=n),bt({...s,width:e,height:t})},vt=({url:r,width:e,height:t,format:n})=>{const s=y(r);return h(s,"w",e,!0,!0),h(s,"h",t,!0,!0),h(s,"fm",n,!0),e&&t&&I(s,"fit","crop"),s},he=r=>{const t=y(r).searchParams.get("url");if(!t||!t.startsWith("http"))return!1;const n=Se(t);return n?{cdn:n,url:t}:!1},St=({base:r,width:e,params:{quality:t=75,root:n="_vercel"}={}})=>{const s=new URL("http://n");return s.pathname=`/${n}/image`,s.searchParams.set("url",r.toString()),h(s,"w",e,!1,!0),I(s,"q",t),ve(s)},Ee=({url:r,width:e,cdn:t})=>{const n=y(r),s=n.pathname.startsWith("/_next/image")||n.pathname.startsWith("/_vercel/image"),a=s?n.searchParams.get("url"):r.toString();if(a)return h(n,"w",e,!0,!0),s?Y(n):St({base:a,width:e,params:{root:t==="nextjs"?"_next":"_vercel"}})},wt=r=>Ee({...r,cdn:"nextjs"}),Pt=({url:r,width:e,height:t,format:n})=>{const s=y(r);return h(s,"wid",e,!0,!0),h(s,"hei",t,!0,!0),h(s,"fmt",n,!0),h(s,"qlt",F(s,"qlt"),!0),h(s,"scl",F(s,"scl"),!0),I(s,"fit","crop"),!e&&!t&&I(s,"scl",1),s},xt=({url:r,width:e,height:t,format:n})=>{const s=y(r);return h(s,"width",e,!0,!0),h(s,"height",t,!0,!0),h(s,"format",n,!0),h(s,"quality",F(s,"quality"),!0),I(s,"enlarge",0),s},Ut=({url:r,width:e,height:t,format:n})=>{const s=y(r);return h(s,"width",e,!0,!0),h(s,"height",t,!0,!0),h(s,"format",n),h(s,"quality",F(s,"quality"),!0),s},Q={width:"w",height:"h",autoWidthWithFallback:"w_auto",auto_width_fallback:"w_auto",scaleToScreenWidth:"pc",scale_to_screen_width:"pc",crop:"cr",outputFormat:"f",format:"f",fit:"m",fitMethod:"m",compression:"cmpr",sharpness:"s",rotate:"r",inline:"in",keepMeta:"meta",keep_meta:"meta",noOptimization:"pass",no_optimization:"pass",force_download:"dl",max_device_pixel_ratio:"maxdpr",maxDevicePixelRatio:"maxdpr"};function Et(r){return Object.keys(Q).find(n=>Q[n]===r)||""}function jt(r){let e=r.toString(),t=[];if(e){let n=e.split("imgeng=");n.length>1&&(t=n[1].split("/"))}return t}function It(r){let e=r.toString(),t="";if(e){let n=e.split("imgeng=");n.length>1?t=n[0].slice(0,-1):t=e}return t}const $t=({url:r,width:e,height:t,format:n})=>{const s=y(r),a=It(s);let o={};const i=s.toString()===a?[]:jt(s);i.length&&(o=Lt(i)),e&&(o.width=e),t&&(o.height=t),n&&(o.format=n),o.hasOwnProperty("fit")||(o={...o,fit:"cropbox"});let l=zt(o),u=Rt(l),d=u===""?"":a.includes("?")?"&":"?";return`${a}${d}${u}`};function zt(r){return Object.entries(r).reduce((e,[t,n])=>e+Ot(t,n),"")}function Rt(r){return r&&r!==""?`imgeng=${r}`:""}function Ot(r,e){let t=Q[r];return t&&(e||e===0)?`/${t}_${e}`:""}function Lt(r){let e={};return r.forEach(t=>{let n=t.split("_");if(n.length>1){let s=n[0],a=n[1],o=Et(s);o&&(e[o]=a)}}),e}const Nt=({url:r,width:e,height:t,format:n})=>{const s=y(r);return h(s,"width",e,!0,!0),h(s,"height",t,!0,!0),h(s,"format",n),s.searchParams.has("format")||I(s,"auto","webp"),e&&t&&I(s,"fit","crop"),s},kt=/https?:\/\/(?<host>[^\/]+)\/cdn-cgi\/imagedelivery\/(?<accountHash>[^\/]+)\/(?<imageId>[^\/]+)\/*(?<transformations>[^\/]+)*$/g,Wt=r=>{var e;return Object.fromEntries(((e=r==null?void 0:r.split(","))==null?void 0:e.map(t=>t.split("=")))??[])},qt=({host:r,accountHash:e,transformations:t={},imageId:n})=>{const s=Object.entries(t).map(([o,i])=>`${o}=${i}`).join(",");return`https://${[r,"cdn-cgi","imagedelivery",e,n,s].join("/")}`},je=r=>{const e=y(r),t=[...e.toString().matchAll(kt)];if(!t.length)throw new Error("Invalid Cloudflare Images URL");const n=t[0].groups||{},{transformations:s,...a}=n,{w:o,h:i,f:l,...u}=Wt(s);return{base:e.toString(),width:Number(o)||void 0,height:Number(i)||void 0,format:l,cdn:"cloudflare_images",params:{...a,transformations:u}}},Tt=({base:r,width:e,height:t,format:n,params:s})=>{var i;const a=je(r.toString()),o={transformations:{},...a.params,...s};return e&&(o.transformations.w=e==null?void 0:e.toString()),t&&(o.transformations.h=t==null?void 0:t.toString()),n&&(o.transformations.f=n),(i=o.transformations).fit||(i.fit="cover"),new URL(qt(o))},At=({url:r,width:e,height:t,format:n="auto"})=>{const s=je(r);if(!s)throw new Error("Invalid Cloudflare Images URL");const a={...s,width:e,height:t,format:n};return Tt(a)},Ct=r=>{const e=y(r),[t,...n]=e.pathname.split("/").slice(1),s=Object.fromEntries(t.split(",").map(a=>{const[o,i]=a.split("_");return[o,i]}));if(s.s){const[a,o]=s.s.split("x");s.w||(s.w=a),s.h||(s.h=o)}return{base:n.join("/"),width:Number(s.w)||void 0,height:Number(s.h)||void 0,quality:Number(s.q)||void 0,format:s.f||"auto",params:s,cdn:"ipx"}},de=({base:r,width:e,height:t,format:n,params:s})=>{const a=(s==null?void 0:s.modifiers)??{};e&&t?a.s=`${e}x${t}`:e?a.w=`${e}`:t&&(a.h=`${t}`),n&&(a.f=n);const o=s!=null&&s.base.endsWith("/")?s==null?void 0:s.base:`${s==null?void 0:s.base}/`,i=Object.entries(a).map(([d,b])=>`${d}_${b}`).join(","),l=r.toString(),u=l.startsWith("/")?l.slice(1):l;return`${o}${i}/${u}`},Ft=r=>{var o,i,l,u;const e=String(r.url),t=y(e),n=t.pathname.startsWith("/_ipx")&&t.hostname!=="n"?`${t.origin}/_ipx`:"/_ipx",s=((i=(o=r.cdnOptions)==null?void 0:o.ipx)==null?void 0:i.base)??n;if(s&&s!=="/"&&e.startsWith(s)){const d=Ct(e.replace(s,""));return de({...d,...r,params:{...(l=r.cdnOptions)==null?void 0:l.ipx,base:s}})}return de({...r,base:e,params:{...(u=r.cdnOptions)==null?void 0:u.ipx,base:s}})},Mt=({url:r,width:e,height:t,format:n})=>{const s=y(r),a=Y(new URL(s.pathname,s.origin)),o={searchParams:new URLSearchParams};return h(o,"href",a,!0,!0),h(o,"w",e,!0,!0),h(o,"h",t,!0,!0),h(o,"f",n),`/_image?${o.searchParams.toString()}`},Dt=new Set(["w","h","q","fm","url","width","height","quality"]),Bt=r=>{const e=y(r),t=Number(e.searchParams.get("w")??e.searchParams.get("width"))??void 0,n=Number(e.searchParams.get("h")??e.searchParams.get("height"))??void 0,s=Number(e.searchParams.get("q")??e.searchParams.get("quality"))||void 0,a=e.searchParams.get("fm")||void 0,o=e.searchParams.get("url")||"",i={quality:s};return e.searchParams.forEach((l,u)=>{Dt.has(u)||(i[u]=l)}),e.search="",{base:o,width:t,height:n,format:a,params:i,cdn:"netlify"}},ge=({base:r,width:e,height:t,format:n,params:{site:s,quality:a,...o}={}})=>{const i=y("/.netlify/images",s);return Object.entries(o).forEach(([l,u])=>h(i,l,u)),h(i,"q",a,!0,!0),h(i,"w",e,!0,!0),h(i,"h",t,!0,!0),h(i,"fm",n),I(i,"fit","cover"),i.searchParams.set("url",r.toString()),Y(i)},Ht=r=>{var t,n;const e=y(r.url);if(e.pathname.startsWith("/.netlify/images")){const{params:s,base:a,format:o}=Bt(e);return ge({base:a,format:o,...r,params:{...s,site:e.hostname==="n"?void 0:e.origin}})}return ge({...r,base:r.url,params:{site:(n=(t=r.cdnOptions)==null?void 0:t.netlify)==null?void 0:n.site}})},Vt=r=>(r.searchParams.get("tr")||"").split(",").reduce((t,n)=>{const[s,a]=n.split("-");return t[s]=a,t},{}),Gt=({url:r,width:e,height:t,format:n})=>{const s=y(r),a=Vt(s);a.w=e&&Math.round(e),a.h=t&&Math.round(t),a.f||(a.f="auto"),n&&(a.f=n);const o=Object.keys(a).map(i=>{const l=a[i];if(l)return`${i}-${l}`}).filter(i=>i).join(",");return s.searchParams.set("tr",o),s},Zt=/^https?:\/\/(?<host>[^\/]+)\/(?<uuid>[^\/]+)/g;function Ie(r){const e=new URL(r),t=e.pathname+e.search+e.hash,n=t.lastIndexOf("http"),s=t.lastIndexOf("/");let a="";return n>=0?a=t.slice(n):s>=0&&(a=t.slice(s+1)),a}function Kt(r){return r.startsWith("http")}function Xt(r){const e=new URL(r);return{pathname:e.origin+e.pathname||"",search:e.search||"",hash:e.hash||""}}function Jt(r){const e=new URL(r),t=Ie(r),n=Kt(t)?Xt(t).pathname:t;return e.pathname=e.pathname.replace(n,""),e.search="",e.hash="",e.toString()}const Qt=r=>{if(typeof r!="string"||!r)return"";let e=r.trim();return e.startsWith("-/")?e=e.slice(2):e.startsWith("/")&&(e=e.slice(1)),e.endsWith("/")&&(e=e.slice(0,e.length-1)),e};function Yt(r){const e=Jt(r),t=new URL(e),n=t.pathname.indexOf("/-/");return n===-1?[]:t.pathname.substring(n).split("/-/").filter(Boolean).map(a=>Qt(a))}const er=r=>r.length?r.reduce((e,t)=>{const[n,s]=t.split("/");return{...e,[n]:s}},{}):{},$e=({host:r,uuid:e,operations:t={},filename:n})=>{const s=Object.entries(t).map(([o,i])=>`${o}/${i}`).join("/-/");return`https://${[r,e,s?`-/${s}`:"",n].join("/")}`},ze=r=>{const e=y(r),t=[...e.toString().matchAll(Zt)];if(!t.length)throw new Error("Invalid Uploadcare URL");const n=t[0].groups||{},{...s}=n,a=Ie(e.toString()),{format:o,...i}=er(Yt(e.toString())),l=o&&o!=="auto"?o:"auto";return{base:$e({...s,filename:a||void 0,operations:{...i,format:l}}),cdn:"uploadcare",params:{...n,filename:a||void 0,operations:{...i,format:l}}}},tr=({base:r,width:e,height:t,params:n})=>{const s=r.toString(),a=ze(s.endsWith("/")?s:`${s}/`),o={operations:{},...a.params,...n};return e&&t?o.operations={...o.operations,resize:`${e}x${t}`}:(e&&(o.operations={...o.operations,resize:`${e}x`}),t&&(o.operations={...o.operations,resize:`x${t}`})),$e(o)},rr=({url:r,width:e,height:t})=>{const n=ze(r);if(!n)throw new Error("Invalid Uploadcare URL");const s={...n,width:e,height:t};return tr(s)},sr=["origin"],Re="/storage/v1/object/public/",ee="/storage/v1/render/image/public/",nr=r=>r.pathname.startsWith(ee),Oe=r=>{const e=y(r);if(!nr(e))return{cdn:"supabase",base:e.origin+e.pathname};const n=e.pathname.replace(ee,""),s=e.searchParams.has("quality")?Number(e.searchParams.get("quality")):void 0,a=e.searchParams.has("width")?Number(e.searchParams.get("width")):void 0,o=e.searchParams.has("height")?Number(e.searchParams.get("height")):void 0,i=e.searchParams.has("format")?e.searchParams.get("format"):void 0,l=e.searchParams.has("resize")?e.searchParams.get("resize"):void 0;return{cdn:"supabase",base:e.origin+Re+n,width:a,height:o,format:i,params:{quality:s,resize:l}}},ar=({base:r,width:e,height:t,format:n,params:s})=>{const a=Oe(r.toString());r=a.base,e=e||a.width,t=t||a.height,n=n||a.format,s={...a.params,...s};const o=new URLSearchParams;return e&&o.set("width",L(e).toString()),t&&o.set("height",L(t).toString()),n&&sr.includes(n)&&o.set("format",n),s!=null&&s.quality&&o.set("quality",L(s.quality).toString()),s!=null&&s.resize&&o.set("resize",s.resize),o.toString()===""?r:a.base.replace(Re,ee)+"?"+o.toString()},or=({url:r,width:e,height:t,format:n,cdnOptions:s})=>{const a=Oe(r);return ar({base:a.base,width:e||a.width,height:t||a.height,format:n||a.format,params:(s==null?void 0:s.supabase)||a.params})},pe={vercel:he,nextjs:he};function ir(r,e){if(!(e in pe))return!1;const t=pe[e];return t?t(r):!1}function te(r,e){const t=Ge(r)||e;if(!t)return!1;const n=ir(r,t);return n||{cdn:t,url:r}}const re=r=>({imgix:Je,contentful:Ke,"builder.io":Xe,shopify:tt,wordpress:rt,cloudimage:st,cloudinary:it,bunny:mt,storyblok:yt,cloudflare:ft,vercel:Ee,nextjs:wt,scene7:Pt,"kontent.ai":vt,keycdn:xt,directus:Ut,imageengine:$t,contentstack:Nt,cloudflare_images:At,ipx:Ft,astro:Mt,netlify:Ht,imagekit:Gt,uploadcare:rr,supabase:or})[r];var cr=(r,e)=>{if(!(!r||!e))switch(e){case"constrained":return`(min-width: ${r}px) ${r}px, 100vw`;case"fixed":return`${r}px`;case"fullWidth":return"100vw";default:return}},T=r=>r||r===0?`${r}px`:void 0,lr=({width:r,height:e,aspectRatio:t,layout:n,objectFit:s="cover",background:a})=>{const o=[["object-fit",s]];return a!=null&&a.startsWith("https:")||a!=null&&a.startsWith("http:")||a!=null&&a.startsWith("data:")?(o.push(["background-image",`url(${a})`]),o.push(["background-size","cover"]),o.push(["background-repeat","no-repeat"])):o.push(["background",a]),n==="fixed"&&(o.push(["width",T(r)]),o.push(["height",T(e)])),n==="constrained"&&(o.push(["max-width",T(r)]),o.push(["max-height",T(e)]),o.push(["aspect-ratio",t?`${t}`:void 0]),o.push(["width","100%"])),n==="fullWidth"&&(o.push(["width","100%"]),o.push(["aspect-ratio",t?`${t}`:void 0]),o.push(["height",T(e)])),Object.fromEntries(o.filter(([,i])=>i))},ur=[6016,5120,4480,3840,3200,2560,2048,1920,1668,1280,1080,960,828,750,640],_e=24,fr=({width:r,layout:e,resolutions:t=ur})=>{if(e==="fullWidth")return t;if(!r)return[];const n=r*2;return e==="fixed"?[r,n]:e==="constrained"?[r,n,...t.filter(s=>s<n)]:[]},mr=({src:r,width:e,layout:t="constrained",height:n,aspectRatio:s,breakpoints:a,cdn:o,transformer:i,format:l})=>{const u=te(r,o);return u&&!i&&(i=re(u.cdn)),i?(a||(a=fr({width:e,layout:t})),a.sort((d,b)=>d-b).map(d=>{let b;return n&&s&&(b=Math.round(d/s)),{url:u?u.url:r,width:d,height:b,format:l}})):[]},hr=r=>{let{src:e,cdn:t,transformer:n}=r;const s=te(e,t);return s&&!n&&(n=re(s.cdn)),n?mr({...r,transformer:n}).map(a=>{const o=n(a);return`${o==null?void 0:o.toString()} ${a.width}w`}).join(`,
`):""};function dr({width:r,height:e,priority:t,layout:n="constrained",aspectRatio:s,...a}){return r=r&&Number(r)||void 0,e=e&&Number(e)||void 0,t?(a.loading||(a.loading="eager"),a.fetchpriority||(a.fetchpriority="high")):(a.loading||(a.loading="lazy"),a.decoding||(a.decoding="async")),a.alt===""&&(a.role||(a.role="presentation")),s?r?e||(e=Math.round(r/s)):e&&(r=Math.round(e*s)):r&&e&&(s=r/e),{width:r,height:e,aspectRatio:s,layout:n,...a}}function gr(r){let{src:e,cdn:t,transformer:n,background:s,layout:a,objectFit:o,breakpoints:i,width:l,height:u,aspectRatio:d,unstyled:b,...p}=dr(r);const v=e?te(e,t):void 0;let c=e;if(v&&(c=v.url,n||(n=re(v.cdn))),n&&s==="auto"){const f=d?Math.round(_e/d):void 0,_=n({url:c,width:_e,height:f});_&&(s=_.toString())}const m={width:l,height:u,aspectRatio:d,layout:a,objectFit:o,background:s};if(p.sizes||(p.sizes=cr(l,a)),b||(p.style={...lr(m),...p.style}),n){p.srcset=hr({src:c,width:l,height:u,aspectRatio:d,layout:a,breakpoints:i,transformer:n,cdn:t});const f=n({url:c,width:l,height:u});f&&(c=f),(a==="fullWidth"||a==="constrained")&&(l=void 0,u=void 0)}return{...p,src:c==null?void 0:c.toString(),width:l,height:u}}function pr(r,e){const t=RegExp(r,"g");return n=>{if(typeof n!="string")throw new TypeError(`expected an argument of type string, but got ${typeof n}`);return n.match(t)?n.replace(t,e):n}}const _r=pr(/[A-Z]/,r=>`-${r.toLowerCase()}`);function br(r,e=_r){if(!r||typeof r!="object"||Array.isArray(r))throw new TypeError(`expected an argument of type object, but got ${typeof r}`);return Object.keys(r).map(t=>`${e(t)}: ${r[t]};`).join(`
`)}function yr(r){var d,b,p,v;let e,t,n,s,a,o,i,l=[r[11],{style:r[0]},{loading:r[6]},{width:r[8]},{height:r[7]},{decoding:r[5]},{role:r[3]},{fetchpriority:r[1]},{alt:t=(d=r[10])==null?void 0:d.toString()},{src:n=(b=r[9])==null?void 0:b.toString()},{srcset:s=(p=r[4])==null?void 0:p.toString()},{sizes:a=(v=r[2])==null?void 0:v.toString()}],u={};for(let c=0;c<l.length;c+=1)u=V(u,l[c]);return{c(){e=U("img"),this.h()},l(c){e=E(c,"IMG",{style:!0,loading:!0,width:!0,height:!0,decoding:!0,role:!0,fetchpriority:!0,alt:!0,src:!0,srcset:!0,sizes:!0}),this.h()},h(){ne(e,u)},m(c,m){M(c,e,m),o||(i=[ae(e,"load",r[15]),ae(e,"error",r[16])],o=!0)},p(c,[m]){var f,_,g,w;ne(e,u=Te(l,[m&2048&&c[11],m&1&&{style:c[0]},m&64&&{loading:c[6]},m&256&&{width:c[8]},m&128&&{height:c[7]},m&32&&{decoding:c[5]},m&8&&{role:c[3]},m&2&&{fetchpriority:c[1]},m&1024&&t!==(t=(f=c[10])==null?void 0:f.toString())&&{alt:t},m&512&&!Le(e.src,n=(_=c[9])==null?void 0:_.toString())&&{src:n},m&16&&s!==(s=(g=c[4])==null?void 0:g.toString())&&{srcset:s},m&4&&a!==(a=(w=c[2])==null?void 0:w.toString())&&{sizes:a}]))},i:A,o:A,d(c){c&&x(e),o=!1,Ne(i)}}}function vr(r,e,t){let n,s,a,o,i,l,u,d,b,p,v,c,m,f;function _(w){ie.call(this,r,w)}function g(w){ie.call(this,r,w)}return r.$$set=w=>{t(11,e=V(V({},e),oe(w)))},r.$$.update=()=>{t(12,{style:n,...s}=e,n,(t(14,s),t(11,e))),r.$$.dirty&16384&&t(10,{alt:a,style:o,src:i,width:l,height:u,loading:d,decoding:b,srcset:p,role:v,sizes:c,fetchpriority:m}=gr(s),a,(t(13,o),t(14,s),t(11,e)),(t(9,i),t(14,s),t(11,e)),(t(8,l),t(14,s),t(11,e)),(t(7,u),t(14,s),t(11,e)),(t(6,d),t(14,s),t(11,e)),(t(5,b),t(14,s),t(11,e)),(t(4,p),t(14,s),t(11,e)),(t(3,v),t(14,s),t(11,e)),(t(2,c),t(14,s),t(11,e)),(t(1,m),t(14,s),t(11,e))),r.$$.dirty&12288&&t(0,f=[br(o||{}),n].filter(Boolean).join(";"))},e=oe(e),[f,m,c,v,p,b,d,u,l,i,a,e,n,o,s,_,g]}class Sr extends B{constructor(e){super(),H(this,e,vr,yr,D,{})}}function be(r,e,t){const n=r.slice();n[1]=e[t];const s=Ae(n[1].title);return n[2]=s,n}function ye(r){let e,t,n,s,a,o,i=r[2].year+"",l,u,d=r[2].name+"",b,p,v,c;return n=new Sr({props:{src:`${J}${r[1].feature.image}`,alt:r[1].feature.description,title:r[1].feature.title,layout:"fullWidth",height:320}}),{c(){e=U("li"),t=U("a"),G(n.$$.fragment),s=$(),a=U("div"),o=U("span"),l=N(i),u=$(),b=N(d),v=$(),this.h()},l(m){e=E(m,"LI",{class:!0});var f=j(e);t=E(f,"A",{href:!0,class:!0});var _=j(t);Z(n.$$.fragment,_),s=z(_),a=E(_,"DIV",{class:!0});var g=j(a);o=E(g,"SPAN",{class:!0});var w=j(o);l=k(w,i),w.forEach(x),u=z(g),b=k(g,d),g.forEach(x),_.forEach(x),v=z(f),f.forEach(x),this.h()},h(){P(o,"class","svelte-7emxcz"),P(a,"class","title svelte-7emxcz"),P(t,"href",p="moments/"+r[1].slug),P(t,"class","svelte-7emxcz"),P(e,"class","moment svelte-7emxcz")},m(m,f){M(m,e,f),S(e,t),K(n,t,null),S(t,s),S(t,a),S(a,o),S(o,l),S(a,u),S(a,b),S(e,v),c=!0},p(m,f){const _={};f&1&&(_.src=`${J}${m[1].feature.image}`),f&1&&(_.alt=m[1].feature.description),f&1&&(_.title=m[1].feature.title),n.$set(_),(!c||f&1)&&i!==(i=m[2].year+"")&&ce(l,i),(!c||f&1)&&d!==(d=m[2].name+"")&&ce(b,d),(!c||f&1&&p!==(p="moments/"+m[1].slug))&&P(t,"href",p)},i(m){c||(O(n.$$.fragment,m),c=!0)},o(m){C(n.$$.fragment,m),c=!1},d(m){m&&x(e),X(n)}}}function wr(r){let e,t,n,s=ue.title+"",a,o,i,l=ue.message+"",u,d,b,p,v=fe(r[0]),c=[];for(let f=0;f<v.length;f+=1)c[f]=ye(be(r,v,f));const m=f=>C(c[f],1,1,()=>{c[f]=null});return{c(){e=U("section"),t=U("hgroup"),n=U("h2"),a=N(s),o=$(),i=U("p"),u=N(l),d=$(),b=U("ul");for(let f=0;f<c.length;f+=1)c[f].c();this.h()},l(f){e=E(f,"SECTION",{id:!0,class:!0});var _=j(e);t=E(_,"HGROUP",{class:!0});var g=j(t);n=E(g,"H2",{class:!0});var w=j(n);a=k(w,s),w.forEach(x),o=z(g),i=E(g,"P",{class:!0});var W=j(i);u=k(W,l),W.forEach(x),g.forEach(x),d=z(_),b=E(_,"UL",{class:!0});var q=j(b);for(let R=0;R<c.length;R+=1)c[R].l(q);q.forEach(x),_.forEach(x),this.h()},h(){P(n,"class","svelte-7emxcz"),P(i,"class","svelte-7emxcz"),P(t,"class","svelte-7emxcz"),P(b,"class","moments svelte-7emxcz"),P(e,"id","moments"),P(e,"class","svelte-7emxcz")},m(f,_){M(f,e,_),S(e,t),S(t,n),S(n,a),S(t,o),S(t,i),S(i,u),S(e,d),S(e,b);for(let g=0;g<c.length;g+=1)c[g]&&c[g].m(b,null);p=!0},p(f,[_]){if(_&1){v=fe(f[0]);let g;for(g=0;g<v.length;g+=1){const w=be(f,v,g);c[g]?(c[g].p(w,_),O(c[g],1)):(c[g]=ye(w),c[g].c(),O(c[g],1),c[g].m(b,null))}for(We(),g=v.length;g<c.length;g+=1)m(g);qe()}},i(f){if(!p){for(let _=0;_<v.length;_+=1)O(c[_]);p=!0}},o(f){c=c.filter(Boolean);for(let _=0;_<c.length;_+=1)C(c[_]);p=!1},d(f){f&&x(e),ke(c,f)}}}function Pr(r,e,t){let{moments:n}=e;return r.$$set=s=>{"moments"in s&&t(0,n=s.moments)},[n]}class xr extends B{constructor(e){super(),H(this,e,Pr,wr,D,{moments:0})}}function Ur(r){let e,t,n,s;return e=new Me({}),n=new xr({props:{moments:r[0].moments}}),{c(){G(e.$$.fragment),t=$(),G(n.$$.fragment)},l(a){Z(e.$$.fragment,a),t=z(a),Z(n.$$.fragment,a)},m(a,o){K(e,a,o),M(a,t,o),K(n,a,o),s=!0},p(a,[o]){const i={};o&1&&(i.moments=a[0].moments),n.$set(i)},i(a){s||(O(e.$$.fragment,a),O(n.$$.fragment,a),s=!0)},o(a){C(e.$$.fragment,a),C(n.$$.fragment,a),s=!1},d(a){a&&x(t),X(e,a),X(n,a)}}}function Er(r,e,t){let{data:n}=e;return r.$$set=s=>{"data"in s&&t(0,n=s.data)},[n]}class Nr extends B{constructor(e){super(),H(this,e,Er,Ur,D,{data:0})}}export{Nr as component};
