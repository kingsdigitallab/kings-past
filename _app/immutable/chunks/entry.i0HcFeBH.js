import{n as M,s as ut,aa as dt,z as ht,S as pt,P as gt,N as mt}from"./scheduler.BFCMfM9_.js";import{H as re,S as we,R as ze}from"./control.CYgJF_JY.js";new URL("sveltekit-internal://");function _t(e,n){return e==="/"||n==="ignore"?e:n==="never"?e.endsWith("/")?e.slice(0,-1):e:n==="always"&&!e.endsWith("/")?e+"/":e}function yt(e){return e.split("%25").map(decodeURI).join("%25")}function wt(e){for(const n in e)e[n]=decodeURIComponent(e[n]);return e}function he({href:e}){return e.split("#")[0]}const vt=["href","pathname","search","toString","toJSON"];function bt(e,n,t){const a=new URL(e);Object.defineProperty(a,"searchParams",{value:new Proxy(a.searchParams,{get(r,o){if(o==="get"||o==="getAll"||o==="has")return s=>(t(s),r[o](s));n();const i=Reflect.get(r,o);return typeof i=="function"?i.bind(r):i}}),enumerable:!0,configurable:!0});for(const r of vt)Object.defineProperty(a,r,{get(){return n(),e[r]},enumerable:!0,configurable:!0});return a}const Et="/__data.json",kt=".html__data.json";function St(e){return e.endsWith(".html")?e.replace(/\.html$/,kt):e.replace(/\/$/,"")+Et}function At(...e){let n=5381;for(const t of e)if(typeof t=="string"){let a=t.length;for(;a;)n=n*33^t.charCodeAt(--a)}else if(ArrayBuffer.isView(t)){const a=new Uint8Array(t.buffer,t.byteOffset,t.byteLength);let r=a.length;for(;r;)n=n*33^a[--r]}else throw new TypeError("value must be a string or TypedArray");return(n>>>0).toString(36)}function Rt(e){const n=atob(e),t=new Uint8Array(n.length);for(let a=0;a<n.length;a++)t[a]=n.charCodeAt(a);return t.buffer}const Me=window.fetch;window.fetch=(e,n)=>((e instanceof Request?e.method:(n==null?void 0:n.method)||"GET")!=="GET"&&G.delete(ve(e)),Me(e,n));const G=new Map;function It(e,n){const t=ve(e,n),a=document.querySelector(t);if(a!=null&&a.textContent){let{body:r,...o}=JSON.parse(a.textContent);const i=a.getAttribute("data-ttl");return i&&G.set(t,{body:r,init:o,ttl:1e3*Number(i)}),a.getAttribute("data-b64")!==null&&(r=Rt(r)),Promise.resolve(new Response(r,o))}return window.fetch(e,n)}function Lt(e,n,t){if(G.size>0){const a=ve(e,t),r=G.get(a);if(r){if(performance.now()<r.ttl&&["default","force-cache","only-if-cached",void 0].includes(t==null?void 0:t.cache))return new Response(r.body,r.init);G.delete(a)}}return window.fetch(n,t)}function ve(e,n){let a=`script[data-sveltekit-fetched][data-url=${JSON.stringify(e instanceof Request?e.url:e)}]`;if(n!=null&&n.headers||n!=null&&n.body){const r=[];n.headers&&r.push([...new Headers(n.headers)].join(",")),n.body&&(typeof n.body=="string"||ArrayBuffer.isView(n.body))&&r.push(n.body),a+=`[data-hash="${At(...r)}"]`}return a}const Pt=/^(\[)?(\.\.\.)?(\w+)(?:=(\w+))?(\])?$/;function Tt(e){const n=[];return{pattern:e==="/"?/^\/$/:new RegExp(`^${xt(e).map(a=>{const r=/^\[\.\.\.(\w+)(?:=(\w+))?\]$/.exec(a);if(r)return n.push({name:r[1],matcher:r[2],optional:!1,rest:!0,chained:!0}),"(?:/(.*))?";const o=/^\[\[(\w+)(?:=(\w+))?\]\]$/.exec(a);if(o)return n.push({name:o[1],matcher:o[2],optional:!0,rest:!1,chained:!0}),"(?:/([^/]+))?";if(!a)return;const i=a.split(/\[(.+?)\](?!\])/);return"/"+i.map((c,l)=>{if(l%2){if(c.startsWith("x+"))return pe(String.fromCharCode(parseInt(c.slice(2),16)));if(c.startsWith("u+"))return pe(String.fromCharCode(...c.slice(2).split("-").map(f=>parseInt(f,16))));const u=Pt.exec(c),[,h,p,d,g]=u;return n.push({name:d,matcher:g,optional:!!h,rest:!!p,chained:p?l===1&&i[0]==="":!1}),p?"(.*?)":h?"([^/]*)?":"([^/]+?)"}return pe(c)}).join("")}).join("")}/?$`),params:n}}function Ut(e){return!/^\([^)]+\)$/.test(e)}function xt(e){return e.slice(1).split("/").filter(Ut)}function Nt(e,n,t){const a={},r=e.slice(1),o=r.filter(s=>s!==void 0);let i=0;for(let s=0;s<n.length;s+=1){const c=n[s];let l=r[s-i];if(c.chained&&c.rest&&i&&(l=r.slice(s-i,s+1).filter(u=>u).join("/"),i=0),l===void 0){c.rest&&(a[c.name]="");continue}if(!c.matcher||t[c.matcher](l)){a[c.name]=l;const u=n[s+1],h=r[s+1];u&&!u.rest&&u.optional&&h&&c.chained&&(i=0),!u&&!h&&Object.keys(a).length===o.length&&(i=0);continue}if(c.optional&&c.chained){i++;continue}return}if(!i)return a}function pe(e){return e.normalize().replace(/[[\]]/g,"\\$&").replace(/%/g,"%25").replace(/\//g,"%2[Ff]").replace(/\?/g,"%3[Ff]").replace(/#/g,"%23").replace(/[.*+?^${}()|\\]/g,"\\$&")}function Ot({nodes:e,server_loads:n,dictionary:t,matchers:a}){const r=new Set(n);return Object.entries(t).map(([s,[c,l,u]])=>{const{pattern:h,params:p}=Tt(s),d={id:s,exec:g=>{const f=h.exec(g);if(f)return Nt(f,p,a)},errors:[1,...u||[]].map(g=>e[g]),layouts:[0,...l||[]].map(i),leaf:o(c)};return d.errors.length=d.layouts.length=Math.max(d.errors.length,d.layouts.length),d});function o(s){const c=s<0;return c&&(s=~s),[c,e[s]]}function i(s){return s===void 0?s:[r.has(s),e[s]]}}function Ge(e,n=JSON.parse){try{return n(sessionStorage[e])}catch{}}function xe(e,n,t=JSON.stringify){const a=t(n);try{sessionStorage[e]=a}catch{}}const $=[];function jt(e,n){return{subscribe:oe(e,n).subscribe}}function oe(e,n=M){let t;const a=new Set;function r(s){if(ut(e,s)&&(e=s,t)){const c=!$.length;for(const l of a)l[1](),$.push(l,e);if(c){for(let l=0;l<$.length;l+=2)$[l][0]($[l+1]);$.length=0}}}function o(s){r(s(e))}function i(s,c=M){const l=[s,c];return a.add(l),a.size===1&&(t=n(r,o)||M),s(e),()=>{a.delete(l),a.size===0&&t&&(t(),t=null)}}return{set:r,update:o,subscribe:i}}function un(e,n,t){const a=!Array.isArray(e),r=a?[e]:e;if(!r.every(Boolean))throw new Error("derived() expects stores as input, got a falsy value");const o=n.length<2;return jt(t,(i,s)=>{let c=!1;const l=[];let u=0,h=M;const p=()=>{if(u)return;h();const g=n(a?l[0]:l,i,s);o?i(g):h=pt(g)?g:M},d=r.map((g,f)=>dt(g,_=>{l[f]=_,u&=~(1<<f),c&&p()},()=>{u|=1<<f}));return c=!0,p(),function(){ht(d),h(),c=!1}})}var Fe;const P=((Fe=globalThis.__sveltekit_zfz5iw)==null?void 0:Fe.base)??"/kings-past";var qe;const $t=((qe=globalThis.__sveltekit_zfz5iw)==null?void 0:qe.assets)??P,Dt="1737457845154",He="sveltekit:snapshot",Be="sveltekit:scroll",be="sveltekit:states",Ke="sveltekit:pageurl",O="sveltekit:history",V="sveltekit:navigation",J={tap:1,hover:2,viewport:3,eager:4,off:-1,false:-1},Y=location.origin;function Ee(e){if(e instanceof URL)return e;let n=document.baseURI;if(!n){const t=document.getElementsByTagName("base");n=t.length?t[0].href:document.URL}return new URL(e,n)}function ke(){return{x:pageXOffset,y:pageYOffset}}function D(e,n){return e.getAttribute(`data-sveltekit-${n}`)}const Ne={...J,"":J.hover};function Ye(e){let n=e.assignedSlot??e.parentNode;return(n==null?void 0:n.nodeType)===11&&(n=n.host),n}function We(e,n){for(;e&&e!==n;){if(e.nodeName.toUpperCase()==="A"&&e.hasAttribute("href"))return e;e=Ye(e)}}function me(e,n){let t;try{t=new URL(e instanceof SVGAElement?e.href.baseVal:e.href,document.baseURI)}catch{}const a=e instanceof SVGAElement?e.target.baseVal:e.target,r=!t||!!a||se(t,n)||(e.getAttribute("rel")||"").split(/\s+/).includes("external"),o=(t==null?void 0:t.origin)===Y&&e.hasAttribute("download");return{url:t,external:r,target:a,download:o}}function X(e){let n=null,t=null,a=null,r=null,o=null,i=null,s=e;for(;s&&s!==document.documentElement;)a===null&&(a=D(s,"preload-code")),r===null&&(r=D(s,"preload-data")),n===null&&(n=D(s,"keepfocus")),t===null&&(t=D(s,"noscroll")),o===null&&(o=D(s,"reload")),i===null&&(i=D(s,"replacestate")),s=Ye(s);function c(l){switch(l){case"":case"true":return!0;case"off":case"false":return!1;default:return}}return{preload_code:Ne[a??"off"],preload_data:Ne[r??"off"],keepfocus:c(n),noscroll:c(t),reload:c(o),replace_state:c(i)}}function Oe(e){const n=oe(e);let t=!0;function a(){t=!0,n.update(i=>i)}function r(i){t=!1,n.set(i)}function o(i){let s;return n.subscribe(c=>{(s===void 0||t&&c!==s)&&i(s=c)})}return{notify:a,set:r,subscribe:o}}function Ct(){const{set:e,subscribe:n}=oe(!1);let t;async function a(){clearTimeout(t);try{const r=await fetch(`${$t}/_app/version.json`,{headers:{pragma:"no-cache","cache-control":"no-cache"}});if(!r.ok)return!1;const i=(await r.json()).version!==Dt;return i&&(e(!0),clearTimeout(t)),i}catch{return!1}}return{subscribe:n,check:a}}function se(e,n){return e.origin!==Y||!e.pathname.startsWith(n)}const Vt=-1,Ft=-2,qt=-3,zt=-4,Mt=-5,Gt=-6;function Ht(e,n){if(typeof e=="number")return r(e,!0);if(!Array.isArray(e)||e.length===0)throw new Error("Invalid input");const t=e,a=Array(t.length);function r(o,i=!1){if(o===Vt)return;if(o===qt)return NaN;if(o===zt)return 1/0;if(o===Mt)return-1/0;if(o===Gt)return-0;if(i)throw new Error("Invalid input");if(o in a)return a[o];const s=t[o];if(!s||typeof s!="object")a[o]=s;else if(Array.isArray(s))if(typeof s[0]=="string"){const c=s[0],l=n==null?void 0:n[c];if(l)return a[o]=l(r(s[1]));switch(c){case"Date":a[o]=new Date(s[1]);break;case"Set":const u=new Set;a[o]=u;for(let d=1;d<s.length;d+=1)u.add(r(s[d]));break;case"Map":const h=new Map;a[o]=h;for(let d=1;d<s.length;d+=2)h.set(r(s[d]),r(s[d+1]));break;case"RegExp":a[o]=new RegExp(s[1],s[2]);break;case"Object":a[o]=Object(s[1]);break;case"BigInt":a[o]=BigInt(s[1]);break;case"null":const p=Object.create(null);a[o]=p;for(let d=1;d<s.length;d+=2)p[s[d]]=r(s[d+1]);break;default:throw new Error(`Unknown type ${c}`)}}else{const c=new Array(s.length);a[o]=c;for(let l=0;l<s.length;l+=1){const u=s[l];u!==Ft&&(c[l]=r(u))}}else{const c={};a[o]=c;for(const l in s){const u=s[l];c[l]=r(u)}}return a[o]}return r(0)}const Je=new Set(["load","prerender","csr","ssr","trailingSlash","config"]);[...Je];const Bt=new Set([...Je]);[...Bt];function Kt(e){return e.filter(n=>n!=null)}const Yt="x-sveltekit-invalidated",Wt="x-sveltekit-trailing-slash";function Z(e){return e instanceof re||e instanceof we?e.status:500}function Jt(e){return e instanceof we?e.text:"Internal Error"}const j=Ge(Be)??{},B=Ge(He)??{},U={url:Oe({}),page:Oe({}),navigating:oe(null),updated:Ct()};function ie(e){j[e]=ke()}function Xe(e,n){let t=e+1;for(;j[t];)delete j[t],t+=1;for(t=n+1;B[t];)delete B[t],t+=1}function F(e){return location.href=e.href,new Promise(()=>{})}function je(){}let ce,_e,Q,T,ye,q;const Ze=[],ee=[];let L=null;const Qe=[],Xt=[];let N=[],y={branch:[],error:null,url:null},Se=!1,te=!1,$e=!0,K=!1,z=!1,Ae=!1,Re=!1,le,E,R,A,ne;const H=new Set;async function dn(e,n,t){var r,o;document.URL!==location.href&&(location.href=location.href),q=e,ce=Ot(e),T=document.documentElement,ye=n,_e=e.nodes[0],Q=e.nodes[1],_e(),Q(),E=(r=history.state)==null?void 0:r[O],R=(o=history.state)==null?void 0:o[V],E||(E=R=Date.now(),history.replaceState({...history.state,[O]:E,[V]:R},""));const a=j[E];a&&(history.scrollRestoration="manual",scrollTo(a.x,a.y)),t?await sn(ye,t):rn(location.href,{replaceState:!0}),on()}function Zt(){Ze.length=0,Re=!1}function et(e){ee.some(n=>n==null?void 0:n.snapshot)&&(B[e]=ee.map(n=>{var t;return(t=n==null?void 0:n.snapshot)==null?void 0:t.capture()}))}function tt(e){var n;(n=B[e])==null||n.forEach((t,a)=>{var r,o;(o=(r=ee[a])==null?void 0:r.snapshot)==null||o.restore(t)})}function De(){ie(E),xe(Be,j),et(R),xe(He,B)}async function nt(e,n,t,a){return W({type:"goto",url:Ee(e),keepfocus:n.keepFocus,noscroll:n.noScroll,replace_state:n.replaceState,state:n.state,redirect_count:t,nav_token:a,accept:()=>{n.invalidateAll&&(Re=!0)}})}async function Qt(e){if(e.id!==(L==null?void 0:L.id)){const n={};H.add(n),L={id:e.id,token:n,promise:rt({...e,preload:n}).then(t=>(H.delete(n),t.type==="loaded"&&t.state.error&&(L=null),t))}}return L.promise}async function ge(e){const n=ce.find(t=>t.exec(ot(e)));n&&await Promise.all([...n.layouts,n.leaf].map(t=>t==null?void 0:t[1]()))}function at(e,n){var r;y=e.state;const t=document.querySelector("style[data-sveltekit]");t&&t.remove(),A=e.props.page,le=new q.root({target:n,props:{...e.props,stores:U,components:ee},hydrate:!0}),tt(R);const a={from:null,to:{params:y.params,route:{id:((r=y.route)==null?void 0:r.id)??null},url:new URL(location.href)},willUnload:!1,type:"enter",complete:Promise.resolve()};N.forEach(o=>o(a)),te=!0}async function ae({url:e,params:n,branch:t,status:a,error:r,route:o,form:i}){let s="never";if(P&&(e.pathname===P||e.pathname===P+"/"))s="always";else for(const d of t)(d==null?void 0:d.slash)!==void 0&&(s=d.slash);e.pathname=_t(e.pathname,s),e.search=e.search;const c={type:"loaded",state:{url:e,params:n,branch:t,error:r,route:o},props:{constructors:Kt(t).map(d=>d.node.component),page:A}};i!==void 0&&(c.props.form=i);let l={},u=!A,h=0;for(let d=0;d<Math.max(t.length,y.branch.length);d+=1){const g=t[d],f=y.branch[d];(g==null?void 0:g.data)!==(f==null?void 0:f.data)&&(u=!0),g&&(l={...l,...g.data},u&&(c.props[`data_${h}`]=l),h+=1)}return(!y.url||e.href!==y.url.href||y.error!==r||i!==void 0&&i!==A.form||u)&&(c.props.page={error:r,params:n,route:{id:(o==null?void 0:o.id)??null},state:{},status:a,url:new URL(e),form:i??null,data:u?l:A.data}),c}async function Ie({loader:e,parent:n,url:t,params:a,route:r,server_data_node:o}){var u,h,p;let i=null,s=!0;const c={dependencies:new Set,params:new Set,parent:!1,route:!1,url:!1,search_params:new Set},l=await e();if((u=l.universal)!=null&&u.load){let d=function(...f){for(const _ of f){const{href:b}=new URL(_,t);c.dependencies.add(b)}};const g={route:new Proxy(r,{get:(f,_)=>(s&&(c.route=!0),f[_])}),params:new Proxy(a,{get:(f,_)=>(s&&c.params.add(_),f[_])}),data:(o==null?void 0:o.data)??null,url:bt(t,()=>{s&&(c.url=!0)},f=>{s&&c.search_params.add(f)}),async fetch(f,_){let b;f instanceof Request?(b=f.url,_={body:f.method==="GET"||f.method==="HEAD"?void 0:await f.blob(),cache:f.cache,credentials:f.credentials,headers:f.headers,integrity:f.integrity,keepalive:f.keepalive,method:f.method,mode:f.mode,redirect:f.redirect,referrer:f.referrer,referrerPolicy:f.referrerPolicy,signal:f.signal,..._}):b=f;const I=new URL(b,t);return s&&d(I.href),I.origin===t.origin&&(b=I.href.slice(t.origin.length)),te?Lt(b,I.href,_):It(b,_)},setHeaders:()=>{},depends:d,parent(){return s&&(c.parent=!0),n()},untrack(f){s=!1;try{return f()}finally{s=!0}}};i=await l.universal.load.call(null,g)??null}return{node:l,loader:e,server:o,universal:(h=l.universal)!=null&&h.load?{type:"data",data:i,uses:c}:null,data:i??(o==null?void 0:o.data)??null,slash:((p=l.universal)==null?void 0:p.trailingSlash)??(o==null?void 0:o.slash)}}function Ce(e,n,t,a,r,o){if(Re)return!0;if(!r)return!1;if(r.parent&&e||r.route&&n||r.url&&t)return!0;for(const i of r.search_params)if(a.has(i))return!0;for(const i of r.params)if(o[i]!==y.params[i])return!0;for(const i of r.dependencies)if(Ze.some(s=>s(new URL(i))))return!0;return!1}function Le(e,n){return(e==null?void 0:e.type)==="data"?e:(e==null?void 0:e.type)==="skip"?n??null:null}function en(e,n){if(!e)return new Set(n.searchParams.keys());const t=new Set([...e.searchParams.keys(),...n.searchParams.keys()]);for(const a of t){const r=e.searchParams.getAll(a),o=n.searchParams.getAll(a);r.every(i=>o.includes(i))&&o.every(i=>r.includes(i))&&t.delete(a)}return t}function Ve({error:e,url:n,route:t,params:a}){return{type:"loaded",state:{error:e,url:n,route:t,params:a,branch:[]},props:{page:A,constructors:[]}}}async function rt({id:e,invalidating:n,url:t,params:a,route:r,preload:o}){if((L==null?void 0:L.id)===e)return H.delete(L.token),L.promise;const{errors:i,layouts:s,leaf:c}=r,l=[...s,c];i.forEach(m=>m==null?void 0:m().catch(()=>{})),l.forEach(m=>m==null?void 0:m[1]().catch(()=>{}));let u=null;const h=y.url?e!==y.url.pathname+y.url.search:!1,p=y.route?r.id!==y.route.id:!1,d=en(y.url,t);let g=!1;const f=l.map((m,v)=>{var x;const k=y.branch[v],S=!!(m!=null&&m[0])&&((k==null?void 0:k.loader)!==m[1]||Ce(g,p,h,d,(x=k.server)==null?void 0:x.uses,a));return S&&(g=!0),S});if(f.some(Boolean)){try{u=await ct(t,f)}catch(m){const v=await C(m,{url:t,params:a,route:{id:e}});return H.has(o)?Ve({error:v,url:t,params:a,route:r}):fe({status:Z(m),error:v,url:t,route:r})}if(u.type==="redirect")return u}const _=u==null?void 0:u.nodes;let b=!1;const I=l.map(async(m,v)=>{var ue;if(!m)return;const k=y.branch[v],S=_==null?void 0:_[v];if((!S||S.type==="skip")&&m[1]===(k==null?void 0:k.loader)&&!Ce(b,p,h,d,(ue=k.universal)==null?void 0:ue.uses,a))return k;if(b=!0,(S==null?void 0:S.type)==="error")throw S;return Ie({loader:m[1],url:t,params:a,route:r,parent:async()=>{var Ue;const Te={};for(let de=0;de<v;de+=1)Object.assign(Te,(Ue=await I[de])==null?void 0:Ue.data);return Te},server_data_node:Le(S===void 0&&m[0]?{type:"skip"}:S??null,m[0]?k==null?void 0:k.server:void 0)})});for(const m of I)m.catch(()=>{});const w=[];for(let m=0;m<l.length;m+=1)if(l[m])try{w.push(await I[m])}catch(v){if(v instanceof ze)return{type:"redirect",location:v.location};if(H.has(o))return Ve({error:await C(v,{params:a,url:t,route:{id:r.id}}),url:t,params:a,route:r});let k=Z(v),S;if(_!=null&&_.includes(v))k=v.status??k,S=v.error;else if(v instanceof re)S=v.body;else{if(await U.updated.check())return await F(t);S=await C(v,{params:a,url:t,route:{id:r.id}})}const x=await tn(m,w,i);return x?await ae({url:t,params:a,branch:w.slice(0,x.idx).concat(x.node),status:k,error:S,route:r}):await it(t,{id:r.id},S,k)}else w.push(void 0);return await ae({url:t,params:a,branch:w,status:200,error:null,route:r,form:n?void 0:null})}async function tn(e,n,t){for(;e--;)if(t[e]){let a=e;for(;!n[a];)a-=1;try{return{idx:a+1,node:{node:await t[e](),loader:t[e],data:{},server:null,universal:null}}}catch{continue}}}async function fe({status:e,error:n,url:t,route:a}){const r={};let o=null;if(q.server_loads[0]===0)try{const l=await ct(t,[!0]);if(l.type!=="data"||l.nodes[0]&&l.nodes[0].type!=="data")throw 0;o=l.nodes[0]??null}catch{(t.origin!==Y||t.pathname!==location.pathname||Se)&&await F(t)}const s=await Ie({loader:_e,url:t,params:r,route:a,parent:()=>Promise.resolve({}),server_data_node:Le(o)}),c={node:await Q(),loader:Q,universal:null,server:null,data:null};return await ae({url:t,params:r,branch:[s,c],status:e,error:n,route:null})}function Pe(e,n){if(!e||se(e,P))return;let t;try{t=q.hooks.reroute({url:new URL(e)})??e.pathname}catch{return}const a=ot(t);for(const r of ce){const o=r.exec(a);if(o)return{id:e.pathname+e.search,invalidating:n,route:r,params:wt(o),url:e}}}function ot(e){return yt(e.slice(P.length)||"/")}function st({url:e,type:n,intent:t,delta:a}){let r=!1;const o=ft(y,t,e,n);a!==void 0&&(o.navigation.delta=a);const i={...o.navigation,cancel:()=>{r=!0,o.reject(new Error("navigation cancelled"))}};return K||Qe.forEach(s=>s(i)),r?null:o}async function W({type:e,url:n,popped:t,keepfocus:a,noscroll:r,replace_state:o,state:i={},redirect_count:s=0,nav_token:c={},accept:l=je,block:u=je}){const h=Pe(n,!1),p=st({url:n,type:e,delta:t==null?void 0:t.delta,intent:h});if(!p){u();return}const d=E,g=R;l(),K=!0,te&&U.navigating.set(p.navigation),ne=c;let f=h&&await rt(h);if(!f){if(se(n,P))return await F(n);f=await it(n,{id:null},await C(new we(404,"Not Found",`Not found: ${n.pathname}`),{url:n,params:{},route:{id:null}}),404)}if(n=(h==null?void 0:h.url)||n,ne!==c)return p.reject(new Error("navigation aborted")),!1;if(f.type==="redirect")if(s>=20)f=await fe({status:500,error:await C(new Error("Redirect loop"),{url:n,params:{},route:{id:null}}),url:n,route:{id:null}});else return nt(new URL(f.location,n).href,{},s+1,c),!1;else f.props.page.status>=400&&await U.updated.check()&&await F(n);if(Zt(),ie(d),et(g),f.props.page.url.pathname!==n.pathname&&(n.pathname=f.props.page.url.pathname),i=t?t.state:i,!t){const w=o?0:1,m={[O]:E+=w,[V]:R+=w,[be]:i};(o?history.replaceState:history.pushState).call(history,m,"",n),o||Xe(E,R)}if(L=null,f.props.page.state=i,te){y=f.state,f.props.page&&(f.props.page.url=n);const w=(await Promise.all(Xt.map(m=>m(p.navigation)))).filter(m=>typeof m=="function");if(w.length>0){let m=function(){N=N.filter(v=>!w.includes(v))};w.push(m),N.push(...w)}le.$set(f.props),Ae=!0}else at(f,ye);const{activeElement:_}=document;await gt();const b=t?t.scroll:r?ke():null;if($e){const w=n.hash&&document.getElementById(decodeURIComponent(n.hash.slice(1)));b?scrollTo(b.x,b.y):w?w.scrollIntoView():scrollTo(0,0)}const I=document.activeElement!==_&&document.activeElement!==document.body;!a&&!I&&cn(),$e=!0,f.props.page&&(A=f.props.page),K=!1,e==="popstate"&&tt(R),p.fulfil(void 0),N.forEach(w=>w(p.navigation)),U.navigating.set(null)}async function it(e,n,t,a){return e.origin===Y&&e.pathname===location.pathname&&!Se?await fe({status:a,error:t,url:e,route:n}):await F(e)}function nn(){let e;T.addEventListener("mousemove",o=>{const i=o.target;clearTimeout(e),e=setTimeout(()=>{a(i,2)},20)});function n(o){a(o.composedPath()[0],1)}T.addEventListener("mousedown",n),T.addEventListener("touchstart",n,{passive:!0});const t=new IntersectionObserver(o=>{for(const i of o)i.isIntersecting&&(ge(i.target.href),t.unobserve(i.target))},{threshold:0});function a(o,i){const s=We(o,T);if(!s)return;const{url:c,external:l,download:u}=me(s,P);if(l||u)return;const h=X(s);if(!h.reload)if(i<=h.preload_data){const p=Pe(c,!1);p&&Qt(p)}else i<=h.preload_code&&ge(c.pathname)}function r(){t.disconnect();for(const o of T.querySelectorAll("a")){const{url:i,external:s,download:c}=me(o,P);if(s||c)continue;const l=X(o);l.reload||(l.preload_code===J.viewport&&t.observe(o),l.preload_code===J.eager&&ge(i.pathname))}}N.push(r),r()}function C(e,n){if(e instanceof re)return e.body;const t=Z(e),a=Jt(e);return q.hooks.handleError({error:e,event:n,status:t,message:a})??{message:a}}function an(e,n){mt(()=>(e.push(n),()=>{const t=e.indexOf(n);e.splice(t,1)}))}function hn(e){an(N,e)}function rn(e,n={}){return e=Ee(e),e.origin!==Y?Promise.reject(new Error("goto: invalid URL")):nt(e,n,0)}function pn(e,n){ie(E);const t={[O]:E+=1,[V]:R,[Ke]:A.url.href,[be]:n};history.pushState(t,"",Ee(e)),Ae=!0,A={...A,state:n},le.$set({page:A}),Xe(E,R)}function on(){var n;history.scrollRestoration="manual",addEventListener("beforeunload",t=>{let a=!1;if(De(),!K){const r=ft(y,void 0,null,"leave"),o={...r.navigation,cancel:()=>{a=!0,r.reject(new Error("navigation cancelled"))}};Qe.forEach(i=>i(o))}a?(t.preventDefault(),t.returnValue=""):history.scrollRestoration="auto"}),addEventListener("visibilitychange",()=>{document.visibilityState==="hidden"&&De()}),(n=navigator.connection)!=null&&n.saveData||nn(),T.addEventListener("click",t=>{var p;if(t.button||t.which!==1||t.metaKey||t.ctrlKey||t.shiftKey||t.altKey||t.defaultPrevented)return;const a=We(t.composedPath()[0],T);if(!a)return;const{url:r,external:o,target:i,download:s}=me(a,P);if(!r)return;if(i==="_parent"||i==="_top"){if(window.parent!==window)return}else if(i&&i!=="_self")return;const c=X(a);if(!(a instanceof SVGAElement)&&r.protocol!==location.protocol&&!(r.protocol==="https:"||r.protocol==="http:")||s)return;if(o||c.reload){st({url:r,type:"link"})?K=!0:t.preventDefault();return}const[u,h]=r.href.split("#");if(h!==void 0&&u===he(location)){const[,d]=y.url.href.split("#");if(d===h){t.preventDefault(),h===""||h==="top"&&a.ownerDocument.getElementById("top")===null?window.scrollTo({top:0}):(p=a.ownerDocument.getElementById(h))==null||p.scrollIntoView();return}if(z=!0,ie(E),e(r),!c.replace_state)return;z=!1}t.preventDefault(),W({type:"link",url:r,keepfocus:c.keepfocus,noscroll:c.noscroll,replace_state:c.replace_state??r.href===location.href})}),T.addEventListener("submit",t=>{if(t.defaultPrevented)return;const a=HTMLFormElement.prototype.cloneNode.call(t.target),r=t.submitter;if(((r==null?void 0:r.formMethod)||a.method)!=="get")return;const i=new URL((r==null?void 0:r.hasAttribute("formaction"))&&(r==null?void 0:r.formAction)||a.action);if(se(i,P))return;const s=t.target,c=X(s);if(c.reload)return;t.preventDefault(),t.stopPropagation();const l=new FormData(s),u=r==null?void 0:r.getAttribute("name");u&&l.append(u,(r==null?void 0:r.getAttribute("value"))??""),i.search=new URLSearchParams(l).toString(),W({type:"form",url:i,keepfocus:c.keepfocus,noscroll:c.noscroll,replace_state:c.replace_state??i.href===location.href})}),addEventListener("popstate",async t=>{var a;if((a=t.state)!=null&&a[O]){const r=t.state[O];if(ne={},r===E)return;const o=j[r],i=t.state[be]??{},s=new URL(t.state[Ke]??location.href),c=t.state[V],l=he(location)===he(y.url);if(c===R&&(Ae||l)){e(s),j[E]=ke(),o&&scrollTo(o.x,o.y),i!==A.state&&(A={...A,state:i},le.$set({page:A})),E=r;return}const h=r-E;await W({type:"popstate",url:s,popped:{state:i,scroll:o,delta:h},accept:()=>{E=r,R=c},block:()=>{history.go(-h)},nav_token:ne})}else if(!z){const r=new URL(location.href);e(r)}}),addEventListener("hashchange",()=>{z&&(z=!1,history.replaceState({...history.state,[O]:++E,[V]:R},"",location.href))});for(const t of document.querySelectorAll("link"))t.rel==="icon"&&(t.href=t.href);addEventListener("pageshow",t=>{t.persisted&&U.navigating.set(null)});function e(t){y.url=t,U.page.set({...A,url:t}),U.page.notify()}}async function sn(e,{status:n=200,error:t,node_ids:a,params:r,route:o,data:i,form:s}){Se=!0;const c=new URL(location.href);({params:r={},route:o={id:null}}=Pe(c,!1)||{});let l;try{const u=a.map(async(d,g)=>{const f=i[g];return f!=null&&f.uses&&(f.uses=lt(f.uses)),Ie({loader:q.nodes[d],url:c,params:r,route:o,parent:async()=>{const _={};for(let b=0;b<g;b+=1)Object.assign(_,(await u[b]).data);return _},server_data_node:Le(f)})}),h=await Promise.all(u),p=ce.find(({id:d})=>d===o.id);if(p){const d=p.layouts;for(let g=0;g<d.length;g++)d[g]||h.splice(g,0,void 0)}l=await ae({url:c,params:r,branch:h,status:n,error:t,form:s,route:p??null})}catch(u){if(u instanceof ze){await F(new URL(u.location,location.href));return}l=await fe({status:Z(u),error:await C(u,{url:c,params:r,route:o}),url:c,route:o})}l.props.page&&(l.props.page.state={}),at(l,e)}async function ct(e,n){var r;const t=new URL(e);t.pathname=St(e.pathname),e.pathname.endsWith("/")&&t.searchParams.append(Wt,"1"),t.searchParams.append(Yt,n.map(o=>o?"1":"0").join(""));const a=await Me(t.href);if(!a.ok){let o;throw(r=a.headers.get("content-type"))!=null&&r.includes("application/json")?o=await a.json():a.status===404?o="Not Found":a.status===500&&(o="Internal Error"),new re(a.status,o)}return new Promise(async o=>{var h;const i=new Map,s=a.body.getReader(),c=new TextDecoder;function l(p){return Ht(p,{Promise:d=>new Promise((g,f)=>{i.set(d,{fulfil:g,reject:f})})})}let u="";for(;;){const{done:p,value:d}=await s.read();if(p&&!u)break;for(u+=!d&&u?`
`:c.decode(d,{stream:!0});;){const g=u.indexOf(`
`);if(g===-1)break;const f=JSON.parse(u.slice(0,g));if(u=u.slice(g+1),f.type==="redirect")return o(f);if(f.type==="data")(h=f.nodes)==null||h.forEach(_=>{(_==null?void 0:_.type)==="data"&&(_.uses=lt(_.uses),_.data=l(_.data))}),o(f);else if(f.type==="chunk"){const{id:_,data:b,error:I}=f,w=i.get(_);i.delete(_),I?w.reject(l(I)):w.fulfil(l(b))}}}})}function lt(e){return{dependencies:new Set((e==null?void 0:e.dependencies)??[]),params:new Set((e==null?void 0:e.params)??[]),parent:!!(e!=null&&e.parent),route:!!(e!=null&&e.route),url:!!(e!=null&&e.url),search_params:new Set((e==null?void 0:e.search_params)??[])}}function cn(){const e=document.querySelector("[autofocus]");if(e)e.focus();else{const n=document.body,t=n.getAttribute("tabindex");n.tabIndex=-1,n.focus({preventScroll:!0,focusVisible:!1}),t!==null?n.setAttribute("tabindex",t):n.removeAttribute("tabindex");const a=getSelection();if(a&&a.type!=="None"){const r=[];for(let o=0;o<a.rangeCount;o+=1)r.push(a.getRangeAt(o));setTimeout(()=>{if(a.rangeCount===r.length){for(let o=0;o<a.rangeCount;o+=1){const i=r[o],s=a.getRangeAt(o);if(i.commonAncestorContainer!==s.commonAncestorContainer||i.startContainer!==s.startContainer||i.endContainer!==s.endContainer||i.startOffset!==s.startOffset||i.endOffset!==s.endOffset)return}a.removeAllRanges()}})}}}function ft(e,n,t,a){var c,l;let r,o;const i=new Promise((u,h)=>{r=u,o=h});return i.catch(()=>{}),{navigation:{from:{params:e.params,route:{id:((c=e.route)==null?void 0:c.id)??null},url:e.url},to:t&&{params:(n==null?void 0:n.params)??null,route:{id:((l=n==null?void 0:n.route)==null?void 0:l.id)??null},url:t},willUnload:!n,type:a,complete:i},fulfil:r,reject:o}}export{hn as a,P as b,dn as c,un as d,rn as g,pn as p,jt as r,U as s,oe as w};
