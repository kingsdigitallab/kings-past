import{s as B,n as M,j as P}from"../chunks/scheduler.BmBaUOvj.js";import{S as F,i as J,e as _,s as I,c as d,h as k,g as K,a as x,f as v,b as i,d as z,k as o,v as N,t as R,j as S,w as T}from"../chunks/index.C_nRBhsY.js";import{e as w}from"../chunks/each.DhGhqZbU.js";import{b as D}from"../chunks/paths.nVqo-_bU.js";function G(n,a,s){const r=n.slice();return r[1]=a[s],r}function V(n){let a,s,r,h,f,l,e,c,t=n[1].title+"",p,A,g,q=n[1].excerpt+"",E,y,j;return{c(){a=_("article"),s=_("a"),r=_("img"),l=I(),e=_("div"),c=_("h2"),p=R(t),A=I(),g=_("p"),E=R(q),j=I(),this.h()},l(m){a=d(m,"ARTICLE",{class:!0});var u=k(a);s=d(u,"A",{href:!0,class:!0});var C=k(s);r=d(C,"IMG",{src:!0,alt:!0,class:!0}),l=x(C),e=d(C,"DIV",{class:!0});var b=k(e);c=d(b,"H2",{class:!0});var H=k(c);p=S(H,t),H.forEach(v),A=x(b),g=d(b,"P",{class:!0});var L=k(g);E=S(L,q),L.forEach(v),b.forEach(v),C.forEach(v),j=x(u),u.forEach(v),this.h()},h(){P(r.src,h=""+(D+n[1].feature.image))||i(r,"src",h),i(r,"alt",f=n[1].feature.description),i(r,"class","svelte-1qy7kdm"),i(c,"class","svelte-1qy7kdm"),i(g,"class","excerpt svelte-1qy7kdm"),i(e,"class","svelte-1qy7kdm"),i(s,"href",y="moments/"+n[1].slug),i(s,"class","svelte-1qy7kdm"),i(a,"class","surface-1 svelte-1qy7kdm")},m(m,u){z(m,a,u),o(a,s),o(s,r),o(s,l),o(s,e),o(e,c),o(c,p),o(e,A),o(e,g),o(g,E),o(a,j)},p(m,u){u&1&&!P(r.src,h=""+(D+m[1].feature.image))&&i(r,"src",h),u&1&&f!==(f=m[1].feature.description)&&i(r,"alt",f),u&1&&t!==(t=m[1].title+"")&&T(p,t),u&1&&q!==(q=m[1].excerpt+"")&&T(E,q),u&1&&y!==(y="moments/"+m[1].slug)&&i(s,"href",y)},d(m){m&&v(a)}}}function O(n){let a,s,r="Moments",h,f=w(n[0].moments),l=[];for(let e=0;e<f.length;e+=1)l[e]=V(G(n,f,e));return{c(){a=_("article"),s=_("h1"),s.textContent=r,h=I();for(let e=0;e<l.length;e+=1)l[e].c();this.h()},l(e){a=d(e,"ARTICLE",{class:!0});var c=k(a);s=d(c,"H1",{"data-svelte-h":!0}),K(s)!=="svelte-3dd469"&&(s.textContent=r),h=x(c);for(let t=0;t<l.length;t+=1)l[t].l(c);c.forEach(v),this.h()},h(){i(a,"class","svelte-1qy7kdm")},m(e,c){z(e,a,c),o(a,s),o(a,h);for(let t=0;t<l.length;t+=1)l[t]&&l[t].m(a,null)},p(e,[c]){if(c&1){f=w(e[0].moments);let t;for(t=0;t<f.length;t+=1){const p=G(e,f,t);l[t]?l[t].p(p,c):(l[t]=V(p),l[t].c(),l[t].m(a,null))}for(;t<l.length;t+=1)l[t].d(1);l.length=f.length}},i:M,o:M,d(e){e&&v(a),N(l,e)}}}function Q(n,a,s){let{data:r}=a;return n.$$set=h=>{"data"in h&&s(0,r=h.data)},[r]}class Z extends F{constructor(a){super(),J(this,a,Q,O,B,{data:0})}}export{Z as component};