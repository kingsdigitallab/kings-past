import{s as q,n as A}from"../chunks/scheduler.BmBaUOvj.js";import{S as F,i as N,e as p,s as C,c as _,k as u,g as D,a as w,f as m,b as x,d as M,m as o,r as j,u as I,v as O}from"../chunks/index.zdsk1Fww.js";import{e as P}from"../chunks/each.Cr1tnusJ.js";function S(d,t,l){const n=d.slice();return n[3]=t[l],n}function y(d){let t,l,n,r,h=d[3].title+"",c,s,e,i,a=d[3].description+"",f,T,v,H="<p>Stats?</p>",b;return{c(){t=p("article"),l=p("a"),n=p("header"),r=p("h2"),c=I(h),s=C(),e=p("article"),i=p("p"),f=I(a),T=C(),v=p("footer"),v.innerHTML=H,b=C(),this.h()},l(E){t=_(E,"ARTICLE",{class:!0});var g=u(t);l=_(g,"A",{href:!0,class:!0});var K=u(l);n=_(K,"HEADER",{});var L=u(n);r=_(L,"H2",{});var R=u(r);c=O(R,h),R.forEach(m),L.forEach(m),K.forEach(m),s=w(g),e=_(g,"ARTICLE",{});var k=u(e);i=_(k,"P",{});var $=u(i);f=O($,a),$.forEach(m),T=w(k),v=_(k,"FOOTER",{class:!0,"data-svelte-h":!0}),D(v)!=="svelte-mkk7t8"&&(v.innerHTML=H),k.forEach(m),b=w(g),g.forEach(m),this.h()},h(){x(l,"href",d[3].href),x(l,"class","svelte-1khm1ew"),x(v,"class","svelte-1khm1ew"),x(t,"class","card svelte-1khm1ew")},m(E,g){M(E,t,g),o(t,l),o(l,n),o(n,r),o(r,c),o(t,s),o(t,e),o(e,i),o(i,f),o(e,T),o(e,v),o(t,b)},p:A,d(E){E&&m(t)}}}function z(d){let t,l,n="Database",r,h,c=P(d[0]),s=[];for(let e=0;e<c.length;e+=1)s[e]=y(S(d,c,e));return{c(){t=p("article"),l=p("h1"),l.textContent=n,r=C(),h=p("section");for(let e=0;e<s.length;e+=1)s[e].c();this.h()},l(e){t=_(e,"ARTICLE",{});var i=u(t);l=_(i,"H1",{"data-svelte-h":!0}),D(l)!=="svelte-1oclo1h"&&(l.textContent=n),r=w(i),h=_(i,"SECTION",{class:!0});var a=u(h);for(let f=0;f<s.length;f+=1)s[f].l(a);a.forEach(m),i.forEach(m),this.h()},h(){x(h,"class","grid svelte-1khm1ew")},m(e,i){M(e,t,i),o(t,l),o(t,r),o(t,h);for(let a=0;a<s.length;a+=1)s[a]&&s[a].m(h,null)},p(e,[i]){if(i&1){c=P(e[0]);let a;for(a=0;a<c.length;a+=1){const f=S(e,c,a);s[a]?s[a].p(f,i):(s[a]=y(f),s[a].c(),s[a].m(h,null))}for(;a<s.length;a+=1)s[a].d(1);s.length=c.length}},i:A,o:A,d(e){e&&m(t),j(s,e)}}}function B(d,t,l){let{data:n}=t;const{url:r}=n,h=[{title:"People",description:"Explore the lives of Kings alumni",href:`${r}/people`},{title:"Organisations",description:"Explore the organisations that Kings has been associated with",href:`${r}/organisations`},{title:"Places",description:"Explore the places associated with Kings",href:`${r}/places`},{title:"Events",description:"Explore the events associated with Kings",href:`${r}/events`},{title:"Donations",description:"Explore the donations made to Kings",href:`${r}/donations`}];return d.$$set=c=>{"data"in c&&l(1,n=c.data)},[h,n]}class U extends F{constructor(t){super(),N(this,t,B,z,q,{data:1})}}export{U as component};
