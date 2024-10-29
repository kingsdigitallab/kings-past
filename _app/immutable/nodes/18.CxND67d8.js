import{s as J,n as D}from"../chunks/scheduler.BmBaUOvj.js";import{S as K,i as Q,l as w,n as I,o as O,p as H,q as M,r as S,s as $,a as b,d as v,f as _,e as p,c as g,h as k,g as y,k as d,v as N,t as T,j as U,b as j}from"../chunks/index.C_nRBhsY.js";import{e as E}from"../chunks/each.DhGhqZbU.js";import{D as V}from"../chunks/DonationsList.CDJdi_-o.js";import{E as W}from"../chunks/EntityDetails.BLOKEW8R.js";import{E as X}from"../chunks/EventsList.CAU4JT_J.js";function z(a,t,o){const s=a.slice();return s[12]=t[o],s}function P(a,t,o){const s=a.slice();return s[12]=t[o],s}function R(a,t,o){const s=a.slice();return s[18]=t[o],s}function Y(a){var n,i;let t,o,s="Members",f,r,l=((n=a[5])==null?void 0:n.length)&&Z(a),e=((i=a[6])==null?void 0:i.length)&&x(a);return{c(){t=p("section"),o=p("h2"),o.textContent=s,f=$(),l&&l.c(),r=$(),e&&e.c()},l(c){t=g(c,"SECTION",{});var u=k(t);o=g(u,"H2",{"data-svelte-h":!0}),y(o)!=="svelte-1vj8wcn"&&(o.textContent=s),f=b(u),l&&l.l(u),r=b(u),e&&e.l(u),u.forEach(_)},m(c,u){v(c,t,u),d(t,o),d(t,f),l&&l.m(t,null),d(t,r),e&&e.m(t,null)},p(c,u){var h,m;(h=c[5])!=null&&h.length&&l.p(c,u),(m=c[6])!=null&&m.length&&e.p(c,u)},d(c){c&&_(t),l&&l.d(),e&&e.d()}}}function Z(a){let t,o="People",s,f,r=E(a[5]),l=[];for(let e=0;e<r.length;e+=1)l[e]=B(R(a,r,e));return{c(){t=p("h3"),t.textContent=o,s=$(),f=p("ul");for(let e=0;e<l.length;e+=1)l[e].c()},l(e){t=g(e,"H3",{"data-svelte-h":!0}),y(t)!=="svelte-1wtnxtv"&&(t.textContent=o),s=b(e),f=g(e,"UL",{});var n=k(f);for(let i=0;i<l.length;i+=1)l[i].l(n);n.forEach(_)},m(e,n){v(e,t,n),v(e,s,n),v(e,f,n);for(let i=0;i<l.length;i+=1)l[i]&&l[i].m(f,null)},p(e,n){if(n&32){r=E(e[5]);let i;for(i=0;i<r.length;i+=1){const c=R(e,r,i);l[i]?l[i].p(c,n):(l[i]=B(c),l[i].c(),l[i].m(f,null))}for(;i<l.length;i+=1)l[i].d(1);l.length=r.length}},d(e){e&&(_(t),_(s),_(f)),N(l,e)}}}function B(a){let t,o,s=a[18].name+"",f,r;return{c(){t=p("li"),o=p("a"),f=T(s),r=$(),this.h()},l(l){t=g(l,"LI",{});var e=k(t);o=g(e,"A",{href:!0});var n=k(o);f=U(n,s),n.forEach(_),r=b(e),e.forEach(_),this.h()},h(){j(o,"href","../people/"+a[18].slug)},m(l,e){v(l,t,e),d(t,o),d(o,f),d(t,r)},p:D,d(l){l&&_(t)}}}function x(a){let t,o="Organisations",s,f,r=E(a[6]),l=[];for(let e=0;e<r.length;e+=1)l[e]=F(P(a,r,e));return{c(){t=p("h3"),t.textContent=o,s=$(),f=p("ul");for(let e=0;e<l.length;e+=1)l[e].c()},l(e){t=g(e,"H3",{"data-svelte-h":!0}),y(t)!=="svelte-8cxkzb"&&(t.textContent=o),s=b(e),f=g(e,"UL",{});var n=k(f);for(let i=0;i<l.length;i+=1)l[i].l(n);n.forEach(_)},m(e,n){v(e,t,n),v(e,s,n),v(e,f,n);for(let i=0;i<l.length;i+=1)l[i]&&l[i].m(f,null)},p(e,n){if(n&64){r=E(e[6]);let i;for(i=0;i<r.length;i+=1){const c=P(e,r,i);l[i]?l[i].p(c,n):(l[i]=F(c),l[i].c(),l[i].m(f,null))}for(;i<l.length;i+=1)l[i].d(1);l.length=r.length}},d(e){e&&(_(t),_(s),_(f)),N(l,e)}}}function F(a){let t,o,s=a[12].name+"",f,r;return{c(){t=p("li"),o=p("a"),f=T(s),r=$(),this.h()},l(l){t=g(l,"LI",{});var e=k(t);o=g(e,"A",{href:!0});var n=k(o);f=U(n,s),n.forEach(_),r=b(e),e.forEach(_),this.h()},h(){j(o,"href","../organisations/"+a[12].slug)},m(l,e){v(l,t,e),d(t,o),d(o,f),d(t,r)},p:D,d(l){l&&_(t)}}}function ee(a){let t,o,s="Member of",f,r,l=E(a[7]),e=[];for(let n=0;n<l.length;n+=1)e[n]=G(z(a,l,n));return{c(){t=p("section"),o=p("h2"),o.textContent=s,f=$(),r=p("ul");for(let n=0;n<e.length;n+=1)e[n].c()},l(n){t=g(n,"SECTION",{});var i=k(t);o=g(i,"H2",{"data-svelte-h":!0}),y(o)!=="svelte-uvfasz"&&(o.textContent=s),f=b(i),r=g(i,"UL",{});var c=k(r);for(let u=0;u<e.length;u+=1)e[u].l(c);c.forEach(_),i.forEach(_)},m(n,i){v(n,t,i),d(t,o),d(t,f),d(t,r);for(let c=0;c<e.length;c+=1)e[c]&&e[c].m(r,null)},p(n,i){if(i&128){l=E(n[7]);let c;for(c=0;c<l.length;c+=1){const u=z(n,l,c);e[c]?e[c].p(u,i):(e[c]=G(u),e[c].c(),e[c].m(r,null))}for(;c<e.length;c+=1)e[c].d(1);e.length=l.length}},d(n){n&&_(t),N(e,n)}}}function G(a){let t,o,s=a[12].name+"",f,r;return{c(){t=p("li"),o=p("a"),f=T(s),r=$(),this.h()},l(l){t=g(l,"LI",{});var e=k(t);o=g(e,"A",{href:!0});var n=k(o);f=U(n,s),n.forEach(_),r=b(e),e.forEach(_),this.h()},h(){j(o,"href","../organisations/"+a[12].slug)},m(l,e){v(l,t,e),d(t,o),d(o,f),d(t,r)},p:D,d(l){l&&_(t)}}}function te(a){var i,c,u;let t,o,s,f,r,l,e=(((i=a[5])==null?void 0:i.length)||((c=a[6])==null?void 0:c.length))&&Y(a),n=((u=a[7])==null?void 0:u.length)&&ee(a);return s=new X({props:{events:a[4]}}),r=new V({props:{entityName:a[12].name,donationsAsAgent:a[2],donationsAsRecipient:a[3]}}),{c(){e&&e.c(),t=$(),n&&n.c(),o=$(),w(s.$$.fragment),f=$(),w(r.$$.fragment)},l(h){e&&e.l(h),t=b(h),n&&n.l(h),o=b(h),I(s.$$.fragment,h),f=b(h),I(r.$$.fragment,h)},m(h,m){e&&e.m(h,m),v(h,t,m),n&&n.m(h,m),v(h,o,m),O(s,h,m),v(h,f,m),O(r,h,m),l=!0},p(h,m){var C,A,L;((C=h[5])!=null&&C.length||(A=h[6])!=null&&A.length)&&e.p(h,m),(L=h[7])!=null&&L.length&&n.p(h,m)},i(h){l||(H(s.$$.fragment,h),H(r.$$.fragment,h),l=!0)},o(h){M(s.$$.fragment,h),M(r.$$.fragment,h),l=!1},d(h){h&&(_(t),_(o),_(f)),e&&e.d(h),n&&n.d(h),S(s,h),S(r,h)}}}function le(a){let t,o;return t=new W({props:{entity:a[12],entityType:"Organisation",meta:a[0],description:a[1],moments:a[8],sameAs:a[9],sources:a[10],urls:a[11],$$slots:{default:[te]},$$scope:{ctx:a}}}),{c(){w(t.$$.fragment)},l(s){I(t.$$.fragment,s)},m(s,f){O(t,s,f),o=!0},p(s,[f]){const r={};f&2097152&&(r.$$scope={dirty:f,ctx:s}),t.$set(r)},i(s){o||(H(t.$$.fragment,s),o=!0)},o(s){M(t.$$.fragment,s),o=!1},d(s){S(t,s)}}}function ne(a,t,o){let{data:s}=t;const{organisation:f,meta:r,description:l,donationsAsAgent:e,donationsAsRecipient:n,events:i,personMembers:c,organisationMembers:u,memberOf:h,moments:m,sameAs:C,sources:A,urls:L}=s;return a.$$set=q=>{"data"in q&&o(13,s=q.data)},[r,l,e,n,i,c,u,h,m,C,A,L,f,s]}class ce extends K{constructor(t){super(),Q(this,t,ne,le,J,{data:13})}}export{ce as component};