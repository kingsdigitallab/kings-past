import{s as g,n as $}from"../chunks/scheduler.CGxai6gC.js";import{S as C,i as E,s as u,e as p,l as v,m as S,f as d,a as f,c as _,h as L,g as b,n as B,d as h,k as y,o as D,p as H,q as T,r as q}from"../chunks/index.CClN3njN.js";import{t as x}from"../chunks/config.gUoqXaG8.js";import{E as A,d as I,n as M,l as P,s as R}from"../chunks/tableColumns.BuAhsar0.js";function j(r){let o,t,a,m="<h1>Donations</h1>",c,n,i;return document.title="Donations | "+x,n=new A({props:{data:r[0],label:k,columns:r[2],sortBy:r[3],url:r[1]}}),{c(){o=u(),t=p("article"),a=p("header"),a.innerHTML=m,c=u(),v(n.$$.fragment)},l(e){S("svelte-1bmr8bj",document.head).forEach(d),o=f(e),t=_(e,"ARTICLE",{});var l=L(t);a=_(l,"HEADER",{"data-svelte-h":!0}),b(a)!=="svelte-ie4o27"&&(a.innerHTML=m),c=f(l),B(n.$$.fragment,l),l.forEach(d)},m(e,s){h(e,o,s),h(e,t,s),y(t,a),y(t,c),D(n,t,null),i=!0},p:$,i(e){i||(H(n.$$.fragment,e),i=!0)},o(e){T(n.$$.fragment,e),i=!1},d(e){e&&(d(o),d(t)),q(n)}}}const k="donations";function w(r,o,t){let{data:a}=o;const{collection:m,url:c,placesBySlug:n}=a,i=[I,M,P(n),{header:"Price",accessor:"price",cell:({value:s,row:l})=>`${s.toLocaleString()} ${l.original.currency}`},{header:"Currency",accessor:"currency"},R],e={initialSortKeys:[{id:"date",order:"asc"}]};return r.$$set=s=>{"data"in s&&t(4,a=s.data)},[m,c,i,e,a]}class J extends C{constructor(o){super(),E(this,o,w,j,g,{data:4})}}export{J as component};