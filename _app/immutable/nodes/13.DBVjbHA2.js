import{s as S,n as L}from"../chunks/scheduler.CUj-2nE4.js";import{S as q,i as x,e as p,s as y,t as A,c as m,a as v,m as M,f as P,d,b as H,g as I,h as u,o as R,n as C,j}from"../chunks/index.DvbDQGDO.js";import{e as T}from"../chunks/each.D6YF6ztN.js";function b(o,e,a){const s=o.slice();return s[1]=e[a],s}function k(o){let e,a,s=o[1].name+"",i,c;return{c(){e=p("li"),a=p("a"),i=A(s),this.h()},l(r){e=m(r,"LI",{});var h=v(e);a=m(h,"A",{href:!0});var f=v(a);i=H(f,s),f.forEach(d),h.forEach(d),this.h()},h(){C(a,"href",c=o[0].url+"/"+o[1].slug)},m(r,h){I(r,e,h),u(e,a),u(a,i)},p(r,h){h&1&&s!==(s=r[1].name+"")&&j(i,s),h&1&&c!==(c=r[0].url+"/"+r[1].slug)&&C(a,"href",c)},d(r){r&&d(e)}}}function D(o){let e,a,s="<h1>People</h1>",i,c,r,h,f=T(o[0].people),n=[];for(let l=0;l<f.length;l+=1)n[l]=k(b(o,f,l));return{c(){e=p("article"),a=p("header"),a.innerHTML=s,i=y(),c=p("section"),r=p("ul");for(let l=0;l<n.length;l+=1)n[l].c();h=A(`
    people`)},l(l){e=m(l,"ARTICLE",{});var _=v(e);a=m(_,"HEADER",{"data-svelte-h":!0}),M(a)!=="svelte-qh4pt6"&&(a.innerHTML=s),i=P(_),c=m(_,"SECTION",{});var t=v(c);r=m(t,"UL",{});var g=v(r);for(let E=0;E<n.length;E+=1)n[E].l(g);g.forEach(d),h=H(t,`
    people`),t.forEach(d),_.forEach(d)},m(l,_){I(l,e,_),u(e,a),u(e,i),u(e,c),u(c,r);for(let t=0;t<n.length;t+=1)n[t]&&n[t].m(r,null);u(c,h)},p(l,[_]){if(_&1){f=T(l[0].people);let t;for(t=0;t<f.length;t+=1){const g=b(l,f,t);n[t]?n[t].p(g,_):(n[t]=k(g),n[t].c(),n[t].m(r,null))}for(;t<n.length;t+=1)n[t].d(1);n.length=f.length}},i:L,o:L,d(l){l&&d(e),R(n,l)}}}function N(o,e,a){let{data:s}=e;return o.$$set=i=>{"data"in i&&a(0,s=i.data)},[s]}class z extends q{constructor(e){super(),x(this,e,N,D,S,{data:0})}}export{z as component};
