import{s as S,n as C,f as O}from"../chunks/scheduler.DA7SJN9v.js";import{S as D,i as P,e as v,t as M,s as E,c as p,h as $,j as z,f as _,a as k,g as w,b as m,d as I,k as c,w as X,u as Y,l as R,m as Z,n as V,o as y,p as G,q as K,r as B}from"../chunks/index.Cm8Urp9m.js";import{h as F,t as ee}from"../chunks/config.BoSbMQYZ.js";import{b as x}from"../chunks/paths.BuYDZcyY.js";import{e as J}from"../chunks/each.DmSM6Yu1.js";const te=""+new URL("../assets/hero.DHd9kN9a.jpg",import.meta.url).href;function se(u){let e,t,a,r,i=F.title+"",s,l,n,f=F.message+"",o,d,h,g="<button>Learn more</button>",j,b,U=`<img src="${te}" alt="A drawing ot the King&#39;s College Strand building" class="svelte-lzjkll"/>`;return{c(){e=v("section"),t=v("div"),a=v("h1"),r=v("div"),s=M(i),l=E(),n=v("p"),o=M(f),d=E(),h=v("a"),h.innerHTML=g,j=E(),b=v("picture"),b.innerHTML=U,this.h()},l(T){e=p(T,"SECTION",{class:!0});var H=$(e);t=p(H,"DIV",{class:!0});var L=$(t);a=p(L,"H1",{class:!0});var q=$(a);r=p(q,"DIV",{});var A=$(r);s=z(A,i),A.forEach(_),q.forEach(_),l=k(L),n=p(L,"P",{class:!0});var N=$(n);o=z(N,f),N.forEach(_),d=k(L),h=p(L,"A",{href:!0,"data-svelte-h":!0}),w(h)!=="svelte-4ahjg0"&&(h.innerHTML=g),L.forEach(_),j=k(H),b=p(H,"PICTURE",{class:!0,"data-svelte-h":!0}),w(b)!=="svelte-lgv8l"&&(b.innerHTML=U),H.forEach(_),this.h()},h(){m(a,"class","hero-title svelte-lzjkll"),m(n,"class","hero-message svelte-lzjkll"),m(h,"href",x+"/about"),m(t,"class","hero-welcome svelte-lzjkll"),m(b,"class","hero-img svelte-lzjkll"),m(e,"class","hero svelte-lzjkll")},m(T,H){I(T,e,H),c(e,t),c(t,a),c(a,r),c(r,s),c(t,l),c(t,n),c(n,o),c(t,d),c(t,h),c(e,j),c(e,b)},p:C,i:C,o:C,d(T){T&&_(e)}}}class le extends D{constructor(e){super(),P(this,e,null,se,S,{})}}function Q(u,e,t){const a=u.slice();return a[1]=e[t],a}function W(u){let e,t,a,r,i,s,l,n=u[1].title+"",f,o,d;return{c(){e=v("li"),t=v("a"),a=v("img"),s=E(),l=v("div"),f=M(n),d=E(),this.h()},l(h){e=p(h,"LI",{class:!0});var g=$(e);t=p(g,"A",{href:!0,class:!0});var j=$(t);a=p(j,"IMG",{src:!0,alt:!0,class:!0}),s=k(j),l=p(j,"DIV",{class:!0});var b=$(l);f=z(b,n),b.forEach(_),j.forEach(_),d=k(g),g.forEach(_),this.h()},h(){O(a.src,r=""+(x+u[1].feature.image))||m(a,"src",r),m(a,"alt",i=u[1].feature.description),m(a,"class","svelte-1ibjpeb"),m(l,"class","title svelte-1ibjpeb"),m(t,"href",o="moments/"+u[1].slug),m(t,"class","svelte-1ibjpeb"),m(e,"class","moment svelte-1ibjpeb")},m(h,g){I(h,e,g),c(e,t),c(t,a),c(t,s),c(t,l),c(l,f),c(e,d)},p(h,g){g&1&&!O(a.src,r=""+(x+h[1].feature.image))&&m(a,"src",r),g&1&&i!==(i=h[1].feature.description)&&m(a,"alt",i),g&1&&n!==(n=h[1].title+"")&&Y(f,n),g&1&&o!==(o="moments/"+h[1].slug)&&m(t,"href",o)},d(h){h&&_(e)}}}function ae(u){let e,t,a='<h2>The 13 Moments</h2> <p class="svelte-1ibjpeb">Explore the pivotal moments in King&#39;s College history</p>',r,i,s=J(u[0]),l=[];for(let n=0;n<s.length;n+=1)l[n]=W(Q(u,s,n));return{c(){e=v("section"),t=v("hgroup"),t.innerHTML=a,r=E(),i=v("ul");for(let n=0;n<l.length;n+=1)l[n].c();this.h()},l(n){e=p(n,"SECTION",{id:!0,class:!0});var f=$(e);t=p(f,"HGROUP",{class:!0,"data-svelte-h":!0}),w(t)!=="svelte-4ab9fe"&&(t.innerHTML=a),r=k(f),i=p(f,"UL",{class:!0});var o=$(i);for(let d=0;d<l.length;d+=1)l[d].l(o);o.forEach(_),f.forEach(_),this.h()},h(){m(t,"class","svelte-1ibjpeb"),m(i,"class","moments svelte-1ibjpeb"),m(e,"id","moments"),m(e,"class","svelte-1ibjpeb")},m(n,f){I(n,e,f),c(e,t),c(e,r),c(e,i);for(let o=0;o<l.length;o+=1)l[o]&&l[o].m(i,null)},p(n,[f]){if(f&1){s=J(n[0]);let o;for(o=0;o<s.length;o+=1){const d=Q(n,s,o);l[o]?l[o].p(d,f):(l[o]=W(d),l[o].c(),l[o].m(i,null))}for(;o<l.length;o+=1)l[o].d(1);l.length=s.length}},i:C,o:C,d(n){n&&_(e),X(l,n)}}}function ne(u,e,t){let{moments:a}=e;return u.$$set=r=>{"moments"in r&&t(0,a=r.moments)},[a]}class re extends D{constructor(e){super(),P(this,e,ne,ae,S,{moments:0})}}function oe(u){let e,t,a,r,i;return document.title=ee,t=new le({}),r=new re({props:{moments:u[0].moments}}),{c(){e=E(),R(t.$$.fragment),a=E(),R(r.$$.fragment)},l(s){Z("svelte-fbczdu",document.head).forEach(_),e=k(s),V(t.$$.fragment,s),a=k(s),V(r.$$.fragment,s)},m(s,l){I(s,e,l),y(t,s,l),I(s,a,l),y(r,s,l),i=!0},p(s,[l]){const n={};l&1&&(n.moments=s[0].moments),r.$set(n)},i(s){i||(G(t.$$.fragment,s),G(r.$$.fragment,s),i=!0)},o(s){K(t.$$.fragment,s),K(r.$$.fragment,s),i=!1},d(s){s&&(_(e),_(a)),B(t,s),B(r,s)}}}function ie(u,e,t){let{data:a}=e;return u.$$set=r=>{"data"in r&&t(0,a=r.data)},[a]}class _e extends D{constructor(e){super(),P(this,e,ie,oe,S,{data:0})}}export{_e as component};
