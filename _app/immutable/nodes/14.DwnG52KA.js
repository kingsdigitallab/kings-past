import{s as z,c as v,o as A,i as k,l as u,h,b as g,d as m,f as d,j as L,m as p,p as P,t as H,g as I,k as E,n as y}from"../chunks/scheduler.BFCMfM9_.js";import{S as R,i as B,c as F,a as G,m as J,t as K,b as M,d as Q}from"../chunks/index.mj2WGaPU.js";import{e as $}from"../chunks/each.B2PkbbDs.js";import{E as V}from"../chunks/EntityDetails.B8XZpZEh.js";function S(r,n,o){const i=r.slice();return i[11]=n[o],i}function U(r,n,o){const i=r.slice();return i[11]=n[o],i}function j(r,n,o){const i=r.slice();return i[16]=n[o],i}function D(r,n,o){const i=r.slice();return i[16]=n[o],i}function W(r){var s,l;let n,o,i="Donors",a,f,t=((s=r[3])==null?void 0:s.length)&&X(r),e=((l=r[4])==null?void 0:l.length)&&Y(r);return{c(){n=g("section"),o=g("h3"),o.textContent=i,a=v(),t&&t.c(),f=v(),e&&e.c()},l(c){n=m(c,"SECTION",{});var _=d(n);o=m(_,"H3",{"data-svelte-h":!0}),L(o)!=="svelte-1nmykq1"&&(o.textContent=i),a=k(_),t&&t.l(_),f=k(_),e&&e.l(_),_.forEach(h)},m(c,_){u(c,n,_),p(n,o),p(n,a),t&&t.m(n,null),p(n,f),e&&e.m(n,null)},p(c,_){var b,C;(b=c[3])!=null&&b.length&&t.p(c,_),(C=c[4])!=null&&C.length&&e.p(c,_)},d(c){c&&h(n),t&&t.d(),e&&e.d()}}}function X(r){let n,o="People",i,a,f=$(r[3]),t=[];for(let e=0;e<f.length;e+=1)t[e]=T(D(r,f,e));return{c(){n=g("h4"),n.textContent=o,i=v(),a=g("ul");for(let e=0;e<t.length;e+=1)t[e].c()},l(e){n=m(e,"H4",{"data-svelte-h":!0}),L(n)!=="svelte-tslik9"&&(n.textContent=o),i=k(e),a=m(e,"UL",{});var s=d(a);for(let l=0;l<t.length;l+=1)t[l].l(s);s.forEach(h)},m(e,s){u(e,n,s),u(e,i,s),u(e,a,s);for(let l=0;l<t.length;l+=1)t[l]&&t[l].m(a,null)},p(e,s){if(s&8){f=$(e[3]);let l;for(l=0;l<f.length;l+=1){const c=D(e,f,l);t[l]?t[l].p(c,s):(t[l]=T(c),t[l].c(),t[l].m(a,null))}for(;l<t.length;l+=1)t[l].d(1);t.length=f.length}},d(e){e&&(h(n),h(i),h(a)),P(t,e)}}}function T(r){let n,o,i=r[16].name+"",a;return{c(){n=g("li"),o=g("a"),a=H(i),this.h()},l(f){n=m(f,"LI",{"data-pagefind-filter":!0});var t=d(n);o=m(t,"A",{href:!0});var e=d(o);a=I(e,i),e.forEach(h),t.forEach(h),this.h()},h(){E(o,"href","../people/"+r[16].slug),E(n,"data-pagefind-filter","Person")},m(f,t){u(f,n,t),p(n,o),p(o,a)},p:y,d(f){f&&h(n)}}}function Y(r){let n,o="Organisations",i,a,f=$(r[4]),t=[];for(let e=0;e<f.length;e+=1)t[e]=q(j(r,f,e));return{c(){n=g("h4"),n.textContent=o,i=v(),a=g("ul");for(let e=0;e<t.length;e+=1)t[e].c()},l(e){n=m(e,"H4",{"data-svelte-h":!0}),L(n)!=="svelte-1gpkjc3"&&(n.textContent=o),i=k(e),a=m(e,"UL",{});var s=d(a);for(let l=0;l<t.length;l+=1)t[l].l(s);s.forEach(h)},m(e,s){u(e,n,s),u(e,i,s),u(e,a,s);for(let l=0;l<t.length;l+=1)t[l]&&t[l].m(a,null)},p(e,s){if(s&16){f=$(e[4]);let l;for(l=0;l<f.length;l+=1){const c=j(e,f,l);t[l]?t[l].p(c,s):(t[l]=q(c),t[l].c(),t[l].m(a,null))}for(;l<t.length;l+=1)t[l].d(1);t.length=f.length}},d(e){e&&(h(n),h(i),h(a)),P(t,e)}}}function q(r){let n,o,i=r[16].name+"",a,f;return{c(){n=g("li"),o=g("a"),a=H(i),f=v(),this.h()},l(t){n=m(t,"LI",{"data-pagefind-filter":!0});var e=d(n);o=m(e,"A",{href:!0});var s=d(o);a=I(s,i),s.forEach(h),f=k(e),e.forEach(h),this.h()},h(){E(o,"href","../organisations/"+r[16].slug),E(n,"data-pagefind-filter","Organisation")},m(t,e){u(t,n,e),p(n,o),p(o,a),p(n,f)},p:y,d(t){t&&h(n)}}}function Z(r){var s,l;let n,o,i="Recipients",a,f,t=((s=r[5])==null?void 0:s.length)&&x(r),e=((l=r[6])==null?void 0:l.length)&&ee(r);return{c(){n=g("section"),o=g("h3"),o.textContent=i,a=v(),t&&t.c(),f=v(),e&&e.c()},l(c){n=m(c,"SECTION",{});var _=d(n);o=m(_,"H3",{"data-svelte-h":!0}),L(o)!=="svelte-1g0z788"&&(o.textContent=i),a=k(_),t&&t.l(_),f=k(_),e&&e.l(_),_.forEach(h)},m(c,_){u(c,n,_),p(n,o),p(n,a),t&&t.m(n,null),p(n,f),e&&e.m(n,null)},p(c,_){var b,C;(b=c[5])!=null&&b.length&&t.p(c,_),(C=c[6])!=null&&C.length&&e.p(c,_)},d(c){c&&h(n),t&&t.d(),e&&e.d()}}}function x(r){let n,o="People",i,a,f=$(r[5]),t=[];for(let e=0;e<f.length;e+=1)t[e]=N(U(r,f,e));return{c(){n=g("h4"),n.textContent=o,i=v(),a=g("ul");for(let e=0;e<t.length;e+=1)t[e].c()},l(e){n=m(e,"H4",{"data-svelte-h":!0}),L(n)!=="svelte-tslik9"&&(n.textContent=o),i=k(e),a=m(e,"UL",{});var s=d(a);for(let l=0;l<t.length;l+=1)t[l].l(s);s.forEach(h)},m(e,s){u(e,n,s),u(e,i,s),u(e,a,s);for(let l=0;l<t.length;l+=1)t[l]&&t[l].m(a,null)},p(e,s){if(s&32){f=$(e[5]);let l;for(l=0;l<f.length;l+=1){const c=U(e,f,l);t[l]?t[l].p(c,s):(t[l]=N(c),t[l].c(),t[l].m(a,null))}for(;l<t.length;l+=1)t[l].d(1);t.length=f.length}},d(e){e&&(h(n),h(i),h(a)),P(t,e)}}}function N(r){let n,o,i=r[11].name+"",a,f;return{c(){n=g("li"),o=g("a"),a=H(i),f=v(),this.h()},l(t){n=m(t,"LI",{"data-pagefind-filter":!0});var e=d(n);o=m(e,"A",{href:!0});var s=d(o);a=I(s,i),s.forEach(h),f=k(e),e.forEach(h),this.h()},h(){E(o,"href","../people/"+r[11].slug),E(n,"data-pagefind-filter","Person")},m(t,e){u(t,n,e),p(n,o),p(o,a),p(n,f)},p:y,d(t){t&&h(n)}}}function ee(r){let n,o="Organisations",i,a,f=$(r[6]),t=[];for(let e=0;e<f.length;e+=1)t[e]=w(S(r,f,e));return{c(){n=g("h4"),n.textContent=o,i=v(),a=g("ul");for(let e=0;e<t.length;e+=1)t[e].c()},l(e){n=m(e,"H4",{"data-svelte-h":!0}),L(n)!=="svelte-1gpkjc3"&&(n.textContent=o),i=k(e),a=m(e,"UL",{});var s=d(a);for(let l=0;l<t.length;l+=1)t[l].l(s);s.forEach(h)},m(e,s){u(e,n,s),u(e,i,s),u(e,a,s);for(let l=0;l<t.length;l+=1)t[l]&&t[l].m(a,null)},p(e,s){if(s&64){f=$(e[6]);let l;for(l=0;l<f.length;l+=1){const c=S(e,f,l);t[l]?t[l].p(c,s):(t[l]=w(c),t[l].c(),t[l].m(a,null))}for(;l<t.length;l+=1)t[l].d(1);t.length=f.length}},d(e){e&&(h(n),h(i),h(a)),P(t,e)}}}function w(r){let n,o,i=r[11].name+"",a,f;return{c(){n=g("li"),o=g("a"),a=H(i),f=v(),this.h()},l(t){n=m(t,"LI",{"data-pagefind-filter":!0});var e=d(n);o=m(e,"A",{href:!0});var s=d(o);a=I(s,i),s.forEach(h),f=k(e),e.forEach(h),this.h()},h(){E(o,"href","../organisations/"+r[11].slug),E(n,"data-pagefind-filter","Organisation")},m(t,e){u(t,n,e),p(n,o),p(o,a),p(n,f)},p:y,d(t){t&&h(n)}}}function te(r){var f,t,e,s;let n,o,i=(((f=r[3])==null?void 0:f.length)||((t=r[4])==null?void 0:t.length))&&W(r),a=(((e=r[5])==null?void 0:e.length)||((s=r[6])==null?void 0:s.length))&&Z(r);return{c(){i&&i.c(),n=v(),a&&a.c(),o=A()},l(l){i&&i.l(l),n=k(l),a&&a.l(l),o=A()},m(l,c){i&&i.m(l,c),u(l,n,c),a&&a.m(l,c),u(l,o,c)},p(l,c){var _,b,C,O;((_=l[3])!=null&&_.length||(b=l[4])!=null&&b.length)&&i.p(l,c),((C=l[5])!=null&&C.length||(O=l[6])!=null&&O.length)&&a.p(l,c)},d(l){l&&(h(n),h(o)),i&&i.d(l),a&&a.d(l)}}}function le(r){let n,o;return n=new V({props:{entity:r[0],entityType:"Donation",meta:r[1],description:r[2],moments:r[7],sources:r[8],urls:r[9],$$slots:{default:[te]},$$scope:{ctx:r}}}),{c(){F(n.$$.fragment)},l(i){G(n.$$.fragment,i)},m(i,a){J(n,i,a),o=!0},p(i,[a]){const f={};a&2097152&&(f.$$scope={dirty:a,ctx:i}),n.$set(f)},i(i){o||(K(n.$$.fragment,i),o=!0)},o(i){M(n.$$.fragment,i),o=!1},d(i){Q(n,i)}}}function ne(r,n,o){let{data:i}=n;const{donation:a,meta:f,description:t,donorsPerson:e,donorsOrganisation:s,recipientsPerson:l,recipientsOrganisation:c,moments:_,sources:b,urls:C}=i;return r.$$set=O=>{"data"in O&&o(10,i=O.data)},[a,f,t,e,s,l,c,_,b,C,i]}class re extends R{constructor(n){super(),B(this,n,ne,le,z,{data:10})}}export{re as component};
