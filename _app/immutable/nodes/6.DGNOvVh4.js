import{s as S,n as C,f as O}from"../chunks/scheduler.DA7SJN9v.js";import{S as D,i as P,e as v,t as M,s as k,c as g,h as E,j as z,f as d,a as H,g as w,b as m,d as I,k as c,v as X,w as Y,l as R,m as Z,n as V,o as y,p as G,q as K,r as B}from"../chunks/index.9O6q6bi6.js";import{h as F,t as ee}from"../chunks/config.gUoqXaG8.js";import{b as x}from"../chunks/paths.D0mLQXaR.js";import{e as J}from"../chunks/each.tTqcQQ6Q.js";const te=""+new URL("../assets/hero.DHd9kN9a.jpg",import.meta.url).href;function se(h){let e,t,a,r,i=F.title+"",s,l,n,u=F.message+"",o,_,f,p="<button>Learn more</button>",b,$,U=`<img src="${te}" alt="A drawing ot the King&#39;s College Strand building" class="svelte-lzjkll"/>`;return{c(){e=v("section"),t=v("div"),a=v("h1"),r=v("div"),s=M(i),l=k(),n=v("p"),o=M(u),_=k(),f=v("a"),f.innerHTML=p,b=k(),$=v("picture"),$.innerHTML=U,this.h()},l(j){e=g(j,"SECTION",{class:!0});var L=E(e);t=g(L,"DIV",{class:!0});var T=E(t);a=g(T,"H1",{class:!0});var q=E(a);r=g(q,"DIV",{});var A=E(r);s=z(A,i),A.forEach(d),q.forEach(d),l=H(T),n=g(T,"P",{class:!0});var N=E(n);o=z(N,u),N.forEach(d),_=H(T),f=g(T,"A",{href:!0,"data-svelte-h":!0}),w(f)!=="svelte-4ahjg0"&&(f.innerHTML=p),T.forEach(d),b=H(L),$=g(L,"PICTURE",{class:!0,"data-svelte-h":!0}),w($)!=="svelte-lgv8l"&&($.innerHTML=U),L.forEach(d),this.h()},h(){m(a,"class","hero-title svelte-lzjkll"),m(n,"class","hero-message svelte-lzjkll"),m(f,"href",x+"/about"),m(t,"class","hero-welcome svelte-lzjkll"),m($,"class","hero-img svelte-lzjkll"),m(e,"class","hero svelte-lzjkll")},m(j,L){I(j,e,L),c(e,t),c(t,a),c(a,r),c(r,s),c(t,l),c(t,n),c(n,o),c(t,_),c(t,f),c(e,b),c(e,$)},p:C,i:C,o:C,d(j){j&&d(e)}}}class le extends D{constructor(e){super(),P(this,e,null,se,S,{})}}function Q(h,e,t){const a=h.slice();return a[1]=e[t],a}function W(h){let e,t,a,r,i,s,l,n=h[1].title+"",u,o,_;return{c(){e=v("li"),t=v("a"),a=v("img"),s=k(),l=v("div"),u=M(n),_=k(),this.h()},l(f){e=g(f,"LI",{class:!0});var p=E(e);t=g(p,"A",{href:!0,class:!0});var b=E(t);a=g(b,"IMG",{src:!0,alt:!0,class:!0}),s=H(b),l=g(b,"DIV",{class:!0});var $=E(l);u=z($,n),$.forEach(d),b.forEach(d),_=H(p),p.forEach(d),this.h()},h(){O(a.src,r=""+(x+h[1].feature.image))||m(a,"src",r),m(a,"alt",i=h[1].feature.description),m(a,"class","svelte-18dfhot"),m(l,"class","title svelte-18dfhot"),m(t,"href",o="moments/"+h[1].slug),m(t,"class","svelte-18dfhot"),m(e,"class","moment svelte-18dfhot")},m(f,p){I(f,e,p),c(e,t),c(t,a),c(t,s),c(t,l),c(l,u),c(e,_)},p(f,p){p&1&&!O(a.src,r=""+(x+f[1].feature.image))&&m(a,"src",r),p&1&&i!==(i=f[1].feature.description)&&m(a,"alt",i),p&1&&n!==(n=f[1].title+"")&&Y(u,n),p&1&&o!==(o="moments/"+f[1].slug)&&m(t,"href",o)},d(f){f&&d(e)}}}function ae(h){let e,t,a='<h2>The 13 Moments</h2> <p class="svelte-18dfhot">Explore the pivotal moments in King&#39;s College history</p>',r,i,s=J(h[0]),l=[];for(let n=0;n<s.length;n+=1)l[n]=W(Q(h,s,n));return{c(){e=v("section"),t=v("hgroup"),t.innerHTML=a,r=k(),i=v("ul");for(let n=0;n<l.length;n+=1)l[n].c();this.h()},l(n){e=g(n,"SECTION",{id:!0,class:!0});var u=E(e);t=g(u,"HGROUP",{class:!0,"data-svelte-h":!0}),w(t)!=="svelte-4ab9fe"&&(t.innerHTML=a),r=H(u),i=g(u,"UL",{class:!0});var o=E(i);for(let _=0;_<l.length;_+=1)l[_].l(o);o.forEach(d),u.forEach(d),this.h()},h(){m(t,"class","svelte-18dfhot"),m(i,"class","moments svelte-18dfhot"),m(e,"id","moments"),m(e,"class","svelte-18dfhot")},m(n,u){I(n,e,u),c(e,t),c(e,r),c(e,i);for(let o=0;o<l.length;o+=1)l[o]&&l[o].m(i,null)},p(n,[u]){if(u&1){s=J(n[0]);let o;for(o=0;o<s.length;o+=1){const _=Q(n,s,o);l[o]?l[o].p(_,u):(l[o]=W(_),l[o].c(),l[o].m(i,null))}for(;o<l.length;o+=1)l[o].d(1);l.length=s.length}},i:C,o:C,d(n){n&&d(e),X(l,n)}}}function ne(h,e,t){let{moments:a}=e;return h.$$set=r=>{"moments"in r&&t(0,a=r.moments)},[a]}class re extends D{constructor(e){super(),P(this,e,ne,ae,S,{moments:0})}}function oe(h){let e,t,a,r,i;return document.title=ee,t=new le({}),r=new re({props:{moments:h[0].moments}}),{c(){e=k(),R(t.$$.fragment),a=k(),R(r.$$.fragment)},l(s){Z("svelte-fbczdu",document.head).forEach(d),e=H(s),V(t.$$.fragment,s),a=H(s),V(r.$$.fragment,s)},m(s,l){I(s,e,l),y(t,s,l),I(s,a,l),y(r,s,l),i=!0},p(s,[l]){const n={};l&1&&(n.moments=s[0].moments),r.$set(n)},i(s){i||(G(t.$$.fragment,s),G(r.$$.fragment,s),i=!0)},o(s){K(t.$$.fragment,s),K(r.$$.fragment,s),i=!1},d(s){s&&(d(e),d(a)),B(t,s),B(r,s)}}}function ie(h,e,t){let{data:a}=e;return h.$$set=r=>{"data"in r&&t(0,a=r.data)},[a]}class de extends D{constructor(e){super(),P(this,e,ie,oe,S,{data:0})}}export{de as component};
