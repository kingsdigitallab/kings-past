import{s as E,n as S}from"../chunks/scheduler.DA7SJN9v.js";import{S as $,i as C,s as u,e as p,l as D,m as L,f as m,a as _,c as g,h as T,g as v,n as x,d as f,k as h,o as H,p as b,q as w,r as A}from"../chunks/index.9O6q6bi6.js";import{t as B,E as y}from"../chunks/config.gUoqXaG8.js";import{I,n as M,l as O,s as P}from"../chunks/tableColumns.DVvBQM2E.js";function R(r){let o,a,n,c="<h1>Organisations</h1>",i,s,l;return document.title="Organisations | "+B,s=new I({props:{data:r[0],columns:r[2],sortBy:r[3],label:k,url:r[1]}}),{c(){o=u(),a=p("article"),n=p("header"),n.innerHTML=c,i=u(),D(s.$$.fragment)},l(t){L("svelte-12rxtxr",document.head).forEach(m),o=_(t),a=g(t,"ARTICLE",{});var d=T(a);n=g(d,"HEADER",{"data-svelte-h":!0}),v(n)!=="svelte-k878az"&&(n.innerHTML=c),i=_(d),x(s.$$.fragment,d),d.forEach(m)},m(t,e){f(t,o,e),f(t,a,e),h(a,n),h(a,i),H(s,a,null),l=!0},p:S,i(t){l||(b(s.$$.fragment,t),l=!0)},o(t){w(s.$$.fragment,t),l=!1},d(t){t&&(m(o),m(a)),A(s)}}}const k="organisations";function q(r,o,a){let{data:n}=o;const{collection:c,url:i,placesBySlug:s}=n,l=[{header:"Slug",accessor:"slug"},M,{header:"Type",accessor:"organisation_type"},O(s),{header:"Founding date",accessor:"founding_date",cell:({value:e})=>e?new Date(e).toLocaleDateString():y,plugins:{sort:{getSortValue(e){return e||""}}}},{header:"Dissolution date",accessor:"dissolution_date",cell:({value:e})=>e?new Date(e).toLocaleDateString():y,plugins:{sort:{getSortValue(e){return e||""}}}},P],t={initialSortKeys:[{id:"name",order:"asc"}]};return r.$$set=e=>{"data"in e&&a(4,n=e.data)},[c,i,l,t,n]}class Y extends ${constructor(o){super(),C(this,o,q,R,E,{data:4})}}export{Y as component};
