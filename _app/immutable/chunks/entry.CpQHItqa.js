import{t as ot}from"./scheduler.C3S-l-2c.js";import{w as pe}from"./index.SM_z8Ta3.js";import{a as it,b as P}from"./paths.Ckk3ULm4.js";import{H as ne,S as ge,R as je}from"./control.CYgJF_JY.js";new URL("sveltekit-internal://");function st(e,n){return e==="/"||n==="ignore"?e:n==="never"?e.endsWith("/")?e.slice(0,-1):e:n==="always"&&!e.endsWith("/")?e+"/":e}function ct(e){return e.split("%25").map(decodeURI).join("%25")}function lt(e){for(const n in e)e[n]=decodeURIComponent(e[n]);return e}function ce({href:e}){return e.split("#")[0]}const ft=["href","pathname","search","toString","toJSON"];function ut(e,n,t){const r=new URL(e);Object.defineProperty(r,"searchParams",{value:new Proxy(r.searchParams,{get(a,o){if(o==="get"||o==="getAll"||o==="has")return i=>(t(i),a[o](i));n();const s=Reflect.get(a,o);return typeof s=="function"?s.bind(a):s}}),enumerable:!0,configurable:!0});for(const a of ft)Object.defineProperty(r,a,{get(){return n(),e[a]},enumerable:!0,configurable:!0});return r}const dt="/__data.json",ht=".html__data.json";function pt(e){return e.endsWith(".html")?e.replace(/\.html$/,ht):e.replace(/\/$/,"")+dt}function gt(...e){let n=5381;for(const t of e)if(typeof t=="string"){let r=t.length;for(;r;)n=n*33^t.charCodeAt(--r)}else if(ArrayBuffer.isView(t)){const r=new Uint8Array(t.buffer,t.byteOffset,t.byteLength);let a=r.length;for(;a;)n=n*33^r[--a]}else throw new TypeError("value must be a string or TypedArray");return(n>>>0).toString(36)}function mt(e){const n=atob(e),t=new Uint8Array(n.length);for(let r=0;r<n.length;r++)t[r]=n.charCodeAt(r);return t.buffer}const De=window.fetch;window.fetch=(e,n)=>((e instanceof Request?e.method:(n==null?void 0:n.method)||"GET")!=="GET"&&G.delete(me(e)),De(e,n));const G=new Map;function _t(e,n){const t=me(e,n),r=document.querySelector(t);if(r!=null&&r.textContent){let{body:a,...o}=JSON.parse(r.textContent);const s=r.getAttribute("data-ttl");return s&&G.set(t,{body:a,init:o,ttl:1e3*Number(s)}),r.getAttribute("data-b64")!==null&&(a=mt(a)),Promise.resolve(new Response(a,o))}return window.fetch(e,n)}function yt(e,n,t){if(G.size>0){const r=me(e,t),a=G.get(r);if(a){if(performance.now()<a.ttl&&["default","force-cache","only-if-cached",void 0].includes(t==null?void 0:t.cache))return new Response(a.body,a.init);G.delete(r)}}return window.fetch(n,t)}function me(e,n){let r=`script[data-sveltekit-fetched][data-url=${JSON.stringify(e instanceof Request?e.url:e)}]`;if(n!=null&&n.headers||n!=null&&n.body){const a=[];n.headers&&a.push([...new Headers(n.headers)].join(",")),n.body&&(typeof n.body=="string"||ArrayBuffer.isView(n.body))&&a.push(n.body),r+=`[data-hash="${gt(...a)}"]`}return r}const wt=/^(\[)?(\.\.\.)?(\w+)(?:=(\w+))?(\])?$/;function vt(e){const n=[];return{pattern:e==="/"?/^\/$/:new RegExp(`^${Et(e).map(r=>{const a=/^\[\.\.\.(\w+)(?:=(\w+))?\]$/.exec(r);if(a)return n.push({name:a[1],matcher:a[2],optional:!1,rest:!0,chained:!0}),"(?:/(.*))?";const o=/^\[\[(\w+)(?:=(\w+))?\]\]$/.exec(r);if(o)return n.push({name:o[1],matcher:o[2],optional:!0,rest:!1,chained:!0}),"(?:/([^/]+))?";if(!r)return;const s=r.split(/\[(.+?)\](?!\])/);return"/"+s.map((c,f)=>{if(f%2){if(c.startsWith("x+"))return le(String.fromCharCode(parseInt(c.slice(2),16)));if(c.startsWith("u+"))return le(String.fromCharCode(...c.slice(2).split("-").map(l=>parseInt(l,16))));const u=wt.exec(c),[,h,g,d,_]=u;return n.push({name:d,matcher:_,optional:!!h,rest:!!g,chained:g?f===1&&s[0]==="":!1}),g?"(.*?)":h?"([^/]*)?":"([^/]+?)"}return le(c)}).join("")}).join("")}/?$`),params:n}}function bt(e){return!/^\([^)]+\)$/.test(e)}function Et(e){return e.slice(1).split("/").filter(bt)}function kt(e,n,t){const r={},a=e.slice(1),o=a.filter(i=>i!==void 0);let s=0;for(let i=0;i<n.length;i+=1){const c=n[i];let f=a[i-s];if(c.chained&&c.rest&&s&&(f=a.slice(i-s,i+1).filter(u=>u).join("/"),s=0),f===void 0){c.rest&&(r[c.name]="");continue}if(!c.matcher||t[c.matcher](f)){r[c.name]=f;const u=n[i+1],h=a[i+1];u&&!u.rest&&u.optional&&h&&c.chained&&(s=0),!u&&!h&&Object.keys(r).length===o.length&&(s=0);continue}if(c.optional&&c.chained){s++;continue}return}if(!s)return r}function le(e){return e.normalize().replace(/[[\]]/g,"\\$&").replace(/%/g,"%25").replace(/\//g,"%2[Ff]").replace(/\?/g,"%3[Ff]").replace(/#/g,"%23").replace(/[.*+?^${}()|\\]/g,"\\$&")}function St({nodes:e,server_loads:n,dictionary:t,matchers:r}){const a=new Set(n);return Object.entries(t).map(([i,[c,f,u]])=>{const{pattern:h,params:g}=vt(i),d={id:i,exec:_=>{const l=h.exec(_);if(l)return kt(l,g,r)},errors:[1,...u||[]].map(_=>e[_]),layouts:[0,...f||[]].map(s),leaf:o(c)};return d.errors.length=d.layouts.length=Math.max(d.errors.length,d.layouts.length),d});function o(i){const c=i<0;return c&&(i=~i),[c,e[i]]}function s(i){return i===void 0?i:[a.has(i),e[i]]}}function $e(e,n=JSON.parse){try{return n(sessionStorage[e])}catch{}}function Ie(e,n,t=JSON.stringify){const r=t(n);try{sessionStorage[e]=r}catch{}}const At="1729174303449",Ce="sveltekit:snapshot",Ve="sveltekit:scroll",Fe="sveltekit:states",Rt="sveltekit:pageurl",D="sveltekit:history",M="sveltekit:navigation",W={tap:1,hover:2,viewport:3,eager:4,off:-1,false:-1},K=location.origin;function Ge(e){if(e instanceof URL)return e;let n=document.baseURI;if(!n){const t=document.getElementsByTagName("base");n=t.length?t[0].href:document.URL}return new URL(e,n)}function _e(){return{x:pageXOffset,y:pageYOffset}}function O(e,n){return e.getAttribute(`data-sveltekit-${n}`)}const Le={...W,"":W.hover};function He(e){let n=e.assignedSlot??e.parentNode;return(n==null?void 0:n.nodeType)===11&&(n=n.host),n}function Me(e,n){for(;e&&e!==n;){if(e.nodeName.toUpperCase()==="A"&&e.hasAttribute("href"))return e;e=He(e)}}function ue(e,n){let t;try{t=new URL(e instanceof SVGAElement?e.href.baseVal:e.href,document.baseURI)}catch{}const r=e instanceof SVGAElement?e.target.baseVal:e.target,a=!t||!!r||ae(t,n)||(e.getAttribute("rel")||"").split(/\s+/).includes("external"),o=(t==null?void 0:t.origin)===K&&e.hasAttribute("download");return{url:t,external:a,target:r,download:o}}function z(e){let n=null,t=null,r=null,a=null,o=null,s=null,i=e;for(;i&&i!==document.documentElement;)r===null&&(r=O(i,"preload-code")),a===null&&(a=O(i,"preload-data")),n===null&&(n=O(i,"keepfocus")),t===null&&(t=O(i,"noscroll")),o===null&&(o=O(i,"reload")),s===null&&(s=O(i,"replacestate")),i=He(i);function c(f){switch(f){case"":case"true":return!0;case"off":case"false":return!1;default:return}}return{preload_code:Le[r??"off"],preload_data:Le[a??"off"],keepfocus:c(n),noscroll:c(t),reload:c(o),replace_state:c(s)}}function Pe(e){const n=pe(e);let t=!0;function r(){t=!0,n.update(s=>s)}function a(s){t=!1,n.set(s)}function o(s){let i;return n.subscribe(c=>{(i===void 0||t&&c!==i)&&s(i=c)})}return{notify:r,set:a,subscribe:o}}function It(){const{set:e,subscribe:n}=pe(!1);let t;async function r(){clearTimeout(t);try{const a=await fetch(`${it}/_app/version.json`,{headers:{pragma:"no-cache","cache-control":"no-cache"}});if(!a.ok)return!1;const s=(await a.json()).version!==At;return s&&(e(!0),clearTimeout(t)),s}catch{return!1}}return{subscribe:n,check:r}}function ae(e,n){return e.origin!==K||!e.pathname.startsWith(n)}const Lt=-1,Pt=-2,Ut=-3,Tt=-4,xt=-5,Nt=-6;function Ot(e,n){if(typeof e=="number")return a(e,!0);if(!Array.isArray(e)||e.length===0)throw new Error("Invalid input");const t=e,r=Array(t.length);function a(o,s=!1){if(o===Lt)return;if(o===Ut)return NaN;if(o===Tt)return 1/0;if(o===xt)return-1/0;if(o===Nt)return-0;if(s)throw new Error("Invalid input");if(o in r)return r[o];const i=t[o];if(!i||typeof i!="object")r[o]=i;else if(Array.isArray(i))if(typeof i[0]=="string"){const c=i[0],f=n==null?void 0:n[c];if(f)return r[o]=f(a(i[1]));switch(c){case"Date":r[o]=new Date(i[1]);break;case"Set":const u=new Set;r[o]=u;for(let d=1;d<i.length;d+=1)u.add(a(i[d]));break;case"Map":const h=new Map;r[o]=h;for(let d=1;d<i.length;d+=2)h.set(a(i[d]),a(i[d+1]));break;case"RegExp":r[o]=new RegExp(i[1],i[2]);break;case"Object":r[o]=Object(i[1]);break;case"BigInt":r[o]=BigInt(i[1]);break;case"null":const g=Object.create(null);r[o]=g;for(let d=1;d<i.length;d+=2)g[i[d]]=a(i[d+1]);break;default:throw new Error(`Unknown type ${c}`)}}else{const c=new Array(i.length);r[o]=c;for(let f=0;f<i.length;f+=1){const u=i[f];u!==Pt&&(c[f]=a(u))}}else{const c={};r[o]=c;for(const f in i){const u=i[f];c[f]=a(u)}}return r[o]}return a(0)}const qe=new Set(["load","prerender","csr","ssr","trailingSlash","config"]);[...qe];const jt=new Set([...qe]);[...jt];function Dt(e){return e.filter(n=>n!=null)}const $t="x-sveltekit-invalidated",Ct="x-sveltekit-trailing-slash";function J(e){return e instanceof ne||e instanceof ge?e.status:500}function Vt(e){return e instanceof ge?e.text:"Internal Error"}const N=$e(Ve)??{},q=$e(Ce)??{},T={url:Pe({}),page:Pe({}),navigating:pe(null),updated:It()};function ye(e){N[e]=_e()}function Ft(e,n){let t=e+1;for(;N[t];)delete N[t],t+=1;for(t=n+1;q[t];)delete q[t],t+=1}function C(e){return location.href=e.href,new Promise(()=>{})}function Ue(){}let re,de,X,U,he,V;const Be=[],Z=[];let R=null;const Ke=[],Gt=[];let j=[],y={branch:[],error:null,url:null},we=!1,Q=!1,Te=!0,B=!1,F=!1,Ye=!1,ve=!1,be,S,L,I,ee;const H=new Set;async function tn(e,n,t){var a,o;document.URL!==location.href&&(location.href=location.href),V=e,re=St(e),U=document.documentElement,he=n,de=e.nodes[0],X=e.nodes[1],de(),X(),S=(a=history.state)==null?void 0:a[D],L=(o=history.state)==null?void 0:o[M],S||(S=L=Date.now(),history.replaceState({...history.state,[D]:S,[M]:L},""));const r=N[S];r&&(history.scrollRestoration="manual",scrollTo(r.x,r.y)),t?await zt(he,t):Yt(location.href,{replaceState:!0}),Wt()}function Ht(){Be.length=0,ve=!1}function We(e){Z.some(n=>n==null?void 0:n.snapshot)&&(q[e]=Z.map(n=>{var t;return(t=n==null?void 0:n.snapshot)==null?void 0:t.capture()}))}function ze(e){var n;(n=q[e])==null||n.forEach((t,r)=>{var a,o;(o=(a=Z[r])==null?void 0:a.snapshot)==null||o.restore(t)})}function xe(){ye(S),Ie(Ve,N),We(L),Ie(Ce,q)}async function Je(e,n,t,r){return Y({type:"goto",url:Ge(e),keepfocus:n.keepFocus,noscroll:n.noScroll,replace_state:n.replaceState,state:n.state,redirect_count:t,nav_token:r,accept:()=>{n.invalidateAll&&(ve=!0)}})}async function Mt(e){if(e.id!==(R==null?void 0:R.id)){const n={};H.add(n),R={id:e.id,token:n,promise:Ze({...e,preload:n}).then(t=>(H.delete(n),t.type==="loaded"&&t.state.error&&(R=null),t))}}return R.promise}async function fe(e){const n=re.find(t=>t.exec(Qe(e)));n&&await Promise.all([...n.layouts,n.leaf].map(t=>t==null?void 0:t[1]()))}function Xe(e,n){var a;y=e.state;const t=document.querySelector("style[data-sveltekit]");t&&t.remove(),I=e.props.page,be=new V.root({target:n,props:{...e.props,stores:T,components:Z},hydrate:!0}),ze(L);const r={from:null,to:{params:y.params,route:{id:((a=y.route)==null?void 0:a.id)??null},url:new URL(location.href)},willUnload:!1,type:"enter",complete:Promise.resolve()};j.forEach(o=>o(r)),Q=!0}async function te({url:e,params:n,branch:t,status:r,error:a,route:o,form:s}){let i="never";if(P&&(e.pathname===P||e.pathname===P+"/"))i="always";else for(const d of t)(d==null?void 0:d.slash)!==void 0&&(i=d.slash);e.pathname=st(e.pathname,i),e.search=e.search;const c={type:"loaded",state:{url:e,params:n,branch:t,error:a,route:o},props:{constructors:Dt(t).map(d=>d.node.component),page:I}};s!==void 0&&(c.props.form=s);let f={},u=!I,h=0;for(let d=0;d<Math.max(t.length,y.branch.length);d+=1){const _=t[d],l=y.branch[d];(_==null?void 0:_.data)!==(l==null?void 0:l.data)&&(u=!0),_&&(f={...f,..._.data},u&&(c.props[`data_${h}`]=f),h+=1)}return(!y.url||e.href!==y.url.href||y.error!==a||s!==void 0&&s!==I.form||u)&&(c.props.page={error:a,params:n,route:{id:(o==null?void 0:o.id)??null},state:{},status:r,url:new URL(e),form:s??null,data:u?f:I.data}),c}async function Ee({loader:e,parent:n,url:t,params:r,route:a,server_data_node:o}){var u,h,g;let s=null,i=!0;const c={dependencies:new Set,params:new Set,parent:!1,route:!1,url:!1,search_params:new Set},f=await e();if((u=f.universal)!=null&&u.load){let d=function(...l){for(const m of l){const{href:b}=new URL(m,t);c.dependencies.add(b)}};const _={route:new Proxy(a,{get:(l,m)=>(i&&(c.route=!0),l[m])}),params:new Proxy(r,{get:(l,m)=>(i&&c.params.add(m),l[m])}),data:(o==null?void 0:o.data)??null,url:ut(t,()=>{i&&(c.url=!0)},l=>{i&&c.search_params.add(l)}),async fetch(l,m){let b;l instanceof Request?(b=l.url,m={body:l.method==="GET"||l.method==="HEAD"?void 0:await l.blob(),cache:l.cache,credentials:l.credentials,headers:l.headers,integrity:l.integrity,keepalive:l.keepalive,method:l.method,mode:l.mode,redirect:l.redirect,referrer:l.referrer,referrerPolicy:l.referrerPolicy,signal:l.signal,...m}):b=l;const A=new URL(b,t);return i&&d(A.href),A.origin===t.origin&&(b=A.href.slice(t.origin.length)),Q?yt(b,A.href,m):_t(b,m)},setHeaders:()=>{},depends:d,parent(){return i&&(c.parent=!0),n()},untrack(l){i=!1;try{return l()}finally{i=!0}}};s=await f.universal.load.call(null,_)??null}return{node:f,loader:e,server:o,universal:(h=f.universal)!=null&&h.load?{type:"data",data:s,uses:c}:null,data:s??(o==null?void 0:o.data)??null,slash:((g=f.universal)==null?void 0:g.trailingSlash)??(o==null?void 0:o.slash)}}function Ne(e,n,t,r,a,o){if(ve)return!0;if(!a)return!1;if(a.parent&&e||a.route&&n||a.url&&t)return!0;for(const s of a.search_params)if(r.has(s))return!0;for(const s of a.params)if(o[s]!==y.params[s])return!0;for(const s of a.dependencies)if(Be.some(i=>i(new URL(s))))return!0;return!1}function ke(e,n){return(e==null?void 0:e.type)==="data"?e:(e==null?void 0:e.type)==="skip"?n??null:null}function qt(e,n){if(!e)return new Set(n.searchParams.keys());const t=new Set([...e.searchParams.keys(),...n.searchParams.keys()]);for(const r of t){const a=e.searchParams.getAll(r),o=n.searchParams.getAll(r);a.every(s=>o.includes(s))&&o.every(s=>a.includes(s))&&t.delete(r)}return t}function Oe({error:e,url:n,route:t,params:r}){return{type:"loaded",state:{error:e,url:n,route:t,params:r,branch:[]},props:{page:I,constructors:[]}}}async function Ze({id:e,invalidating:n,url:t,params:r,route:a,preload:o}){if((R==null?void 0:R.id)===e)return H.delete(R.token),R.promise;const{errors:s,layouts:i,leaf:c}=a,f=[...i,c];s.forEach(p=>p==null?void 0:p().catch(()=>{})),f.forEach(p=>p==null?void 0:p[1]().catch(()=>{}));let u=null;const h=y.url?e!==y.url.pathname+y.url.search:!1,g=y.route?a.id!==y.route.id:!1,d=qt(y.url,t);let _=!1;const l=f.map((p,v)=>{var x;const E=y.branch[v],k=!!(p!=null&&p[0])&&((E==null?void 0:E.loader)!==p[1]||Ne(_,g,h,d,(x=E.server)==null?void 0:x.uses,r));return k&&(_=!0),k});if(l.some(Boolean)){try{u=await nt(t,l)}catch(p){const v=await $(p,{url:t,params:r,route:{id:e}});return H.has(o)?Oe({error:v,url:t,params:r,route:a}):oe({status:J(p),error:v,url:t,route:a})}if(u.type==="redirect")return u}const m=u==null?void 0:u.nodes;let b=!1;const A=f.map(async(p,v)=>{var ie;if(!p)return;const E=y.branch[v],k=m==null?void 0:m[v];if((!k||k.type==="skip")&&p[1]===(E==null?void 0:E.loader)&&!Ne(b,g,h,d,(ie=E.universal)==null?void 0:ie.uses,r))return E;if(b=!0,(k==null?void 0:k.type)==="error")throw k;return Ee({loader:p[1],url:t,params:r,route:a,parent:async()=>{var Re;const Ae={};for(let se=0;se<v;se+=1)Object.assign(Ae,(Re=await A[se])==null?void 0:Re.data);return Ae},server_data_node:ke(k===void 0&&p[0]?{type:"skip"}:k??null,p[0]?E==null?void 0:E.server:void 0)})});for(const p of A)p.catch(()=>{});const w=[];for(let p=0;p<f.length;p+=1)if(f[p])try{w.push(await A[p])}catch(v){if(v instanceof je)return{type:"redirect",location:v.location};if(H.has(o))return Oe({error:await $(v,{params:r,url:t,route:{id:a.id}}),url:t,params:r,route:a});let E=J(v),k;if(m!=null&&m.includes(v))E=v.status??E,k=v.error;else if(v instanceof ne)k=v.body;else{if(await T.updated.check())return await C(t);k=await $(v,{params:r,url:t,route:{id:a.id}})}const x=await Bt(p,w,s);return x?await te({url:t,params:r,branch:w.slice(0,x.idx).concat(x.node),status:E,error:k,route:a}):await tt(t,{id:a.id},k,E)}else w.push(void 0);return await te({url:t,params:r,branch:w,status:200,error:null,route:a,form:n?void 0:null})}async function Bt(e,n,t){for(;e--;)if(t[e]){let r=e;for(;!n[r];)r-=1;try{return{idx:r+1,node:{node:await t[e](),loader:t[e],data:{},server:null,universal:null}}}catch{continue}}}async function oe({status:e,error:n,url:t,route:r}){const a={};let o=null;if(V.server_loads[0]===0)try{const f=await nt(t,[!0]);if(f.type!=="data"||f.nodes[0]&&f.nodes[0].type!=="data")throw 0;o=f.nodes[0]??null}catch{(t.origin!==K||t.pathname!==location.pathname||we)&&await C(t)}const i=await Ee({loader:de,url:t,params:a,route:r,parent:()=>Promise.resolve({}),server_data_node:ke(o)}),c={node:await X(),loader:X,universal:null,server:null,data:null};return await te({url:t,params:a,branch:[i,c],status:e,error:n,route:null})}function Se(e,n){if(!e||ae(e,P))return;let t;try{t=V.hooks.reroute({url:new URL(e)})??e.pathname}catch{return}const r=Qe(t);for(const a of re){const o=a.exec(r);if(o)return{id:e.pathname+e.search,invalidating:n,route:a,params:lt(o),url:e}}}function Qe(e){return ct(e.slice(P.length)||"/")}function et({url:e,type:n,intent:t,delta:r}){let a=!1;const o=rt(y,t,e,n);r!==void 0&&(o.navigation.delta=r);const s={...o.navigation,cancel:()=>{a=!0,o.reject(new Error("navigation cancelled"))}};return B||Ke.forEach(i=>i(s)),a?null:o}async function Y({type:e,url:n,popped:t,keepfocus:r,noscroll:a,replace_state:o,state:s={},redirect_count:i=0,nav_token:c={},accept:f=Ue,block:u=Ue}){const h=Se(n,!1),g=et({url:n,type:e,delta:t==null?void 0:t.delta,intent:h});if(!g){u();return}const d=S,_=L;f(),B=!0,Q&&T.navigating.set(g.navigation),ee=c;let l=h&&await Ze(h);if(!l){if(ae(n,P))return await C(n);l=await tt(n,{id:null},await $(new ge(404,"Not Found",`Not found: ${n.pathname}`),{url:n,params:{},route:{id:null}}),404)}if(n=(h==null?void 0:h.url)||n,ee!==c)return g.reject(new Error("navigation aborted")),!1;if(l.type==="redirect")if(i>=20)l=await oe({status:500,error:await $(new Error("Redirect loop"),{url:n,params:{},route:{id:null}}),url:n,route:{id:null}});else return Je(new URL(l.location,n).href,{},i+1,c),!1;else l.props.page.status>=400&&await T.updated.check()&&await C(n);if(Ht(),ye(d),We(_),l.props.page.url.pathname!==n.pathname&&(n.pathname=l.props.page.url.pathname),s=t?t.state:s,!t){const w=o?0:1,p={[D]:S+=w,[M]:L+=w,[Fe]:s};(o?history.replaceState:history.pushState).call(history,p,"",n),o||Ft(S,L)}if(R=null,l.props.page.state=s,Q){y=l.state,l.props.page&&(l.props.page.url=n);const w=(await Promise.all(Gt.map(p=>p(g.navigation)))).filter(p=>typeof p=="function");if(w.length>0){let p=function(){j=j.filter(v=>!w.includes(v))};w.push(p),j.push(...w)}be.$set(l.props),Ye=!0}else Xe(l,he);const{activeElement:m}=document;await ot();const b=t?t.scroll:a?_e():null;if(Te){const w=n.hash&&document.getElementById(decodeURIComponent(n.hash.slice(1)));b?scrollTo(b.x,b.y):w?w.scrollIntoView():scrollTo(0,0)}const A=document.activeElement!==m&&document.activeElement!==document.body;!r&&!A&&Jt(),Te=!0,l.props.page&&(I=l.props.page),B=!1,e==="popstate"&&ze(L),g.fulfil(void 0),j.forEach(w=>w(g.navigation)),T.navigating.set(null)}async function tt(e,n,t,r){return e.origin===K&&e.pathname===location.pathname&&!we?await oe({status:r,error:t,url:e,route:n}):await C(e)}function Kt(){let e;U.addEventListener("mousemove",o=>{const s=o.target;clearTimeout(e),e=setTimeout(()=>{r(s,2)},20)});function n(o){r(o.composedPath()[0],1)}U.addEventListener("mousedown",n),U.addEventListener("touchstart",n,{passive:!0});const t=new IntersectionObserver(o=>{for(const s of o)s.isIntersecting&&(fe(s.target.href),t.unobserve(s.target))},{threshold:0});function r(o,s){const i=Me(o,U);if(!i)return;const{url:c,external:f,download:u}=ue(i,P);if(f||u)return;const h=z(i);if(!h.reload)if(s<=h.preload_data){const g=Se(c,!1);g&&Mt(g)}else s<=h.preload_code&&fe(c.pathname)}function a(){t.disconnect();for(const o of U.querySelectorAll("a")){const{url:s,external:i,download:c}=ue(o,P);if(i||c)continue;const f=z(o);f.reload||(f.preload_code===W.viewport&&t.observe(o),f.preload_code===W.eager&&fe(s.pathname))}}j.push(a),a()}function $(e,n){if(e instanceof ne)return e.body;const t=J(e),r=Vt(e);return V.hooks.handleError({error:e,event:n,status:t,message:r})??{message:r}}function Yt(e,n={}){return e=Ge(e),e.origin!==K?Promise.reject(new Error("goto: invalid URL")):Je(e,n,0)}function Wt(){var n;history.scrollRestoration="manual",addEventListener("beforeunload",t=>{let r=!1;if(xe(),!B){const a=rt(y,void 0,null,"leave"),o={...a.navigation,cancel:()=>{r=!0,a.reject(new Error("navigation cancelled"))}};Ke.forEach(s=>s(o))}r?(t.preventDefault(),t.returnValue=""):history.scrollRestoration="auto"}),addEventListener("visibilitychange",()=>{document.visibilityState==="hidden"&&xe()}),(n=navigator.connection)!=null&&n.saveData||Kt(),U.addEventListener("click",t=>{var g;if(t.button||t.which!==1||t.metaKey||t.ctrlKey||t.shiftKey||t.altKey||t.defaultPrevented)return;const r=Me(t.composedPath()[0],U);if(!r)return;const{url:a,external:o,target:s,download:i}=ue(r,P);if(!a)return;if(s==="_parent"||s==="_top"){if(window.parent!==window)return}else if(s&&s!=="_self")return;const c=z(r);if(!(r instanceof SVGAElement)&&a.protocol!==location.protocol&&!(a.protocol==="https:"||a.protocol==="http:")||i)return;if(o||c.reload){et({url:a,type:"link"})?B=!0:t.preventDefault();return}const[u,h]=a.href.split("#");if(h!==void 0&&u===ce(location)){const[,d]=y.url.href.split("#");if(d===h){t.preventDefault(),h===""||h==="top"&&r.ownerDocument.getElementById("top")===null?window.scrollTo({top:0}):(g=r.ownerDocument.getElementById(h))==null||g.scrollIntoView();return}if(F=!0,ye(S),e(a),!c.replace_state)return;F=!1}t.preventDefault(),Y({type:"link",url:a,keepfocus:c.keepfocus,noscroll:c.noscroll,replace_state:c.replace_state??a.href===location.href})}),U.addEventListener("submit",t=>{if(t.defaultPrevented)return;const r=HTMLFormElement.prototype.cloneNode.call(t.target),a=t.submitter;if(((a==null?void 0:a.formMethod)||r.method)!=="get")return;const s=new URL((a==null?void 0:a.hasAttribute("formaction"))&&(a==null?void 0:a.formAction)||r.action);if(ae(s,P))return;const i=t.target,c=z(i);if(c.reload)return;t.preventDefault(),t.stopPropagation();const f=new FormData(i),u=a==null?void 0:a.getAttribute("name");u&&f.append(u,(a==null?void 0:a.getAttribute("value"))??""),s.search=new URLSearchParams(f).toString(),Y({type:"form",url:s,keepfocus:c.keepfocus,noscroll:c.noscroll,replace_state:c.replace_state??s.href===location.href})}),addEventListener("popstate",async t=>{var r;if((r=t.state)!=null&&r[D]){const a=t.state[D];if(ee={},a===S)return;const o=N[a],s=t.state[Fe]??{},i=new URL(t.state[Rt]??location.href),c=t.state[M],f=ce(location)===ce(y.url);if(c===L&&(Ye||f)){e(i),N[S]=_e(),o&&scrollTo(o.x,o.y),s!==I.state&&(I={...I,state:s},be.$set({page:I})),S=a;return}const h=a-S;await Y({type:"popstate",url:i,popped:{state:s,scroll:o,delta:h},accept:()=>{S=a,L=c},block:()=>{history.go(-h)},nav_token:ee})}else if(!F){const a=new URL(location.href);e(a)}}),addEventListener("hashchange",()=>{F&&(F=!1,history.replaceState({...history.state,[D]:++S,[M]:L},"",location.href))});for(const t of document.querySelectorAll("link"))t.rel==="icon"&&(t.href=t.href);addEventListener("pageshow",t=>{t.persisted&&T.navigating.set(null)});function e(t){y.url=t,T.page.set({...I,url:t}),T.page.notify()}}async function zt(e,{status:n=200,error:t,node_ids:r,params:a,route:o,data:s,form:i}){we=!0;const c=new URL(location.href);({params:a={},route:o={id:null}}=Se(c,!1)||{});let f;try{const u=r.map(async(d,_)=>{const l=s[_];return l!=null&&l.uses&&(l.uses=at(l.uses)),Ee({loader:V.nodes[d],url:c,params:a,route:o,parent:async()=>{const m={};for(let b=0;b<_;b+=1)Object.assign(m,(await u[b]).data);return m},server_data_node:ke(l)})}),h=await Promise.all(u),g=re.find(({id:d})=>d===o.id);if(g){const d=g.layouts;for(let _=0;_<d.length;_++)d[_]||h.splice(_,0,void 0)}f=await te({url:c,params:a,branch:h,status:n,error:t,form:i,route:g??null})}catch(u){if(u instanceof je){await C(new URL(u.location,location.href));return}f=await oe({status:J(u),error:await $(u,{url:c,params:a,route:o}),url:c,route:o})}f.props.page&&(f.props.page.state={}),Xe(f,e)}async function nt(e,n){var a;const t=new URL(e);t.pathname=pt(e.pathname),e.pathname.endsWith("/")&&t.searchParams.append(Ct,"1"),t.searchParams.append($t,n.map(o=>o?"1":"0").join(""));const r=await De(t.href);if(!r.ok){let o;throw(a=r.headers.get("content-type"))!=null&&a.includes("application/json")?o=await r.json():r.status===404?o="Not Found":r.status===500&&(o="Internal Error"),new ne(r.status,o)}return new Promise(async o=>{var h;const s=new Map,i=r.body.getReader(),c=new TextDecoder;function f(g){return Ot(g,{Promise:d=>new Promise((_,l)=>{s.set(d,{fulfil:_,reject:l})})})}let u="";for(;;){const{done:g,value:d}=await i.read();if(g&&!u)break;for(u+=!d&&u?`
`:c.decode(d,{stream:!0});;){const _=u.indexOf(`
`);if(_===-1)break;const l=JSON.parse(u.slice(0,_));if(u=u.slice(_+1),l.type==="redirect")return o(l);if(l.type==="data")(h=l.nodes)==null||h.forEach(m=>{(m==null?void 0:m.type)==="data"&&(m.uses=at(m.uses),m.data=f(m.data))}),o(l);else if(l.type==="chunk"){const{id:m,data:b,error:A}=l,w=s.get(m);s.delete(m),A?w.reject(f(A)):w.fulfil(f(b))}}}})}function at(e){return{dependencies:new Set((e==null?void 0:e.dependencies)??[]),params:new Set((e==null?void 0:e.params)??[]),parent:!!(e!=null&&e.parent),route:!!(e!=null&&e.route),url:!!(e!=null&&e.url),search_params:new Set((e==null?void 0:e.search_params)??[])}}function Jt(){const e=document.querySelector("[autofocus]");if(e)e.focus();else{const n=document.body,t=n.getAttribute("tabindex");n.tabIndex=-1,n.focus({preventScroll:!0,focusVisible:!1}),t!==null?n.setAttribute("tabindex",t):n.removeAttribute("tabindex");const r=getSelection();if(r&&r.type!=="None"){const a=[];for(let o=0;o<r.rangeCount;o+=1)a.push(r.getRangeAt(o));setTimeout(()=>{if(r.rangeCount===a.length){for(let o=0;o<r.rangeCount;o+=1){const s=a[o],i=r.getRangeAt(o);if(s.commonAncestorContainer!==i.commonAncestorContainer||s.startContainer!==i.startContainer||s.endContainer!==i.endContainer||s.startOffset!==i.startOffset||s.endOffset!==i.endOffset)return}r.removeAllRanges()}})}}}function rt(e,n,t,r){var c,f;let a,o;const s=new Promise((u,h)=>{a=u,o=h});return s.catch(()=>{}),{navigation:{from:{params:e.params,route:{id:((c=e.route)==null?void 0:c.id)??null},url:e.url},to:t&&{params:(n==null?void 0:n.params)??null,route:{id:((f=n==null?void 0:n.route)==null?void 0:f.id)??null},url:t},willUnload:!n,type:r,complete:s},fulfil:a,reject:o}}export{tn as a,T as s};
