import{s as y,n as g}from"../chunks/scheduler.C-RPny90.js";import{S as $,i as C,s as u,e as p,m as E,n as T,d,f,c as _,a as b,k as S,o as x,g as h,h as v,p as B,q as H,r as I,u as L}from"../chunks/index.DWihsbUc.js";import{t as q}from"../chunks/config.BoSbMQYZ.js";import{I as A,d as M,n as R,l as k,s as w}from"../chunks/tableColumns.B0jBSaLe.js";function D(o){let s,t,a,c="<h1>Events</h1>",i,n,r;return document.title="Events | "+q,n=new A({props:{data:o[0],label:K,columns:o[2],sortBy:o[3],url:o[1]}}),{c(){s=u(),t=p("article"),a=p("header"),a.innerHTML=c,i=u(),E(n.$$.fragment)},l(e){T("svelte-1slbr6r",document.head).forEach(d),s=f(e),t=_(e,"ARTICLE",{});var m=b(t);a=_(m,"HEADER",{"data-svelte-h":!0}),S(a)!=="svelte-1to0tx3"&&(a.innerHTML=c),i=f(m),x(n.$$.fragment,m),m.forEach(d)},m(e,l){h(e,s,l),h(e,t,l),v(t,a),v(t,i),B(n,t,null),r=!0},p:g,i(e){r||(H(n.$$.fragment,e),r=!0)},o(e){I(n.$$.fragment,e),r=!1},d(e){e&&(d(s),d(t)),L(n)}}}const K="events";function P(o,s,t){let{data:a}=s;const{collection:c,url:i,placesBySlug:n}=a,r=[M,R,{header:"Type",accessor:"event_type"},k(n),w],e={initialSortKeys:[{id:"date",order:"asc"}]};return o.$$set=l=>{"data"in l&&t(4,a=l.data)},[c,i,r,e,a]}class J extends ${constructor(s){super(),C(this,s,P,D,y,{data:4})}}export{J as component};