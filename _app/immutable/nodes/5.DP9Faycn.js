import{s as S,n as j,e as O}from"../chunks/scheduler.DyeQaagj.js";import{S as D,i as P,e as v,t as I,s as E,c as g,a as b,b as M,d as _,f as x,k as z,l as m,g as C,h as c,m as X,j as Y,n as R,w as Z,o as V,p as y,q as G,r as K,u as B}from"../chunks/index.DYZKNNvD.js";import{h as F,t as ee}from"../chunks/config.CjIkcOfR.js";import{b as w}from"../chunks/paths.ImiHYSdg.js";import{e as J}from"../chunks/each.D6YF6ztN.js";const te=""+new URL("../assets/hero.DHd9kN9a.jpg",import.meta.url).href;function se(h){let e,t,a,r,i=F.title+"",s,l,n,f=F.message+"",o,d,u,p="<button>Learn more</button>",k,$,U=`<img src="${te}" alt="A drawing ot the King&#39;s College Strand building" class="svelte-lzjkll"/>`;return{c(){e=v("section"),t=v("div"),a=v("h1"),r=v("div"),s=I(i),l=E(),n=v("p"),o=I(f),d=E(),u=v("a"),u.innerHTML=p,k=E(),$=v("picture"),$.innerHTML=U,this.h()},l(T){e=g(T,"SECTION",{class:!0});var H=b(e);t=g(H,"DIV",{class:!0});var L=b(t);a=g(L,"H1",{class:!0});var q=b(a);r=g(q,"DIV",{});var A=b(r);s=M(A,i),A.forEach(_),q.forEach(_),l=x(L),n=g(L,"P",{class:!0});var N=b(n);o=M(N,f),N.forEach(_),d=x(L),u=g(L,"A",{href:!0,"data-svelte-h":!0}),z(u)!=="svelte-4ahjg0"&&(u.innerHTML=p),L.forEach(_),k=x(H),$=g(H,"PICTURE",{class:!0,"data-svelte-h":!0}),z($)!=="svelte-lgv8l"&&($.innerHTML=U),H.forEach(_),this.h()},h(){m(a,"class","hero-title svelte-lzjkll"),m(n,"class","hero-message svelte-lzjkll"),m(u,"href",w+"/about"),m(t,"class","hero-welcome svelte-lzjkll"),m($,"class","hero-img svelte-lzjkll"),m(e,"class","hero svelte-lzjkll")},m(T,H){C(T,e,H),c(e,t),c(t,a),c(a,r),c(r,s),c(t,l),c(t,n),c(n,o),c(t,d),c(t,u),c(e,k),c(e,$)},p:j,i:j,o:j,d(T){T&&_(e)}}}class le extends D{constructor(e){super(),P(this,e,null,se,S,{})}}function Q(h,e,t){const a=h.slice();return a[1]=e[t],a}function W(h){let e,t,a,r,i,s,l,n=h[1].title+"",f,o,d;return{c(){e=v("li"),t=v("a"),a=v("img"),s=E(),l=v("div"),f=I(n),d=E(),this.h()},l(u){e=g(u,"LI",{class:!0});var p=b(e);t=g(p,"A",{href:!0,class:!0});var k=b(t);a=g(k,"IMG",{src:!0,alt:!0,class:!0}),s=x(k),l=g(k,"DIV",{class:!0});var $=b(l);f=M($,n),$.forEach(_),k.forEach(_),d=x(p),p.forEach(_),this.h()},h(){O(a.src,r=""+(w+h[1].feature.image))||m(a,"src",r),m(a,"alt",i=h[1].feature.description),m(a,"class","svelte-xbkhct"),m(l,"class","title svelte-xbkhct"),m(t,"href",o="moments/"+h[1].slug),m(t,"class","svelte-xbkhct"),m(e,"class","moment svelte-xbkhct")},m(u,p){C(u,e,p),c(e,t),c(t,a),c(t,s),c(t,l),c(l,f),c(e,d)},p(u,p){p&1&&!O(a.src,r=""+(w+u[1].feature.image))&&m(a,"src",r),p&1&&i!==(i=u[1].feature.description)&&m(a,"alt",i),p&1&&n!==(n=u[1].title+"")&&Y(f,n),p&1&&o!==(o="moments/"+u[1].slug)&&m(t,"href",o)},d(u){u&&_(e)}}}function ae(h){let e,t,a='<h2>The 13 Moments</h2> <p class="svelte-xbkhct">Explore the pivotal moments in King&#39;s College history</p>',r,i,s=J(h[0]),l=[];for(let n=0;n<s.length;n+=1)l[n]=W(Q(h,s,n));return{c(){e=v("section"),t=v("hgroup"),t.innerHTML=a,r=E(),i=v("ul");for(let n=0;n<l.length;n+=1)l[n].c();this.h()},l(n){e=g(n,"SECTION",{id:!0,class:!0});var f=b(e);t=g(f,"HGROUP",{class:!0,"data-svelte-h":!0}),z(t)!=="svelte-4ab9fe"&&(t.innerHTML=a),r=x(f),i=g(f,"UL",{class:!0});var o=b(i);for(let d=0;d<l.length;d+=1)l[d].l(o);o.forEach(_),f.forEach(_),this.h()},h(){m(t,"class","svelte-xbkhct"),m(i,"class","moments svelte-xbkhct"),m(e,"id","moments"),m(e,"class","svelte-xbkhct")},m(n,f){C(n,e,f),c(e,t),c(e,r),c(e,i);for(let o=0;o<l.length;o+=1)l[o]&&l[o].m(i,null)},p(n,[f]){if(f&1){s=J(n[0]);let o;for(o=0;o<s.length;o+=1){const d=Q(n,s,o);l[o]?l[o].p(d,f):(l[o]=W(d),l[o].c(),l[o].m(i,null))}for(;o<l.length;o+=1)l[o].d(1);l.length=s.length}},i:j,o:j,d(n){n&&_(e),X(l,n)}}}function ne(h,e,t){let{moments:a}=e;return h.$$set=r=>{"moments"in r&&t(0,a=r.moments)},[a]}class re extends D{constructor(e){super(),P(this,e,ne,ae,S,{moments:0})}}function oe(h){let e,t,a,r,i;return document.title=ee,t=new le({}),r=new re({props:{moments:h[0].moments}}),{c(){e=E(),R(t.$$.fragment),a=E(),R(r.$$.fragment)},l(s){Z("svelte-fbczdu",document.head).forEach(_),e=x(s),V(t.$$.fragment,s),a=x(s),V(r.$$.fragment,s)},m(s,l){C(s,e,l),y(t,s,l),C(s,a,l),y(r,s,l),i=!0},p(s,[l]){const n={};l&1&&(n.moments=s[0].moments),r.$set(n)},i(s){i||(G(t.$$.fragment,s),G(r.$$.fragment,s),i=!0)},o(s){K(t.$$.fragment,s),K(r.$$.fragment,s),i=!1},d(s){s&&(_(e),_(a)),B(t,s),B(r,s)}}}function ie(h,e,t){let{data:a}=e;return h.$$set=r=>{"data"in r&&t(0,a=r.data)},[a]}class _e extends D{constructor(e){super(),P(this,e,ie,oe,S,{data:0})}}export{_e as component};
