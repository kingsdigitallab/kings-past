import{s as k,n as f}from"../chunks/scheduler.CGxai6gC.js";import{S as b,i as g,e as p,t as u,s as y,c as m,h as _,j as v,f as c,a as C,d as E,k as d}from"../chunks/index.CClN3njN.js";function P(o){let e,n=o[0].description+"",i;return{c(){e=p("p"),i=u(n)},l(t){e=m(t,"P",{});var a=_(e);i=v(a,n),a.forEach(c)},m(t,a){E(t,e,a),d(e,i)},p:f,d(t){t&&c(e)}}}function S(o){let e,n,i=o[0].name+"",t,a,s=o[0].description&&P(o);return{c(){e=p("article"),n=p("h1"),t=u(i),a=y(),s&&s.c()},l(r){e=m(r,"ARTICLE",{});var l=_(e);n=m(l,"H1",{});var h=_(n);t=v(h,i),h.forEach(c),a=C(l),s&&s.l(l),l.forEach(c)},m(r,l){E(r,e,l),d(e,n),d(n,t),d(e,a),s&&s.m(e,null)},p(r,[l]){r[0].description&&s.p(r,l)},i:f,o:f,d(r){r&&c(e),s&&s.d()}}}function j(o,e,n){let{data:i}=e;const{donation:t}=i;return o.$$set=a=>{"data"in a&&n(1,i=a.data)},[t,i]}class A extends b{constructor(e){super(),g(this,e,j,S,k,{data:1})}}export{A as component};