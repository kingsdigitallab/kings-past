import{s as W,n as G,j as X}from"../chunks/scheduler.BmBaUOvj.js";import{S as Y,i as Z,e as m,s as k,c as u,h as _,g as $,a as y,f,b as d,d as U,k as n,v as ee,t as b,j as A}from"../chunks/index.C_nRBhsY.js";import{e as K}from"../chunks/each.DhGhqZbU.js";import{b as te}from"../chunks/paths.H_IZmdmq.js";import{s as ae}from"../chunks/moments.CqzUnQA3.js";function O(c,t,s){const l=c.slice();l[2]=t[s];const o=ae(l[2].title);return l[3]=o,l}function Q(c){let t,s,l,o,i,r=parseInt(c[2].slug)+"",a,h,e,E,T,v,p,q,w=c[3].year+"",j,D,z=c[3].name+"",H,L,g,B=c[2].excerpt+"",N,R;return{c(){t=m("article"),s=m("a"),l=m("div"),o=m("span"),i=b("Moment "),a=b(r),h=k(),e=m("img"),T=k(),v=m("div"),p=m("h2"),q=m("span"),j=b(w),D=k(),H=b(z),L=k(),g=m("p"),N=b(B),R=k(),this.h()},l(C){t=u(C,"ARTICLE",{class:!0,id:!0});var I=_(t);s=u(I,"A",{href:!0,class:!0});var M=_(s);l=u(M,"DIV",{class:!0});var P=_(l);o=u(P,"SPAN",{});var V=_(o);i=A(V,"Moment "),a=A(V,r),V.forEach(f),h=y(P),e=u(P,"IMG",{src:!0,alt:!0,class:!0}),P.forEach(f),T=y(M),v=u(M,"DIV",{class:!0});var S=_(v);p=u(S,"H2",{class:!0});var x=_(p);q=u(x,"SPAN",{});var F=_(q);j=A(F,w),F.forEach(f),D=y(x),H=A(x,z),x.forEach(f),L=y(S),g=u(S,"P",{class:!0});var J=_(g);N=A(J,B),J.forEach(f),S.forEach(f),M.forEach(f),R=y(I),I.forEach(f),this.h()},h(){X(e.src,E=""+(te+c[2].feature.image))||d(e,"src",E),d(e,"alt",c[2].feature.description),d(e,"class","svelte-1qy7kdm"),d(l,"class","svelte-1qy7kdm"),d(p,"class","svelte-1qy7kdm"),d(g,"class","excerpt svelte-1qy7kdm"),d(v,"class","svelte-1qy7kdm"),d(s,"href","moments/"+c[2].slug),d(s,"class","svelte-1qy7kdm"),d(t,"class","surface-1 svelte-1qy7kdm"),d(t,"id","moment-"+c[2].slug)},m(C,I){U(C,t,I),n(t,s),n(s,l),n(l,o),n(o,i),n(o,a),n(l,h),n(l,e),n(s,T),n(s,v),n(v,p),n(p,q),n(q,j),n(p,D),n(p,H),n(v,L),n(v,g),n(g,N),n(t,R)},p:G,d(C){C&&f(t)}}}function se(c){let t,s,l="Moments",o,i=K(c[0]),r=[];for(let a=0;a<i.length;a+=1)r[a]=Q(O(c,i,a));return{c(){t=m("article"),s=m("h1"),s.textContent=l,o=k();for(let a=0;a<r.length;a+=1)r[a].c();this.h()},l(a){t=u(a,"ARTICLE",{class:!0});var h=_(t);s=u(h,"H1",{"data-svelte-h":!0}),$(s)!=="svelte-3dd469"&&(s.textContent=l),o=y(h);for(let e=0;e<r.length;e+=1)r[e].l(h);h.forEach(f),this.h()},h(){d(t,"class","svelte-1qy7kdm")},m(a,h){U(a,t,h),n(t,s),n(t,o);for(let e=0;e<r.length;e+=1)r[e]&&r[e].m(t,null)},p(a,[h]){if(h&1){i=K(a[0]);let e;for(e=0;e<i.length;e+=1){const E=O(a,i,e);r[e]?r[e].p(E,h):(r[e]=Q(E),r[e].c(),r[e].m(t,null))}for(;e<r.length;e+=1)r[e].d(1);r.length=i.length}},i:G,o:G,d(a){a&&f(t),ee(r,a)}}}function le(c,t,s){let{data:l}=t;const{moments:o}=l;return c.$$set=i=>{"data"in i&&s(1,l=i.data)},[o,l]}class he extends Y{constructor(t){super(),Z(this,t,le,se,W,{data:1})}}export{he as component};
