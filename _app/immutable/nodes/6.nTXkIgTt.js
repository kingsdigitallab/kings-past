import{s as S,n as C,f as O}from"../chunks/scheduler.DA7SJN9v.js";import{S as D,i as P,e as d,t as M,s as k,c as g,a as b,b as z,d as v,f as H,k as w,l as m,g as I,h as c,w as X,j as Y,m as R,n as Z,o as V,p as y,q as G,r as K,u as B}from"../chunks/index.Cr2jIE7x.js";import{h as F,t as ee}from"../chunks/config.BoSbMQYZ.js";import{b as x}from"../chunks/paths.DXn3blQb.js";import{e as J}from"../chunks/each.7MQDpSuO.js";const te=""+new URL("../assets/hero.DHd9kN9a.jpg",import.meta.url).href;function se(u){let e,t,a,r,i=F.title+"",s,l,n,f=F.message+"",o,_,h,p="<button>Learn more</button>",E,$,U=`<img src="${te}" alt="A drawing ot the King&#39;s College Strand building" class="svelte-lzjkll"/>`;return{c(){e=d("section"),t=d("div"),a=d("h1"),r=d("div"),s=M(i),l=k(),n=d("p"),o=M(f),_=k(),h=d("a"),h.innerHTML=p,E=k(),$=d("picture"),$.innerHTML=U,this.h()},l(j){e=g(j,"SECTION",{class:!0});var L=b(e);t=g(L,"DIV",{class:!0});var T=b(t);a=g(T,"H1",{class:!0});var q=b(a);r=g(q,"DIV",{});var A=b(r);s=z(A,i),A.forEach(v),q.forEach(v),l=H(T),n=g(T,"P",{class:!0});var N=b(n);o=z(N,f),N.forEach(v),_=H(T),h=g(T,"A",{href:!0,"data-svelte-h":!0}),w(h)!=="svelte-4ahjg0"&&(h.innerHTML=p),T.forEach(v),E=H(L),$=g(L,"PICTURE",{class:!0,"data-svelte-h":!0}),w($)!=="svelte-lgv8l"&&($.innerHTML=U),L.forEach(v),this.h()},h(){m(a,"class","hero-title svelte-lzjkll"),m(n,"class","hero-message svelte-lzjkll"),m(h,"href",x+"/about"),m(t,"class","hero-welcome svelte-lzjkll"),m($,"class","hero-img svelte-lzjkll"),m(e,"class","hero svelte-lzjkll")},m(j,L){I(j,e,L),c(e,t),c(t,a),c(a,r),c(r,s),c(t,l),c(t,n),c(n,o),c(t,_),c(t,h),c(e,E),c(e,$)},p:C,i:C,o:C,d(j){j&&v(e)}}}class le extends D{constructor(e){super(),P(this,e,null,se,S,{})}}function Q(u,e,t){const a=u.slice();return a[1]=e[t],a}function W(u){let e,t,a,r,i,s,l,n=u[1].title+"",f,o,_;return{c(){e=d("li"),t=d("a"),a=d("img"),s=k(),l=d("div"),f=M(n),_=k(),this.h()},l(h){e=g(h,"LI",{class:!0});var p=b(e);t=g(p,"A",{href:!0,class:!0});var E=b(t);a=g(E,"IMG",{src:!0,alt:!0,class:!0}),s=H(E),l=g(E,"DIV",{class:!0});var $=b(l);f=z($,n),$.forEach(v),E.forEach(v),_=H(p),p.forEach(v),this.h()},h(){O(a.src,r=""+(x+u[1].feature.image))||m(a,"src",r),m(a,"alt",i=u[1].feature.description),m(a,"class","svelte-sbv09c"),m(l,"class","title svelte-sbv09c"),m(t,"href",o="moments/"+u[1].slug),m(t,"class","svelte-sbv09c"),m(e,"class","moment svelte-sbv09c")},m(h,p){I(h,e,p),c(e,t),c(t,a),c(t,s),c(t,l),c(l,f),c(e,_)},p(h,p){p&1&&!O(a.src,r=""+(x+h[1].feature.image))&&m(a,"src",r),p&1&&i!==(i=h[1].feature.description)&&m(a,"alt",i),p&1&&n!==(n=h[1].title+"")&&Y(f,n),p&1&&o!==(o="moments/"+h[1].slug)&&m(t,"href",o)},d(h){h&&v(e)}}}function ae(u){let e,t,a='<h2>The 13 Moments</h2> <p class="svelte-sbv09c">Explore the pivotal moments in King&#39;s College history</p>',r,i,s=J(u[0]),l=[];for(let n=0;n<s.length;n+=1)l[n]=W(Q(u,s,n));return{c(){e=d("section"),t=d("hgroup"),t.innerHTML=a,r=k(),i=d("ul");for(let n=0;n<l.length;n+=1)l[n].c();this.h()},l(n){e=g(n,"SECTION",{id:!0,class:!0});var f=b(e);t=g(f,"HGROUP",{class:!0,"data-svelte-h":!0}),w(t)!=="svelte-4ab9fe"&&(t.innerHTML=a),r=H(f),i=g(f,"UL",{class:!0});var o=b(i);for(let _=0;_<l.length;_+=1)l[_].l(o);o.forEach(v),f.forEach(v),this.h()},h(){m(t,"class","svelte-sbv09c"),m(i,"class","moments svelte-sbv09c"),m(e,"id","moments"),m(e,"class","svelte-sbv09c")},m(n,f){I(n,e,f),c(e,t),c(e,r),c(e,i);for(let o=0;o<l.length;o+=1)l[o]&&l[o].m(i,null)},p(n,[f]){if(f&1){s=J(n[0]);let o;for(o=0;o<s.length;o+=1){const _=Q(n,s,o);l[o]?l[o].p(_,f):(l[o]=W(_),l[o].c(),l[o].m(i,null))}for(;o<l.length;o+=1)l[o].d(1);l.length=s.length}},i:C,o:C,d(n){n&&v(e),X(l,n)}}}function ne(u,e,t){let{moments:a}=e;return u.$$set=r=>{"moments"in r&&t(0,a=r.moments)},[a]}class re extends D{constructor(e){super(),P(this,e,ne,ae,S,{moments:0})}}function oe(u){let e,t,a,r,i;return document.title=ee,t=new le({}),r=new re({props:{moments:u[0].moments}}),{c(){e=k(),R(t.$$.fragment),a=k(),R(r.$$.fragment)},l(s){Z("svelte-fbczdu",document.head).forEach(v),e=H(s),V(t.$$.fragment,s),a=H(s),V(r.$$.fragment,s)},m(s,l){I(s,e,l),y(t,s,l),I(s,a,l),y(r,s,l),i=!0},p(s,[l]){const n={};l&1&&(n.moments=s[0].moments),r.$set(n)},i(s){i||(G(t.$$.fragment,s),G(r.$$.fragment,s),i=!0)},o(s){K(t.$$.fragment,s),K(r.$$.fragment,s),i=!1},d(s){s&&(v(e),v(a)),B(t,s),B(r,s)}}}function ie(u,e,t){let{data:a}=e;return u.$$set=r=>{"data"in r&&t(0,a=r.data)},[a]}class ve extends D{constructor(e){super(),P(this,e,ie,oe,S,{data:0})}}export{ve as component};
