import{q as B,p as C}from"./index.Cm8Urp9m.js";import{r as D}from"./scheduler.DA7SJN9v.js";function G(n){return(n==null?void 0:n.length)!==void 0?n:Array.from(n)}function H(n,o){B(n,1,1,()=>{o.delete(n.key)})}function I(n,o,q,x,A,g,d,j,y,k,w,z){let i=n.length,f=g.length,c=i;const u={};for(;c--;)u[n[c].key]=c;const h=[],a=new Map,m=new Map,M=[];for(c=f;c--;){const e=z(A,g,c),s=q(e);let t=d.get(s);t?x&&M.push(()=>t.p(e,o)):(t=k(s,e),t.c()),a.set(s,h[c]=t),s in u&&m.set(s,Math.abs(c-u[s]))}const v=new Set,S=new Set;function p(e){C(e,1),e.m(j,w),d.set(e.key,e),w=e.first,f--}for(;i&&f;){const e=h[f-1],s=n[i-1],t=e.key,l=s.key;e===s?(w=e.first,i--,f--):a.has(l)?!d.has(t)||v.has(t)?p(e):S.has(l)?i--:m.get(t)>m.get(l)?(S.add(t),p(e)):(v.add(l),i--):(y(s,d),i--)}for(;i--;){const e=n[i];a.has(e.key)||y(e,d)}for(;f;)p(h[f-1]);return D(M),h}export{G as e,H as o,I as u};
