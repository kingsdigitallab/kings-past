import{s as C,n as S}from"../chunks/scheduler.DwN6YR0h.js";import{S as j,i as q,l as w,n as I,o as L,p as N,q as O,r as T,u as $,d as g,f as m,e as p,s as k,c as u,h as d,g as A,a as E,k as h,v as H,t as M,j as P,b as U}from"../chunks/index.CGIb6VRR.js";import{e as v}from"../chunks/each.D-l6fev2.js";import{E as z}from"../chunks/entity.BCGIQLcg.js";function y(r,e,t){const n=r.slice();return n[7]=e[t],n}function B(r){let e,t,n="Members",a,i,c=v(r[4]),o=[];for(let s=0;s<c.length;s+=1)o[s]=b(y(r,c,s));return{c(){e=p("section"),t=p("h2"),t.textContent=n,a=k(),i=p("ul");for(let s=0;s<o.length;s+=1)o[s].c()},l(s){e=u(s,"SECTION",{});var f=d(e);t=u(f,"H2",{"data-svelte-h":!0}),A(t)!=="svelte-1vj8wcn"&&(t.textContent=n),a=E(f),i=u(f,"UL",{});var l=d(i);for(let _=0;_<o.length;_+=1)o[_].l(l);l.forEach(m),f.forEach(m)},m(s,f){g(s,e,f),h(e,t),h(e,a),h(e,i);for(let l=0;l<o.length;l+=1)o[l]&&o[l].m(i,null)},p(s,f){if(f&48){c=v(s[4]);let l;for(l=0;l<c.length;l+=1){const _=y(s,c,l);o[l]?o[l].p(_,f):(o[l]=b(_),o[l].c(),o[l].m(i,null))}for(;l<o.length;l+=1)o[l].d(1);o.length=c.length}},d(s){s&&m(e),H(o,s)}}}function b(r){let e,t,n=r[5][r[7].person].name+"",a,i;return{c(){e=p("li"),t=p("a"),a=M(n),i=k(),this.h()},l(c){e=u(c,"LI",{});var o=d(e);t=u(o,"A",{href:!0});var s=d(t);a=P(s,n),s.forEach(m),i=E(o),o.forEach(m),this.h()},h(){U(t,"href","../people/"+r[7].person)},m(c,o){g(c,e,o),h(e,t),h(t,a),h(e,i)},p:S,d(c){c&&m(e)}}}function D(r){let e,t=r[4]&&r[4].length>0&&B(r);return{c(){t&&t.c(),e=$()},l(n){t&&t.l(n),e=$()},m(n,a){t&&t.m(n,a),g(n,e,a)},p(n,a){n[4]&&n[4].length>0&&t.p(n,a)},d(n){n&&m(e),t&&t.d(n)}}}function F(r){var n;let e,t;return e=new z({props:{entityType:"Organisation",entityName:r[0].name,meta:r[1],description:(n=r[2])==null?void 0:n.code,sources:r[3],$$slots:{default:[D]},$$scope:{ctx:r}}}),{c(){w(e.$$.fragment)},l(a){I(e.$$.fragment,a)},m(a,i){L(e,a,i),t=!0},p(a,[i]){const c={};i&1024&&(c.$$scope={dirty:i,ctx:a}),e.$set(c)},i(a){t||(N(e.$$.fragment,a),t=!0)},o(a){O(e.$$.fragment,a),t=!1},d(a){T(e,a)}}}function G(r,e,t){let{data:n}=e;const{organisation:a,meta:i,description:c,sources:o,members:s,people:f}=n;return r.$$set=l=>{"data"in l&&t(6,n=l.data)},[a,i,c,o,s,f,n]}class V extends j{constructor(e){super(),q(this,e,G,F,C,{data:6})}}export{V as component};
