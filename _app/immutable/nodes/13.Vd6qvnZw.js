import{s as g,n as $}from"../chunks/scheduler.BmBaUOvj.js";import{S as C,i as E,s as u,e as p,h as v,j as S,f as d,a as f,c as _,k as L,g as b,l as B,d as h,m as y,n as D,t as H,o as T,p as j}from"../chunks/index.zdsk1Fww.js";import{t as x}from"../chunks/config.Bu2z66i5.js";import{E as A,d as I,n as M,l as P,s as R}from"../chunks/tableColumns.CN_Osx7Y.js";function k(r){let s,t,a,c="<h1>Donations</h1>",l,n,i;return document.title="Donations | "+x,n=new A({props:{data:r[0],label:q,columns:r[2],sortBy:r[3],url:r[1]}}),{c(){s=u(),t=p("article"),a=p("header"),a.innerHTML=c,l=u(),v(n.$$.fragment)},l(e){S("svelte-1bmr8bj",document.head).forEach(d),s=f(e),t=_(e,"ARTICLE",{});var m=L(t);a=_(m,"HEADER",{"data-svelte-h":!0}),b(a)!=="svelte-ie4o27"&&(a.innerHTML=c),l=f(m),B(n.$$.fragment,m),m.forEach(d)},m(e,o){h(e,s,o),h(e,t,o),y(t,a),y(t,l),D(n,t,null),i=!0},p:$,i(e){i||(H(n.$$.fragment,e),i=!0)},o(e){T(n.$$.fragment,e),i=!1},d(e){e&&(d(s),d(t)),j(n)}}}const q="donations";function w(r,s,t){let{data:a}=s;const{collection:c,url:l,placesBySlug:n}=a,i=[I,M,P(n),{header:"Price",accessor:"price",cell:({value:o})=>`${o.toLocaleString()}`},{header:"Currency",accessor:"currency"},R],e={initialSortKeys:[{id:"date",order:"asc"}]};return r.$$set=o=>{"data"in o&&t(4,a=o.data)},[c,l,i,e,a]}class J extends C{constructor(s){super(),E(this,s,w,k,g,{data:4})}}export{J as component};