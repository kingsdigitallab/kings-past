import{s as v,n as E}from"../chunks/scheduler.BmBaUOvj.js";import{S as g,i as $,s as u,e as p,h as C,j as S,f as d,a as f,c as _,k as T,g as x,l as B,d as h,m as y,n as H,t as L,o as b,p as A}from"../chunks/index.zdsk1Fww.js";import{t as I}from"../chunks/config.gUoqXaG8.js";import{E as M,d as R,n as j,l as k,s as q}from"../chunks/tableColumns.BLDnQYj5.js";function w(o){let s,t,a,c="<h1>Events</h1>",i,n,r;return document.title="Events | "+I,n=new M({props:{data:o[0],label:D,columns:o[2],sortBy:o[3],url:o[1]}}),{c(){s=u(),t=p("article"),a=p("header"),a.innerHTML=c,i=u(),C(n.$$.fragment)},l(e){S("svelte-1slbr6r",document.head).forEach(d),s=f(e),t=_(e,"ARTICLE",{});var m=T(t);a=_(m,"HEADER",{"data-svelte-h":!0}),x(a)!=="svelte-1to0tx3"&&(a.innerHTML=c),i=f(m),B(n.$$.fragment,m),m.forEach(d)},m(e,l){h(e,s,l),h(e,t,l),y(t,a),y(t,i),H(n,t,null),r=!0},p:E,i(e){r||(L(n.$$.fragment,e),r=!0)},o(e){b(n.$$.fragment,e),r=!1},d(e){e&&(d(s),d(t)),A(n)}}}const D="events";function K(o,s,t){let{data:a}=s;const{collection:c,url:i,placesBySlug:n}=a,r=[R,j,{header:"Type",accessor:"event_type"},k(n),q],e={initialSortKeys:[{id:"date",order:"asc"}]};return o.$$set=l=>{"data"in l&&t(4,a=l.data)},[c,i,r,e,a]}class J extends g{constructor(s){super(),$(this,s,K,w,v,{data:4})}}export{J as component};
