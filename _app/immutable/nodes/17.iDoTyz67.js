import{s as E,n as S}from"../chunks/scheduler.CGxai6gC.js";import{S as C,i as $,s as u,e as p,l as D,m as L,f as m,a as _,c as g,h as v,g as T,n as w,d as f,k as h,o as x,p as H,q as A,r as B}from"../chunks/index.CClN3njN.js";import{E as M,n as O,a as P,l as R,s as b}from"../chunks/tableColumns.BuAhsar0.js";import{t as k,E as y}from"../chunks/config.gUoqXaG8.js";function q(r){let o,a,n,c="<h1>Organisations</h1>",l,s,i;return document.title="Organisations | "+k,s=new M({props:{data:r[0],columns:r[2],label:I,sortBy:r[3],url:r[1],view:V}}),{c(){o=u(),a=p("article"),n=p("header"),n.innerHTML=c,l=u(),D(s.$$.fragment)},l(t){L("svelte-12rxtxr",document.head).forEach(m),o=_(t),a=g(t,"ARTICLE",{});var d=v(a);n=g(d,"HEADER",{"data-svelte-h":!0}),T(n)!=="svelte-k878az"&&(n.innerHTML=c),l=_(d),w(s.$$.fragment,d),d.forEach(m)},m(t,e){f(t,o,e),f(t,a,e),h(a,n),h(a,l),x(s,a,null),i=!0},p:S,i(t){i||(H(s.$$.fragment,t),i=!0)},o(t){A(s.$$.fragment,t),i=!1},d(t){t&&(m(o),m(a)),B(s)}}}const I="organisations";let V="table";function z(r,o,a){let{data:n}=o;const{collection:c,url:l,placesBySlug:s}=n,i=[{header:"Slug",accessor:"slug"},O,P,{header:"Type",accessor:"organisation_type"},R(s),{header:"Founding date",accessor:"founding_date",cell:({value:e})=>e?new Date(e).toLocaleDateString():y,plugins:{sort:{getSortValue(e){return e||""}}}},{header:"Dissolution date",accessor:"dissolution_date",cell:({value:e})=>e?new Date(e).toLocaleDateString():y,plugins:{sort:{getSortValue(e){return e||""}}}},b],t={initialSortKeys:[{id:"name",order:"asc"}]};return r.$$set=e=>{"data"in e&&a(4,n=e.data)},[c,l,i,t,n]}class j extends C{constructor(o){super(),$(this,o,z,q,E,{data:4})}}export{j as component};