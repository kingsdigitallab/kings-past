import{s as V,b as p,c as k,t as I,d,f as g,j as w,i as D,g as R,h,k as b,l as U,m as r,n as S,p as z}from"../chunks/scheduler.C3aHL5nM.js";import{e as j}from"../chunks/each.BPs89dqP.js";import{S as B,i as F}from"../chunks/index.B0DoMMHu.js";import{a as C}from"../chunks/config.DNfGVc1F.js";function q(c,t,n){const l=c.slice();return l[5]=t[n],l}function G(c){let t,n,l,_,u=c[5].count+"",o,$,i,A=c[5].title+"",v,E,a,s,f=c[5].description+"",e,x;return{c(){t=p("article"),n=p("header"),l=p("a"),_=p("span"),o=I(u),$=k(),i=p("h2"),v=I(A),E=k(),a=p("div"),s=p("p"),e=I(f),x=k(),this.h()},l(P){t=d(P,"ARTICLE",{class:!0});var m=g(t);n=d(m,"HEADER",{class:!0});var y=g(n);l=d(y,"A",{href:!0,class:!0});var H=g(l);_=d(H,"SPAN",{class:!0});var O=g(_);o=R(O,u),O.forEach(h),$=D(H),i=d(H,"H2",{class:!0});var T=g(i);v=R(T,A),T.forEach(h),H.forEach(h),y.forEach(h),E=D(m),a=d(m,"DIV",{class:!0});var L=g(a);s=d(L,"P",{});var N=g(s);e=R(N,f),N.forEach(h),L.forEach(h),x=D(m),m.forEach(h),this.h()},h(){b(_,"class","svelte-18gamuh"),b(i,"class","svelte-18gamuh"),b(l,"href",c[5].href),b(l,"class","svelte-18gamuh"),b(n,"class","svelte-18gamuh"),b(a,"class","content svelte-18gamuh"),b(t,"class","card svelte-18gamuh")},m(P,m){U(P,t,m),r(t,n),r(n,l),r(l,_),r(_,o),r(l,$),r(l,i),r(i,v),r(t,E),r(t,a),r(a,s),r(s,e),r(t,x)},p:S,d(P){P&&h(t)}}}function J(c){let t,n,l,_="Database",u,o,$=c[0].excerpt+"",i,A,v,E=j(c[1]),a=[];for(let s=0;s<E.length;s+=1)a[s]=G(q(c,E,s));return{c(){t=p("article"),n=p("hgroup"),l=p("h1"),l.textContent=_,u=k(),o=p("p"),i=I($),A=k(),v=p("section");for(let s=0;s<a.length;s+=1)a[s].c();this.h()},l(s){t=d(s,"ARTICLE",{});var f=g(t);n=d(f,"HGROUP",{});var e=g(n);l=d(e,"H1",{"data-svelte-h":!0}),w(l)!=="svelte-1oclo1h"&&(l.textContent=_),u=D(e),o=d(e,"P",{});var x=g(o);i=R(x,$),x.forEach(h),e.forEach(h),A=D(f),v=d(f,"SECTION",{class:!0});var P=g(v);for(let m=0;m<a.length;m+=1)a[m].l(P);P.forEach(h),f.forEach(h),this.h()},h(){b(v,"class","grid svelte-18gamuh")},m(s,f){U(s,t,f),r(t,n),r(n,l),r(n,u),r(n,o),r(o,i),r(t,A),r(t,v);for(let e=0;e<a.length;e+=1)a[e]&&a[e].m(v,null)},p(s,[f]){if(f&2){E=j(s[1]);let e;for(e=0;e<E.length;e+=1){const x=q(s,E,e);a[e]?a[e].p(x,f):(a[e]=G(x),a[e].c(),a[e].m(v,null))}for(;e<a.length;e+=1)a[e].d(1);a.length=E.length}},i:S,o:S,d(s){s&&h(t),z(a,s)}}}function K(c,t,n){let{data:l}=t;const{_metadata:_,stats:u,url:o}=l,$=[{count:u.personCount,title:"People",description:C.people.excerpt,href:`${o}${C.people.href}`},{count:u.organisationCount,title:"Organisations",description:C.organisations.excerpt,href:`${o}${C.organisations.href}`},{count:u.placeCount,title:"Places",description:C.places.excerpt,href:`${o}${C.places.href}`},{count:u.eventCount,title:"Events",description:C.events.excerpt,href:`${o}${C.events.href}`},{count:u.donationCount,title:"Donations",description:C.donations.excerpt,href:`${o}${C.donations.href}`}];return c.$$set=i=>{"data"in i&&n(2,l=i.data)},[_,$,l]}class Y extends B{constructor(t){super(),F(this,t,K,J,V,{data:2})}}export{Y as component};
