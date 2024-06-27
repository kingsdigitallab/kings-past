import{s as P,n as C,e as R}from"../chunks/scheduler.DyeQaagj.js";import{S as U,i as j,e as v,t as M,s as x,c as p,a as k,b as w,d as _,f as b,k as S,l as m,g as I,h as c,m as X,j as Y,n as V,w as Z,o as y,p as G,q as K,r as z,u as B}from"../chunks/index.DYZKNNvD.js";import{h as F,t as ee}from"../chunks/config.CjIkcOfR.js";import{b as D}from"../chunks/paths.BGG-wz7E.js";import{e as J}from"../chunks/each.D6YF6ztN.js";const te=""+new URL("../assets/hero.DHd9kN9a.jpg",import.meta.url).href;function se(f){let e,t,a,r,i=F.title+"",s,l,n,h=F.message+"",o,d,u,g="<button>Learn more</button>",E,$,q=`<img src="${te}" alt="A drawing ot the King&#39;s College Strand building" class="svelte-1xo0ilk"/>`;return{c(){e=v("section"),t=v("div"),a=v("h1"),r=v("div"),s=M(i),l=x(),n=v("p"),o=M(h),d=x(),u=v("a"),u.innerHTML=g,E=x(),$=v("picture"),$.innerHTML=q,this.h()},l(T){e=p(T,"SECTION",{class:!0});var H=k(e);t=p(H,"DIV",{class:!0});var L=k(t);a=p(L,"H1",{class:!0});var A=k(a);r=p(A,"DIV",{});var N=k(r);s=w(N,i),N.forEach(_),A.forEach(_),l=b(L),n=p(L,"P",{class:!0});var O=k(n);o=w(O,h),O.forEach(_),d=b(L),u=p(L,"A",{href:!0,"data-svelte-h":!0}),S(u)!=="svelte-4ahjg0"&&(u.innerHTML=g),L.forEach(_),E=b(H),$=p(H,"PICTURE",{class:!0,"data-svelte-h":!0}),S($)!=="svelte-lgv8l"&&($.innerHTML=q),H.forEach(_),this.h()},h(){m(a,"class","hero-title svelte-1xo0ilk"),m(n,"class","hero-message svelte-1xo0ilk"),m(u,"href",D+"/about"),m(t,"class","hero-welcome svelte-1xo0ilk"),m($,"class","hero-img svelte-1xo0ilk"),m(e,"class","hero svelte-1xo0ilk")},m(T,H){I(T,e,H),c(e,t),c(t,a),c(a,r),c(r,s),c(t,l),c(t,n),c(n,o),c(t,d),c(t,u),c(e,E),c(e,$)},p:C,i:C,o:C,d(T){T&&_(e)}}}class le extends U{constructor(e){super(),j(this,e,null,se,P,{})}}function Q(f,e,t){const a=f.slice();return a[1]=e[t],a}function W(f){let e,t,a,r,i,s,l,n=f[1].title+"",h,o,d;return{c(){e=v("li"),t=v("a"),a=v("img"),s=x(),l=v("div"),h=M(n),d=x(),this.h()},l(u){e=p(u,"LI",{class:!0});var g=k(e);t=p(g,"A",{href:!0,class:!0});var E=k(t);a=p(E,"IMG",{src:!0,alt:!0,class:!0}),s=b(E),l=p(E,"DIV",{class:!0});var $=k(l);h=w($,n),$.forEach(_),E.forEach(_),d=b(g),g.forEach(_),this.h()},h(){R(a.src,r=""+(D+f[1].feature.image))||m(a,"src",r),m(a,"alt",i=f[1].feature.description),m(a,"class","svelte-12pf6tk"),m(l,"class","title svelte-12pf6tk"),m(t,"href",o="moments/"+f[1].slug),m(t,"class","svelte-12pf6tk"),m(e,"class","moment svelte-12pf6tk")},m(u,g){I(u,e,g),c(e,t),c(t,a),c(t,s),c(t,l),c(l,h),c(e,d)},p(u,g){g&1&&!R(a.src,r=""+(D+u[1].feature.image))&&m(a,"src",r),g&1&&i!==(i=u[1].feature.description)&&m(a,"alt",i),g&1&&n!==(n=u[1].title+"")&&Y(h,n),g&1&&o!==(o="moments/"+u[1].slug)&&m(t,"href",o)},d(u){u&&_(e)}}}function ae(f){let e,t,a='<h2>The 13 Moments</h2> <p class="svelte-12pf6tk">Explore the pivotal moments in King&#39;s College history</p>',r,i,s=J(f[0]),l=[];for(let n=0;n<s.length;n+=1)l[n]=W(Q(f,s,n));return{c(){e=v("section"),t=v("hgroup"),t.innerHTML=a,r=x(),i=v("ul");for(let n=0;n<l.length;n+=1)l[n].c();this.h()},l(n){e=p(n,"SECTION",{id:!0,class:!0});var h=k(e);t=p(h,"HGROUP",{class:!0,"data-svelte-h":!0}),S(t)!=="svelte-4ab9fe"&&(t.innerHTML=a),r=b(h),i=p(h,"UL",{class:!0});var o=k(i);for(let d=0;d<l.length;d+=1)l[d].l(o);o.forEach(_),h.forEach(_),this.h()},h(){m(t,"class","svelte-12pf6tk"),m(i,"class","moments svelte-12pf6tk"),m(e,"id","moments"),m(e,"class","svelte-12pf6tk")},m(n,h){I(n,e,h),c(e,t),c(e,r),c(e,i);for(let o=0;o<l.length;o+=1)l[o]&&l[o].m(i,null)},p(n,[h]){if(h&1){s=J(n[0]);let o;for(o=0;o<s.length;o+=1){const d=Q(n,s,o);l[o]?l[o].p(d,h):(l[o]=W(d),l[o].c(),l[o].m(i,null))}for(;o<l.length;o+=1)l[o].d(1);l.length=s.length}},i:C,o:C,d(n){n&&_(e),X(l,n)}}}function ne(f,e,t){let{moments:a}=e;return f.$$set=r=>{"moments"in r&&t(0,a=r.moments)},[a]}class re extends U{constructor(e){super(),j(this,e,ne,ae,P,{moments:0})}}function oe(f){let e,t,a,r,i;return document.title=ee,t=new le({}),r=new re({props:{moments:f[0].moments}}),{c(){e=x(),V(t.$$.fragment),a=x(),V(r.$$.fragment)},l(s){Z("svelte-fbczdu",document.head).forEach(_),e=b(s),y(t.$$.fragment,s),a=b(s),y(r.$$.fragment,s)},m(s,l){I(s,e,l),G(t,s,l),I(s,a,l),G(r,s,l),i=!0},p(s,[l]){const n={};l&1&&(n.moments=s[0].moments),r.$set(n)},i(s){i||(K(t.$$.fragment,s),K(r.$$.fragment,s),i=!0)},o(s){z(t.$$.fragment,s),z(r.$$.fragment,s),i=!1},d(s){s&&(_(e),_(a)),B(t,s),B(r,s)}}}function ie(f,e,t){let{data:a}=e;return f.$$set=r=>{"data"in r&&t(0,a=r.data)},[a]}class _e extends U{constructor(e){super(),j(this,e,ie,oe,P,{data:0})}}export{_e as component};
