function __vite__mapDeps(indexes) {
  if (!__vite__mapDeps.viteFileDeps) {
    __vite__mapDeps.viteFileDeps = ["../chunks/index.CfB4KkmJ.js","../chunks/scheduler.C-RPny90.js","../chunks/index.DWihsbUc.js","../chunks/paths.C9Y5xP5J.js","../chunks/index.CutYBhCJ.js","../chunks/index.eegTxPCU.js","../chunks/index.D-txFEkV.js","../chunks/index.DKyg1czQ.js","../chunks/index.Bn5D6cc1.js","../chunks/index.CQ_2o6pw.js","../chunks/index.DMecLnIu.js","../chunks/index.BSc-3Fh0.js","../chunks/index.BcNNloYg.js","../chunks/index.BHymB-6W.js","../chunks/index.DmZ_9b6o.js","../chunks/index.D5Wrx_Rk.js"]
  }
  return indexes.map((i) => __vite__mapDeps.viteFileDeps[i])
}
import{_ as a}from"../chunks/preload-helper.D6kgxu3v.js";import{_ as E,e as v}from"../chunks/index.DSs-u_x9.js";import{g,a as P,b as O}from"../chunks/moments.D9Vv596w.js";import{s as T,b as A,u as R,g as D,d as I}from"../chunks/scheduler.C-RPny90.js";import{S as L,i as y,e as c,s as V,n as b,c as f,d as u,f as x,l as d,h,g as M,q as S,r as j}from"../chunks/index.DWihsbUc.js";async function w({data:i,params:m}){try{const o=await E(Object.assign({"../../../moments/01/index.md":()=>a(()=>import("../chunks/index.CfB4KkmJ.js").then(t=>t._),__vite__mapDeps([0,1,2,3]),import.meta.url),"../../../moments/02/index.md":()=>a(()=>import("../chunks/index.CutYBhCJ.js").then(t=>t._),__vite__mapDeps([4,1,2]),import.meta.url),"../../../moments/03/index.md":()=>a(()=>import("../chunks/index.eegTxPCU.js").then(t=>t._),__vite__mapDeps([5,1,2]),import.meta.url),"../../../moments/04/index.md":()=>a(()=>import("../chunks/index.D-txFEkV.js").then(t=>t._),__vite__mapDeps([6,1,2]),import.meta.url),"../../../moments/05/index.md":()=>a(()=>import("../chunks/index.DKyg1czQ.js").then(t=>t._),__vite__mapDeps([7,1,2]),import.meta.url),"../../../moments/06/index.md":()=>a(()=>import("../chunks/index.Bn5D6cc1.js").then(t=>t._),__vite__mapDeps([8,1,2]),import.meta.url),"../../../moments/07/index.md":()=>a(()=>import("../chunks/index.CQ_2o6pw.js").then(t=>t._),__vite__mapDeps([9,1,2]),import.meta.url),"../../../moments/08/index.md":()=>a(()=>import("../chunks/index.DMecLnIu.js").then(t=>t._),__vite__mapDeps([10,1,2]),import.meta.url),"../../../moments/09/index.md":()=>a(()=>import("../chunks/index.BSc-3Fh0.js").then(t=>t._),__vite__mapDeps([11,1,2]),import.meta.url),"../../../moments/10/index.md":()=>a(()=>import("../chunks/index.BcNNloYg.js").then(t=>t._),__vite__mapDeps([12,1,2]),import.meta.url),"../../../moments/11/index.md":()=>a(()=>import("../chunks/index.BHymB-6W.js").then(t=>t._),__vite__mapDeps([13,1,2]),import.meta.url),"../../../moments/12/index.md":()=>a(()=>import("../chunks/index.DmZ_9b6o.js").then(t=>t._),__vite__mapDeps([14,1,2]),import.meta.url),"../../../moments/13/index.md":()=>a(()=>import("../chunks/index.D5Wrx_Rk.js").then(t=>t._),__vite__mapDeps([15,1,2]),import.meta.url)}),`../../../moments/${m.slug}/index.md`),l=await g(),r=await P(m.slug);return{slug:O(o.metadata.n),meta:o.metadata,content:o.default,moments:l,essays:r,momentPeople:i.momentPeople,people:i.people}}catch{v(404,`Could not find ${m.slug}`)}}const B=Object.freeze(Object.defineProperty({__proto__:null,load:w},Symbol.toStringTag,{value:"Module"}));function q(i){let m,o,l,r,t,n;document.title=m=i[0].meta.title;const p=i[2].default,_=A(p,i,i[1],null);return{c(){o=c("meta"),r=c("meta"),t=V(),_&&_.c(),this.h()},l(e){const s=b("svelte-1ppxgni",document.head);o=f(s,"META",{property:!0,content:!0}),r=f(s,"META",{property:!0,content:!0}),s.forEach(u),t=x(e),_&&_.l(e),this.h()},h(){d(o,"property","og:title"),d(o,"content",l=i[0].meta.title),d(r,"property","og:type"),d(r,"content","article")},m(e,s){h(document.head,o),h(document.head,r),M(e,t,s),_&&_.m(e,s),n=!0},p(e,[s]){(!n||s&1)&&m!==(m=e[0].meta.title)&&(document.title=m),(!n||s&1&&l!==(l=e[0].meta.title))&&d(o,"content",l),_&&_.p&&(!n||s&2)&&R(_,p,e,e[1],n?I(p,e[1],s,null):D(e[1]),null)},i(e){n||(S(_,e),n=!0)},o(e){j(_,e),n=!1},d(e){e&&u(t),u(o),u(r),_&&_.d(e)}}}function C(i,m,o){let{$$slots:l={},$$scope:r}=m,{data:t}=m;return i.$$set=n=>{"data"in n&&o(0,t=n.data),"$$scope"in n&&o(1,r=n.$$scope)},[t,r,l]}class F extends L{constructor(m){super(),y(this,m,C,q,T,{data:0})}}export{F as component,B as universal};