import{s as S,n as k}from"../chunks/scheduler.CUj-2nE4.js";import{S as T,i as j,e as d,s as x,c as p,a as g,m as q,f as C,d as u,n as v,g as R,h as _,o as M,t as y,b as A,j as z}from"../chunks/index.DvbDQGDO.js";import{e as H}from"../chunks/each.D6YF6ztN.js";function I(c,e,s){const n=c.slice();return n[1]=e[s],n}function L(c){let e,s,n,o=c[1].title+"",i,a,l,r=c[1].excerpt+"",t,m;return{c(){e=d("article"),s=d("h2"),n=d("a"),i=y(o),l=x(),t=y(r),m=x(),this.h()},l(f){e=p(f,"ARTICLE",{class:!0});var h=g(e);s=p(h,"H2",{});var E=g(s);n=p(E,"A",{href:!0});var b=g(n);i=A(b,o),b.forEach(u),E.forEach(u),l=C(h),t=A(h,r),m=C(h),h.forEach(u),this.h()},h(){v(n,"href",a="moments/"+c[1].slug),v(e,"class","surface-1 svelte-zbluy6")},m(f,h){R(f,e,h),_(e,s),_(s,n),_(n,i),_(e,l),_(e,t),_(e,m)},p(f,h){h&1&&o!==(o=f[1].title+"")&&z(i,o),h&1&&a!==(a="moments/"+f[1].slug)&&v(n,"href",a),h&1&&r!==(r=f[1].excerpt+"")&&z(t,r)},d(f){f&&u(e)}}}function P(c){let e,s,n="Moments",o,i=H(c[0].moments),a=[];for(let l=0;l<i.length;l+=1)a[l]=L(I(c,i,l));return{c(){e=d("article"),s=d("h1"),s.textContent=n,o=x();for(let l=0;l<a.length;l+=1)a[l].c();this.h()},l(l){e=p(l,"ARTICLE",{class:!0});var r=g(e);s=p(r,"H1",{"data-svelte-h":!0}),q(s)!=="svelte-3dd469"&&(s.textContent=n),o=C(r);for(let t=0;t<a.length;t+=1)a[t].l(r);r.forEach(u),this.h()},h(){v(e,"class","svelte-zbluy6")},m(l,r){R(l,e,r),_(e,s),_(e,o);for(let t=0;t<a.length;t+=1)a[t]&&a[t].m(e,null)},p(l,[r]){if(r&1){i=H(l[0].moments);let t;for(t=0;t<i.length;t+=1){const m=I(l,i,t);a[t]?a[t].p(m,r):(a[t]=L(m),a[t].c(),a[t].m(e,null))}for(;t<a.length;t+=1)a[t].d(1);a.length=i.length}},i:k,o:k,d(l){l&&u(e),M(a,l)}}}function w(c,e,s){let{data:n}=e;return c.$$set=o=>{"data"in o&&s(0,n=o.data)},[n]}class G extends T{constructor(e){super(),j(this,e,w,P,S,{data:0})}}export{G as component};
