import{s as D,n as z,d as O}from"../chunks/scheduler.BoPQaJQm.js";import{S as P,i as U,e as v,t as I,s as b,c as g,a as E,b as M,d as _,f as k,k as w,l as m,g as C,h as c,m as X,j as Y,n as R,v as Z,o as V,p as y,q as G,r as K,u as B}from"../chunks/index.DT7edA66.js";import{h as F,t as ee}from"../chunks/config.CjIkcOfR.js";import{b as S}from"../chunks/paths.rEEaNhp9.js";import{e as J}from"../chunks/each.D6YF6ztN.js";const te=""+new URL("../assets/hero.DHd9kN9a.jpg",import.meta.url).href;function se(u){let e,t,a,r,i=F.title+"",s,l,n,f=F.message+"",o,d,h,p="<button>Learn more</button>",x,$,j=`<img src="${te}" alt="A drawing ot the King&#39;s College Strand building" class="svelte-1xo0ilk"/>`;return{c(){e=v("section"),t=v("div"),a=v("h1"),r=v("div"),s=I(i),l=b(),n=v("p"),o=I(f),d=b(),h=v("a"),h.innerHTML=p,x=b(),$=v("picture"),$.innerHTML=j,this.h()},l(T){e=g(T,"SECTION",{class:!0});var H=E(e);t=g(H,"DIV",{class:!0});var L=E(t);a=g(L,"H1",{class:!0});var q=E(a);r=g(q,"DIV",{});var A=E(r);s=M(A,i),A.forEach(_),q.forEach(_),l=k(L),n=g(L,"P",{class:!0});var N=E(n);o=M(N,f),N.forEach(_),d=k(L),h=g(L,"A",{href:!0,"data-svelte-h":!0}),w(h)!=="svelte-4ahjg0"&&(h.innerHTML=p),L.forEach(_),x=k(H),$=g(H,"PICTURE",{class:!0,"data-svelte-h":!0}),w($)!=="svelte-lgv8l"&&($.innerHTML=j),H.forEach(_),this.h()},h(){m(a,"class","hero-title svelte-1xo0ilk"),m(n,"class","hero-message svelte-1xo0ilk"),m(h,"href",S+"/about"),m(t,"class","hero-welcome svelte-1xo0ilk"),m($,"class","hero-img svelte-1xo0ilk"),m(e,"class","hero svelte-1xo0ilk")},m(T,H){C(T,e,H),c(e,t),c(t,a),c(a,r),c(r,s),c(t,l),c(t,n),c(n,o),c(t,d),c(t,h),c(e,x),c(e,$)},p:z,i:z,o:z,d(T){T&&_(e)}}}class le extends P{constructor(e){super(),U(this,e,null,se,D,{})}}function Q(u,e,t){const a=u.slice();return a[1]=e[t],a}function W(u){let e,t,a,r,i,s,l,n=u[1].title+"",f,o,d;return{c(){e=v("li"),t=v("a"),a=v("img"),s=b(),l=v("div"),f=I(n),d=b(),this.h()},l(h){e=g(h,"LI",{class:!0});var p=E(e);t=g(p,"A",{href:!0,class:!0});var x=E(t);a=g(x,"IMG",{src:!0,alt:!0,class:!0}),s=k(x),l=g(x,"DIV",{class:!0});var $=E(l);f=M($,n),$.forEach(_),x.forEach(_),d=k(p),p.forEach(_),this.h()},h(){O(a.src,r=""+(S+u[1].feature.image))||m(a,"src",r),m(a,"alt",i=u[1].feature.description),m(a,"class","svelte-9gu2zs"),m(l,"class","title svelte-9gu2zs"),m(t,"href",o="moments/"+u[1].slug),m(t,"class","svelte-9gu2zs"),m(e,"class","moment svelte-9gu2zs")},m(h,p){C(h,e,p),c(e,t),c(t,a),c(t,s),c(t,l),c(l,f),c(e,d)},p(h,p){p&1&&!O(a.src,r=""+(S+h[1].feature.image))&&m(a,"src",r),p&1&&i!==(i=h[1].feature.description)&&m(a,"alt",i),p&1&&n!==(n=h[1].title+"")&&Y(f,n),p&1&&o!==(o="moments/"+h[1].slug)&&m(t,"href",o)},d(h){h&&_(e)}}}function ae(u){let e,t,a='<h2>The 13 Moments</h2> <p class="svelte-9gu2zs">Explore the pivotal moments in King&#39;s College history</p>',r,i,s=J(u[0]),l=[];for(let n=0;n<s.length;n+=1)l[n]=W(Q(u,s,n));return{c(){e=v("section"),t=v("hgroup"),t.innerHTML=a,r=b(),i=v("ul");for(let n=0;n<l.length;n+=1)l[n].c();this.h()},l(n){e=g(n,"SECTION",{id:!0,class:!0});var f=E(e);t=g(f,"HGROUP",{class:!0,"data-svelte-h":!0}),w(t)!=="svelte-4ab9fe"&&(t.innerHTML=a),r=k(f),i=g(f,"UL",{class:!0});var o=E(i);for(let d=0;d<l.length;d+=1)l[d].l(o);o.forEach(_),f.forEach(_),this.h()},h(){m(t,"class","svelte-9gu2zs"),m(i,"class","moments svelte-9gu2zs"),m(e,"id","moments"),m(e,"class","svelte-9gu2zs")},m(n,f){C(n,e,f),c(e,t),c(e,r),c(e,i);for(let o=0;o<l.length;o+=1)l[o]&&l[o].m(i,null)},p(n,[f]){if(f&1){s=J(n[0]);let o;for(o=0;o<s.length;o+=1){const d=Q(n,s,o);l[o]?l[o].p(d,f):(l[o]=W(d),l[o].c(),l[o].m(i,null))}for(;o<l.length;o+=1)l[o].d(1);l.length=s.length}},i:z,o:z,d(n){n&&_(e),X(l,n)}}}function ne(u,e,t){let{moments:a}=e;return u.$$set=r=>{"moments"in r&&t(0,a=r.moments)},[a]}class re extends P{constructor(e){super(),U(this,e,ne,ae,D,{moments:0})}}function oe(u){let e,t,a,r,i;return document.title=ee,t=new le({}),r=new re({props:{moments:u[0].moments}}),{c(){e=b(),R(t.$$.fragment),a=b(),R(r.$$.fragment)},l(s){Z("svelte-fbczdu",document.head).forEach(_),e=k(s),V(t.$$.fragment,s),a=k(s),V(r.$$.fragment,s)},m(s,l){C(s,e,l),y(t,s,l),C(s,a,l),y(r,s,l),i=!0},p(s,[l]){const n={};l&1&&(n.moments=s[0].moments),r.$set(n)},i(s){i||(G(t.$$.fragment,s),G(r.$$.fragment,s),i=!0)},o(s){K(t.$$.fragment,s),K(r.$$.fragment,s),i=!1},d(s){s&&(_(e),_(a)),B(t,s),B(r,s)}}}function ie(u,e,t){let{data:a}=e;return u.$$set=r=>{"data"in r&&t(0,a=r.data)},[a]}class _e extends P{constructor(e){super(),U(this,e,ie,oe,D,{data:0})}}export{_e as component};
