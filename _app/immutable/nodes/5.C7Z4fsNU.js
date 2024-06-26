import{s as D,n as T,d as R}from"../chunks/scheduler.BoPQaJQm.js";import{S as P,i as U,e as g,t as I,s as x,c as p,a as E,b as M,d as _,f as b,k as w,l as c,g as C,h as i,m as X,j as Y,n as V,v as Z,o as y,p as G,q as K,r as z,u as B}from"../chunks/index.DT7edA66.js";import{h as F,t as ee}from"../chunks/config.CjIkcOfR.js";import{b as S}from"../chunks/paths.w7N3Venw.js";import{e as J}from"../chunks/each.D6YF6ztN.js";const te=""+new URL("../assets/hero.DHd9kN9a.jpg",import.meta.url).href;function se(m){let e,t,o,r,f=F.title+"",s,l,a,h=F.message+"",n,v,u,d="<button>Learn more</button>",k,$,j=`<img src="${te}" alt="A drawing ot the King&#39;s College Strand building" class="svelte-1xo0ilk"/>`;return{c(){e=g("section"),t=g("div"),o=g("h1"),r=g("div"),s=I(f),l=x(),a=g("p"),n=I(h),v=x(),u=g("a"),u.innerHTML=d,k=x(),$=g("picture"),$.innerHTML=j,this.h()},l(L){e=p(L,"SECTION",{class:!0});var q=E(e);t=p(q,"DIV",{class:!0});var H=E(t);o=p(H,"H1",{class:!0});var A=E(o);r=p(A,"DIV",{});var N=E(r);s=M(N,f),N.forEach(_),A.forEach(_),l=b(H),a=p(H,"P",{class:!0});var O=E(a);n=M(O,h),O.forEach(_),v=b(H),u=p(H,"A",{href:!0,"data-svelte-h":!0}),w(u)!=="svelte-4ahjg0"&&(u.innerHTML=d),H.forEach(_),k=b(q),$=p(q,"PICTURE",{class:!0,"data-svelte-h":!0}),w($)!=="svelte-lgv8l"&&($.innerHTML=j),q.forEach(_),this.h()},h(){c(o,"class","hero-title svelte-1xo0ilk"),c(a,"class","hero-message svelte-1xo0ilk"),c(u,"href",S+"/about"),c(t,"class","hero-welcome svelte-1xo0ilk"),c($,"class","hero-img svelte-1xo0ilk"),c(e,"class","hero svelte-1xo0ilk")},m(L,q){C(L,e,q),i(e,t),i(t,o),i(o,r),i(r,s),i(t,l),i(t,a),i(a,n),i(t,v),i(t,u),i(e,k),i(e,$)},p:T,i:T,o:T,d(L){L&&_(e)}}}class le extends P{constructor(e){super(),U(this,e,null,se,D,{})}}function Q(m,e,t){const o=m.slice();return o[1]=e[t],o}function W(m){let e,t,o,r,f,s,l,a=m[1].title+"",h,n,v;return{c(){e=g("li"),t=g("img"),f=x(),s=g("div"),l=g("a"),h=I(a),v=x(),this.h()},l(u){e=p(u,"LI",{class:!0});var d=E(e);t=p(d,"IMG",{src:!0,alt:!0,class:!0}),f=b(d),s=p(d,"DIV",{class:!0});var k=E(s);l=p(k,"A",{href:!0,class:!0});var $=E(l);h=M($,a),$.forEach(_),k.forEach(_),v=b(d),d.forEach(_),this.h()},h(){R(t.src,o=""+(S+m[1].feature.image))||c(t,"src",o),c(t,"alt",r=m[1].feature.description),c(t,"class","svelte-rt0cqf"),c(l,"href",n="moments/"+m[1].slug),c(l,"class","svelte-rt0cqf"),c(s,"class","title svelte-rt0cqf"),c(e,"class","moment svelte-rt0cqf")},m(u,d){C(u,e,d),i(e,t),i(e,f),i(e,s),i(s,l),i(l,h),i(e,v)},p(u,d){d&1&&!R(t.src,o=""+(S+u[1].feature.image))&&c(t,"src",o),d&1&&r!==(r=u[1].feature.description)&&c(t,"alt",r),d&1&&a!==(a=u[1].title+"")&&Y(h,a),d&1&&n!==(n="moments/"+u[1].slug)&&c(l,"href",n)},d(u){u&&_(e)}}}function ae(m){let e,t,o='<h2>The 13 Moments</h2> <p class="svelte-rt0cqf">Explore the pivotal moments in King&#39;s College history</p>',r,f,s=J(m[0]),l=[];for(let a=0;a<s.length;a+=1)l[a]=W(Q(m,s,a));return{c(){e=g("section"),t=g("hgroup"),t.innerHTML=o,r=x(),f=g("ul");for(let a=0;a<l.length;a+=1)l[a].c();this.h()},l(a){e=p(a,"SECTION",{id:!0,class:!0});var h=E(e);t=p(h,"HGROUP",{class:!0,"data-svelte-h":!0}),w(t)!=="svelte-4ab9fe"&&(t.innerHTML=o),r=b(h),f=p(h,"UL",{class:!0});var n=E(f);for(let v=0;v<l.length;v+=1)l[v].l(n);n.forEach(_),h.forEach(_),this.h()},h(){c(t,"class","svelte-rt0cqf"),c(f,"class","moments svelte-rt0cqf"),c(e,"id","moments"),c(e,"class","svelte-rt0cqf")},m(a,h){C(a,e,h),i(e,t),i(e,r),i(e,f);for(let n=0;n<l.length;n+=1)l[n]&&l[n].m(f,null)},p(a,[h]){if(h&1){s=J(a[0]);let n;for(n=0;n<s.length;n+=1){const v=Q(a,s,n);l[n]?l[n].p(v,h):(l[n]=W(v),l[n].c(),l[n].m(f,null))}for(;n<l.length;n+=1)l[n].d(1);l.length=s.length}},i:T,o:T,d(a){a&&_(e),X(l,a)}}}function re(m,e,t){let{moments:o}=e;return m.$$set=r=>{"moments"in r&&t(0,o=r.moments)},[o]}class ne extends P{constructor(e){super(),U(this,e,re,ae,D,{moments:0})}}function oe(m){let e,t,o,r,f;return document.title=ee,t=new le({}),r=new ne({props:{moments:m[0].moments}}),{c(){e=x(),V(t.$$.fragment),o=x(),V(r.$$.fragment)},l(s){Z("svelte-fbczdu",document.head).forEach(_),e=b(s),y(t.$$.fragment,s),o=b(s),y(r.$$.fragment,s)},m(s,l){C(s,e,l),G(t,s,l),C(s,o,l),G(r,s,l),f=!0},p(s,[l]){const a={};l&1&&(a.moments=s[0].moments),r.$set(a)},i(s){f||(K(t.$$.fragment,s),K(r.$$.fragment,s),f=!0)},o(s){z(t.$$.fragment,s),z(r.$$.fragment,s),f=!1},d(s){s&&(_(e),_(o)),B(t,s),B(r,s)}}}function ie(m,e,t){let{data:o}=e;return m.$$set=r=>{"data"in r&&t(0,o=r.data)},[o]}class _e extends P{constructor(e){super(),U(this,e,ie,oe,D,{data:0})}}export{_e as component};
