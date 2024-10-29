import{s as G,n as L}from"../chunks/scheduler.CGxai6gC.js";import{S as J,i as K,l as j,n as q,o as z,p as P,q as R,r as B,s as v,a as $,d as p,f as u,e as _,c as m,h as d,g as A,k as g,u as y,t as I,j as O,b as w}from"../chunks/index.CClN3njN.js";import{e as C}from"../chunks/each.CNtapdtK.js";import{E as Q,D as V}from"../chunks/DonationsList.D7LiI1jB.js";function M(f,t,o){const a=f.slice();return a[11]=t[o],a}function S(f,t,o){const a=f.slice();return a[11]=t[o],a}function D(f,t,o){const a=f.slice();return a[17]=t[o],a}function W(f){var s,i;let t,o,a="Members",c,r,l=((s=f[4])==null?void 0:s.length)&&X(f),e=((i=f[5])==null?void 0:i.length)&&Y(f);return{c(){t=_("section"),o=_("h2"),o.textContent=a,c=v(),l&&l.c(),r=v(),e&&e.c()},l(n){t=m(n,"SECTION",{});var h=d(t);o=m(h,"H2",{"data-svelte-h":!0}),A(o)!=="svelte-1vj8wcn"&&(o.textContent=a),c=$(h),l&&l.l(h),r=$(h),e&&e.l(h),h.forEach(u)},m(n,h){p(n,t,h),g(t,o),g(t,c),l&&l.m(t,null),g(t,r),e&&e.m(t,null)},p(n,h){var b,k;(b=n[4])!=null&&b.length&&l.p(n,h),(k=n[5])!=null&&k.length&&e.p(n,h)},d(n){n&&u(t),l&&l.d(),e&&e.d()}}}function X(f){let t,o="People",a,c,r=C(f[4]),l=[];for(let e=0;e<r.length;e+=1)l[e]=N(D(f,r,e));return{c(){t=_("h3"),t.textContent=o,a=v(),c=_("ul");for(let e=0;e<l.length;e+=1)l[e].c()},l(e){t=m(e,"H3",{"data-svelte-h":!0}),A(t)!=="svelte-1wtnxtv"&&(t.textContent=o),a=$(e),c=m(e,"UL",{});var s=d(c);for(let i=0;i<l.length;i+=1)l[i].l(s);s.forEach(u)},m(e,s){p(e,t,s),p(e,a,s),p(e,c,s);for(let i=0;i<l.length;i+=1)l[i]&&l[i].m(c,null)},p(e,s){if(s&16){r=C(e[4]);let i;for(i=0;i<r.length;i+=1){const n=D(e,r,i);l[i]?l[i].p(n,s):(l[i]=N(n),l[i].c(),l[i].m(c,null))}for(;i<l.length;i+=1)l[i].d(1);l.length=r.length}},d(e){e&&(u(t),u(a),u(c)),y(l,e)}}}function N(f){let t,o,a=f[17].name+"",c,r;return{c(){t=_("li"),o=_("a"),c=I(a),r=v(),this.h()},l(l){t=m(l,"LI",{});var e=d(t);o=m(e,"A",{href:!0});var s=d(o);c=O(s,a),s.forEach(u),r=$(e),e.forEach(u),this.h()},h(){w(o,"href","../people/"+f[17].slug)},m(l,e){p(l,t,e),g(t,o),g(o,c),g(t,r)},p:L,d(l){l&&u(t)}}}function Y(f){let t,o="Organisations",a,c,r=C(f[5]),l=[];for(let e=0;e<r.length;e+=1)l[e]=T(S(f,r,e));return{c(){t=_("h3"),t.textContent=o,a=v(),c=_("ul");for(let e=0;e<l.length;e+=1)l[e].c()},l(e){t=m(e,"H3",{"data-svelte-h":!0}),A(t)!=="svelte-8cxkzb"&&(t.textContent=o),a=$(e),c=m(e,"UL",{});var s=d(c);for(let i=0;i<l.length;i+=1)l[i].l(s);s.forEach(u)},m(e,s){p(e,t,s),p(e,a,s),p(e,c,s);for(let i=0;i<l.length;i+=1)l[i]&&l[i].m(c,null)},p(e,s){if(s&32){r=C(e[5]);let i;for(i=0;i<r.length;i+=1){const n=S(e,r,i);l[i]?l[i].p(n,s):(l[i]=T(n),l[i].c(),l[i].m(c,null))}for(;i<l.length;i+=1)l[i].d(1);l.length=r.length}},d(e){e&&(u(t),u(a),u(c)),y(l,e)}}}function T(f){let t,o,a=f[11].name+"",c,r;return{c(){t=_("li"),o=_("a"),c=I(a),r=v(),this.h()},l(l){t=m(l,"LI",{});var e=d(t);o=m(e,"A",{href:!0});var s=d(o);c=O(s,a),s.forEach(u),r=$(e),e.forEach(u),this.h()},h(){w(o,"href","../organisations/"+f[11].slug)},m(l,e){p(l,t,e),g(t,o),g(o,c),g(t,r)},p:L,d(l){l&&u(t)}}}function Z(f){let t,o,a="Member of",c,r,l=C(f[6]),e=[];for(let s=0;s<l.length;s+=1)e[s]=U(M(f,l,s));return{c(){t=_("section"),o=_("h2"),o.textContent=a,c=v(),r=_("ul");for(let s=0;s<e.length;s+=1)e[s].c()},l(s){t=m(s,"SECTION",{});var i=d(t);o=m(i,"H2",{"data-svelte-h":!0}),A(o)!=="svelte-uvfasz"&&(o.textContent=a),c=$(i),r=m(i,"UL",{});var n=d(r);for(let h=0;h<e.length;h+=1)e[h].l(n);n.forEach(u),i.forEach(u)},m(s,i){p(s,t,i),g(t,o),g(t,c),g(t,r);for(let n=0;n<e.length;n+=1)e[n]&&e[n].m(r,null)},p(s,i){if(i&64){l=C(s[6]);let n;for(n=0;n<l.length;n+=1){const h=M(s,l,n);e[n]?e[n].p(h,i):(e[n]=U(h),e[n].c(),e[n].m(r,null))}for(;n<e.length;n+=1)e[n].d(1);e.length=l.length}},d(s){s&&u(t),y(e,s)}}}function U(f){let t,o,a=f[11].name+"",c,r;return{c(){t=_("li"),o=_("a"),c=I(a),r=v(),this.h()},l(l){t=m(l,"LI",{});var e=d(t);o=m(e,"A",{href:!0});var s=d(o);c=O(s,a),s.forEach(u),r=$(e),e.forEach(u),this.h()},h(){w(o,"href","../organisations/"+f[11].slug)},m(l,e){p(l,t,e),g(t,o),g(o,c),g(t,r)},p:L,d(l){l&&u(t)}}}function x(f){var e,s,i;let t,o,a,c,r=(((e=f[4])==null?void 0:e.length)||((s=f[5])==null?void 0:s.length))&&W(f),l=((i=f[6])==null?void 0:i.length)&&Z(f);return a=new V({props:{entityName:f[11].name,donationsAsAgent:f[2],donationsAsRecipient:f[3]}}),{c(){r&&r.c(),t=v(),l&&l.c(),o=v(),j(a.$$.fragment)},l(n){r&&r.l(n),t=$(n),l&&l.l(n),o=$(n),q(a.$$.fragment,n)},m(n,h){r&&r.m(n,h),p(n,t,h),l&&l.m(n,h),p(n,o,h),z(a,n,h),c=!0},p(n,h){var b,k,E;((b=n[4])!=null&&b.length||(k=n[5])!=null&&k.length)&&r.p(n,h),(E=n[6])!=null&&E.length&&l.p(n,h)},i(n){c||(P(a.$$.fragment,n),c=!0)},o(n){R(a.$$.fragment,n),c=!1},d(n){n&&(u(t),u(o)),r&&r.d(n),l&&l.d(n),B(a,n)}}}function ee(f){let t,o;return t=new Q({props:{entity:f[11],entityType:"Organisation",meta:f[0],description:f[1],moments:f[7],sameAs:f[8],sources:f[9],urls:f[10],$$slots:{default:[x]},$$scope:{ctx:f}}}),{c(){j(t.$$.fragment)},l(a){q(t.$$.fragment,a)},m(a,c){z(t,a,c),o=!0},p(a,[c]){const r={};c&1048576&&(r.$$scope={dirty:c,ctx:a}),t.$set(r)},i(a){o||(P(t.$$.fragment,a),o=!0)},o(a){R(t.$$.fragment,a),o=!1},d(a){B(t,a)}}}function te(f,t,o){let{data:a}=t;const{organisation:c,meta:r,description:l,donationsAsAgent:e,donationsAsRecipient:s,personMembers:i,organisationMembers:n,memberOf:h,moments:b,sameAs:k,sources:E,urls:F}=a;return f.$$set=H=>{"data"in H&&o(12,a=H.data)},[r,l,e,s,i,n,h,b,k,E,F,c,a]}class ae extends J{constructor(t){super(),K(this,t,te,ee,G,{data:12})}}export{ae as component};
