import{s as y,n as E}from"../chunks/scheduler.CUj-2nE4.js";import{S as A,i as H,e as u,s as I,c as d,a as p,m as S,f as x,d as _,g as b,h as m,o as M,t as O,b as R,n as L,j}from"../chunks/index.DvbDQGDO.js";import{e as k}from"../chunks/each.D6YF6ztN.js";function C(i,e,l){const s=i.slice();return s[1]=e[l],s}function T(i){let e,l,s=i[1].name+"",c,h;return{c(){e=u("li"),l=u("a"),c=O(s),this.h()},l(r){e=d(r,"LI",{});var o=p(e);l=d(o,"A",{href:!0});var t=p(l);c=R(t,s),t.forEach(_),o.forEach(_),this.h()},h(){L(l,"href",h=i[0].url+"/"+i[1].slug)},m(r,o){b(r,e,o),m(e,l),m(l,c)},p(r,o){o&1&&s!==(s=r[1].name+"")&&j(c,s),o&1&&h!==(h=r[0].url+"/"+r[1].slug)&&L(l,"href",h)},d(r){r&&_(e)}}}function q(i){let e,l,s="<h1>Organisations</h1>",c,h,r,o=k(i[0].collection),t=[];for(let n=0;n<o.length;n+=1)t[n]=T(C(i,o,n));return{c(){e=u("article"),l=u("header"),l.innerHTML=s,c=I(),h=u("section"),r=u("ul");for(let n=0;n<t.length;n+=1)t[n].c()},l(n){e=d(n,"ARTICLE",{});var f=p(e);l=d(f,"HEADER",{"data-svelte-h":!0}),S(l)!=="svelte-1m5k4py"&&(l.innerHTML=s),c=x(f),h=d(f,"SECTION",{});var a=p(h);r=d(a,"UL",{});var g=p(r);for(let v=0;v<t.length;v+=1)t[v].l(g);g.forEach(_),a.forEach(_),f.forEach(_)},m(n,f){b(n,e,f),m(e,l),m(e,c),m(e,h),m(h,r);for(let a=0;a<t.length;a+=1)t[a]&&t[a].m(r,null)},p(n,[f]){if(f&1){o=k(n[0].collection);let a;for(a=0;a<o.length;a+=1){const g=C(n,o,a);t[a]?t[a].p(g,f):(t[a]=T(g),t[a].c(),t[a].m(r,null))}for(;a<t.length;a+=1)t[a].d(1);t.length=o.length}},i:E,o:E,d(n){n&&_(e),M(t,n)}}}function D(i,e,l){let{data:s}=e;return i.$$set=c=>{"data"in c&&l(0,s=c.data)},[s]}class w extends A{constructor(e){super(),H(this,e,D,q,y,{data:0})}}export{w as component};
