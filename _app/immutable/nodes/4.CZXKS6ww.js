function __vite__mapDeps(indexes) {
  if (!__vite__mapDeps.viteFileDeps) {
    __vite__mapDeps.viteFileDeps = ["../chunks/index.D9DoVssH.js","../chunks/scheduler.BmBaUOvj.js","../chunks/index.zdsk1Fww.js","../chunks/paths.CiGPaYMq.js","../chunks/index.BzlpMJ87.js","../chunks/index.BUM6xO7E.js","../chunks/index.D9jU8YIQ.js","../chunks/index.B-dzJkqd.js","../chunks/index.CLXuXOaq.js","../chunks/index.BJMoLRph.js","../chunks/index.CfYrCkqQ.js","../chunks/index.D32CE1nD.js","../chunks/index.BKwCAW-1.js","../chunks/index.2O5QHe0s.js","../chunks/index.D-1tjkTX.js","../chunks/index.CcOERV2b.js"]
  }
  return indexes.map((i) => __vite__mapDeps.viteFileDeps[i])
}
import{_ as a}from"../chunks/preload-helper.D6kgxu3v.js";import{_ as E,e as v}from"../chunks/index.DSs-u_x9.js";import{g,a as P,b as O}from"../chunks/moments.C19kxoGw.js";import{s as T,c as A,u as R,g as D,b as I}from"../chunks/scheduler.BmBaUOvj.js";import{S as L,i as y,e as c,s as V,j as b,c as f,f as d,a as x,b as u,m as h,d as M,t as j,o as S}from"../chunks/index.zdsk1Fww.js";async function w({data:i,params:m}){try{const o=await E(Object.assign({"../../../moments/01/index.md":()=>a(()=>import("../chunks/index.D9DoVssH.js").then(t=>t._),__vite__mapDeps([0,1,2,3]),import.meta.url),"../../../moments/02/index.md":()=>a(()=>import("../chunks/index.BzlpMJ87.js").then(t=>t._),__vite__mapDeps([4,1,2]),import.meta.url),"../../../moments/03/index.md":()=>a(()=>import("../chunks/index.BUM6xO7E.js").then(t=>t._),__vite__mapDeps([5,1,2]),import.meta.url),"../../../moments/04/index.md":()=>a(()=>import("../chunks/index.D9jU8YIQ.js").then(t=>t._),__vite__mapDeps([6,1,2]),import.meta.url),"../../../moments/05/index.md":()=>a(()=>import("../chunks/index.B-dzJkqd.js").then(t=>t._),__vite__mapDeps([7,1,2]),import.meta.url),"../../../moments/06/index.md":()=>a(()=>import("../chunks/index.CLXuXOaq.js").then(t=>t._),__vite__mapDeps([8,1,2]),import.meta.url),"../../../moments/07/index.md":()=>a(()=>import("../chunks/index.BJMoLRph.js").then(t=>t._),__vite__mapDeps([9,1,2]),import.meta.url),"../../../moments/08/index.md":()=>a(()=>import("../chunks/index.CfYrCkqQ.js").then(t=>t._),__vite__mapDeps([10,1,2]),import.meta.url),"../../../moments/09/index.md":()=>a(()=>import("../chunks/index.D32CE1nD.js").then(t=>t._),__vite__mapDeps([11,1,2]),import.meta.url),"../../../moments/10/index.md":()=>a(()=>import("../chunks/index.BKwCAW-1.js").then(t=>t._),__vite__mapDeps([12,1,2]),import.meta.url),"../../../moments/11/index.md":()=>a(()=>import("../chunks/index.2O5QHe0s.js").then(t=>t._),__vite__mapDeps([13,1,2]),import.meta.url),"../../../moments/12/index.md":()=>a(()=>import("../chunks/index.D-1tjkTX.js").then(t=>t._),__vite__mapDeps([14,1,2]),import.meta.url),"../../../moments/13/index.md":()=>a(()=>import("../chunks/index.CcOERV2b.js").then(t=>t._),__vite__mapDeps([15,1,2]),import.meta.url)}),`../../../moments/${m.slug}/index.md`),l=await g(),r=await P(m.slug);return{slug:O(o.metadata.n),meta:o.metadata,content:o.default,moments:l,essays:r,momentPeople:i.momentPeople,people:i.people}}catch{v(404,`Could not find ${m.slug}`)}}const B=Object.freeze(Object.defineProperty({__proto__:null,load:w},Symbol.toStringTag,{value:"Module"}));function C(i){let m,o,l,r,t,n;document.title=m=i[0].meta.title;const p=i[2].default,_=A(p,i,i[1],null);return{c(){o=c("meta"),r=c("meta"),t=V(),_&&_.c(),this.h()},l(e){const s=b("svelte-1ppxgni",document.head);o=f(s,"META",{property:!0,content:!0}),r=f(s,"META",{property:!0,content:!0}),s.forEach(d),t=x(e),_&&_.l(e),this.h()},h(){u(o,"property","og:title"),u(o,"content",l=i[0].meta.title),u(r,"property","og:type"),u(r,"content","article")},m(e,s){h(document.head,o),h(document.head,r),M(e,t,s),_&&_.m(e,s),n=!0},p(e,[s]){(!n||s&1)&&m!==(m=e[0].meta.title)&&(document.title=m),(!n||s&1&&l!==(l=e[0].meta.title))&&u(o,"content",l),_&&_.p&&(!n||s&2)&&R(_,p,e,e[1],n?I(p,e[1],s,null):D(e[1]),null)},i(e){n||(j(_,e),n=!0)},o(e){S(_,e),n=!1},d(e){e&&d(t),d(o),d(r),_&&_.d(e)}}}function $(i,m,o){let{$$slots:l={},$$scope:r}=m,{data:t}=m;return i.$$set=n=>{"data"in n&&o(0,t=n.data),"$$scope"in n&&o(1,r=n.$$scope)},[t,r,l]}class F extends L{constructor(m){super(),y(this,m,$,C,T,{data:0})}}export{F as component,B as universal};