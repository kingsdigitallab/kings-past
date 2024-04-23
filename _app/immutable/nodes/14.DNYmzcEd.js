import{s as me,n as de}from"../chunks/scheduler.CUj-2nE4.js";import{S as Ce,i as ge,e as _,t as E,s as T,c,a as m,b,d as u,f as L,m as A,g as I,h as s,j as w,o as ke,n as B}from"../chunks/index.DvbDQGDO.js";import{e as he}from"../chunks/each.D6YF6ztN.js";function _e(f,e,o){const r=f.slice();return r[1]=e[o],r}function ce(f){let e,o,r="Knows",h,n,t=he(f[0].knows),l=[];for(let a=0;a<t.length;a+=1)l[a]=pe(_e(f,t,a));return{c(){e=_("section"),o=_("h2"),o.textContent=r,h=T(),n=_("ul");for(let a=0;a<l.length;a+=1)l[a].c()},l(a){e=c(a,"SECTION",{});var d=m(e);o=c(d,"H2",{"data-svelte-h":!0}),A(o)!=="svelte-18rnh06"&&(o.textContent=r),h=L(d),n=c(d,"UL",{});var i=m(n);for(let k=0;k<l.length;k+=1)l[k].l(i);i.forEach(u),d.forEach(u)},m(a,d){I(a,e,d),s(e,o),s(e,h),s(e,n);for(let i=0;i<l.length;i+=1)l[i]&&l[i].m(n,null)},p(a,d){if(d&1){t=he(a[0].knows);let i;for(i=0;i<t.length;i+=1){const k=_e(a,t,i);l[i]?l[i].p(k,d):(l[i]=pe(k),l[i].c(),l[i].m(n,null))}for(;i<l.length;i+=1)l[i].d(1);l.length=t.length}},d(a){a&&u(e),ke(l,a)}}}function Ee(f){let e,o=f[0].people[f[1].person].name+"",r,h;return{c(){e=_("a"),r=E(o),this.h()},l(n){e=c(n,"A",{href:!0});var t=m(e);r=b(t,o),t.forEach(u),this.h()},h(){B(e,"href",h=f[1].person)},m(n,t){I(n,e,t),s(e,r)},p(n,t){t&1&&o!==(o=n[0].people[n[1].person].name+"")&&w(r,o),t&1&&h!==(h=n[1].person)&&B(e,"href",h)},d(n){n&&u(e)}}}function be(f){let e,o=f[0].people[f[1].knows].name+"",r,h;return{c(){e=_("a"),r=E(o),this.h()},l(n){e=c(n,"A",{href:!0});var t=m(e);r=b(t,o),t.forEach(u),this.h()},h(){B(e,"href",h=f[1].knows)},m(n,t){I(n,e,t),s(e,r)},p(n,t){t&1&&o!==(o=n[0].people[n[1].knows].name+"")&&w(r,o),t&1&&h!==(h=n[1].knows)&&B(e,"href",h)},d(n){n&&u(e)}}}function ue(f){let e,o,r=f[1].relationship.toLowerCase()+"",h,n;return{c(){e=_("span"),o=E(", "),h=E(r),n=E(" relationship")},l(t){e=c(t,"SPAN",{});var l=m(e);o=b(l,", "),h=b(l,r),n=b(l," relationship"),l.forEach(u)},m(t,l){I(t,e,l),s(e,o),s(e,h),s(e,n)},p(t,l){l&1&&r!==(r=t[1].relationship.toLowerCase()+"")&&w(h,r)},d(t){t&&u(e)}}}function pe(f){let e,o,r;function h(a,d){return a[1].person===a[0].person.slug?be:Ee}let n=h(f),t=n(f),l=f[1].relationship&&ue(f);return{c(){e=_("li"),t.c(),o=T(),l&&l.c(),r=T(),this.h()},l(a){e=c(a,"LI",{class:!0});var d=m(e);t.l(d),o=L(d),l&&l.l(d),r=L(d),d.forEach(u),this.h()},h(){B(e,"class","svelte-1xj6od2")},m(a,d){I(a,e,d),t.m(e,null),s(e,o),l&&l.m(e,null),s(e,r)},p(a,d){n===(n=h(a))&&t?t.p(a,d):(t.d(1),t=n(a),t&&(t.c(),t.m(e,o))),a[1].relationship?l?l.p(a,d):(l=ue(a),l.c(),l.m(e,r)):l&&(l.d(1),l=null)},d(a){a&&u(e),t.d(),l&&l.d()}}}function ve(f){let e,o,r="About",h,n,t=f[0].person.description+"",l;return{c(){e=_("article"),o=_("h2"),o.textContent=r,h=T(),n=_("p"),l=E(t)},l(a){e=c(a,"ARTICLE",{});var d=m(e);o=c(d,"H2",{"data-svelte-h":!0}),A(o)!=="svelte-1h16os9"&&(o.textContent=r),h=L(d),n=c(d,"P",{});var i=m(n);l=b(i,t),i.forEach(u),d.forEach(u)},m(a,d){I(a,e,d),s(e,o),s(e,h),s(e,n),s(n,l)},p(a,d){d&1&&t!==(t=a[0].person.description+"")&&w(l,t)},d(a){a&&u(e)}}}function De(f){let e,o,r=f[0].person.name+"",h,n,t,l,a="Metadata",d,i,k,ee="Alternative names",S,q=(f[0].person.alternative_names||null)+"",F,Z,H,te="Gender",y,O=f[0].person.gender+"",J,N,le="Nationality",R,G=f[0].person.nationality+"",Q,P,ne="Ethnicity",K,M=f[0].person.ethnicity+"",V,j,ae="Languages",U,z=(f[0].person.languages||null)+"",W,$,X,C=f[0].knows&&ce(f),g=f[0].person.description&&ve(f);return{c(){e=_("article"),o=_("h1"),h=E(r),n=T(),t=_("section"),l=_("h2"),l.textContent=a,d=T(),i=_("dl"),k=_("dt"),k.textContent=ee,S=_("dd"),F=E(q),Z=T(),H=_("dt"),H.textContent=te,y=_("dd"),J=E(O),N=_("dt"),N.textContent=le,R=_("dd"),Q=E(G),P=_("dt"),P.textContent=ne,K=_("dd"),V=E(M),j=_("dt"),j.textContent=ae,U=_("dd"),W=E(z),$=T(),C&&C.c(),X=T(),g&&g.c()},l(v){e=c(v,"ARTICLE",{});var p=m(e);o=c(p,"H1",{});var oe=m(o);h=b(oe,r),oe.forEach(u),n=L(p),t=c(p,"SECTION",{});var Y=m(t);l=c(Y,"H2",{"data-svelte-h":!0}),A(l)!=="svelte-120cf5n"&&(l.textContent=a),d=L(Y),i=c(Y,"DL",{});var D=m(i);k=c(D,"DT",{"data-svelte-h":!0}),A(k)!=="svelte-1lqvr37"&&(k.textContent=ee),S=c(D,"DD",{});var x=m(S);F=b(x,q),Z=L(x),x.forEach(u),H=c(D,"DT",{"data-svelte-h":!0}),A(H)!=="svelte-ae5mer"&&(H.textContent=te),y=c(D,"DD",{});var se=m(y);J=b(se,O),se.forEach(u),N=c(D,"DT",{"data-svelte-h":!0}),A(N)!=="svelte-1gr8iws"&&(N.textContent=le),R=c(D,"DD",{});var re=m(R);Q=b(re,G),re.forEach(u),P=c(D,"DT",{"data-svelte-h":!0}),A(P)!=="svelte-peof8h"&&(P.textContent=ne),K=c(D,"DD",{});var ie=m(K);V=b(ie,M),ie.forEach(u),j=c(D,"DT",{"data-svelte-h":!0}),A(j)!=="svelte-bwofb"&&(j.textContent=ae),U=c(D,"DD",{});var fe=m(U);W=b(fe,z),fe.forEach(u),D.forEach(u),Y.forEach(u),$=L(p),C&&C.l(p),X=L(p),g&&g.l(p),p.forEach(u)},m(v,p){I(v,e,p),s(e,o),s(o,h),s(e,n),s(e,t),s(t,l),s(t,d),s(t,i),s(i,k),s(i,S),s(S,F),s(S,Z),s(i,H),s(i,y),s(y,J),s(i,N),s(i,R),s(R,Q),s(i,P),s(i,K),s(K,V),s(i,j),s(i,U),s(U,W),s(e,$),C&&C.m(e,null),s(e,X),g&&g.m(e,null)},p(v,[p]){p&1&&r!==(r=v[0].person.name+"")&&w(h,r),p&1&&q!==(q=(v[0].person.alternative_names||null)+"")&&w(F,q),p&1&&O!==(O=v[0].person.gender+"")&&w(J,O),p&1&&G!==(G=v[0].person.nationality+"")&&w(Q,G),p&1&&M!==(M=v[0].person.ethnicity+"")&&w(V,M),p&1&&z!==(z=(v[0].person.languages||null)+"")&&w(W,z),v[0].knows?C?C.p(v,p):(C=ce(v),C.c(),C.m(e,X)):C&&(C.d(1),C=null),v[0].person.description?g?g.p(v,p):(g=ve(v),g.c(),g.m(e,null)):g&&(g.d(1),g=null)},i:de,o:de,d(v){v&&u(e),C&&C.d(),g&&g.d()}}}function we(f,e,o){let{data:r}=e;return f.$$set=h=>{"data"in h&&o(0,r=h.data)},[r]}class Ie extends Ce{constructor(e){super(),ge(this,e,we,De,me,{data:0})}}export{Ie as component};
