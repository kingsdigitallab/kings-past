import{s as y,n as S}from"../chunks/scheduler.DA7SJN9v.js";import{S as $,i as C,s as m,e as p,m as D,n as E,d as u,f as g,c as _,a as L,k as T,o as v,g as f,h,p as x,q as A,r as b,u as w}from"../chunks/index.Cr2jIE7x.js";import{t as B}from"../chunks/config.BoSbMQYZ.js";import{I as H,n as I,l as k,s as q}from"../chunks/tableColumns.Bc-ANrud.js";function M(r){let o,a,n,c="<h1>Organisations</h1>",l,s,i;return document.title="Organisations | "+B,s=new H({props:{data:r[0],columns:r[2],sortBy:r[3],label:N,url:r[1]}}),{c(){o=m(),a=p("article"),n=p("header"),n.innerHTML=c,l=m(),D(s.$$.fragment)},l(t){E("svelte-12rxtxr",document.head).forEach(u),o=g(t),a=_(t,"ARTICLE",{});var d=L(a);n=_(d,"HEADER",{"data-svelte-h":!0}),T(n)!=="svelte-k878az"&&(n.innerHTML=c),l=g(d),v(s.$$.fragment,d),d.forEach(u)},m(t,e){f(t,o,e),f(t,a,e),h(a,n),h(a,l),x(s,a,null),i=!0},p:S,i(t){i||(A(s.$$.fragment,t),i=!0)},o(t){b(s.$$.fragment,t),i=!1},d(t){t&&(u(o),u(a)),w(s)}}}const N="organisations";function O(r,o,a){let{data:n}=o;const{collection:c,url:l,placesBySlug:s}=n,i=[{header:"Slug",accessor:"slug"},I,{header:"Type",accessor:"organisation_type"},k(s),{header:"Founding date",accessor:"founding_date",cell:({value:e})=>e?new Date(e).toLocaleDateString():"N/A",plugins:{sort:{getSortValue(e){return e||""}}}},{header:"Dissolution date",accessor:"dissolution_date",cell:({value:e})=>e?new Date(e).toLocaleDateString():"N/A",plugins:{sort:{getSortValue(e){return e||""}}}},q],t={initialSortKeys:[{id:"name",order:"asc"}]};return r.$$set=e=>{"data"in e&&a(4,n=e.data)},[c,l,i,t,n]}class K extends ${constructor(o){super(),C(this,o,O,M,y,{data:4})}}export{K as component};