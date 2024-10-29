import{s as B,n as L}from"../chunks/scheduler.CGxai6gC.js";import{S as F,i as G,l as U,n as j,o as q,p as z,q as P,r as R,s as v,a as $,d as p,f as _,e as u,c as m,h as d,g as A,k as g,u as y,t as I,j as O,b as w}from"../chunks/index.CClN3njN.js";import{e as C}from"../chunks/each.CNtapdtK.js";import{E as J,D as K}from"../chunks/DonationsList.D7LiI1jB.js";function H(f,t,o){const a=f.slice();return a[9]=t[o],a}function M(f,t,o){const a=f.slice();return a[9]=t[o],a}function S(f,t,o){const a=f.slice();return a[15]=t[o],a}function Q(f){var s,i;let t,o,a="Members",c,r,l=((s=f[4])==null?void 0:s.length)&&V(f),e=((i=f[5])==null?void 0:i.length)&&W(f);return{c(){t=u("section"),o=u("h2"),o.textContent=a,c=v(),l&&l.c(),r=v(),e&&e.c()},l(n){t=m(n,"SECTION",{});var h=d(t);o=m(h,"H2",{"data-svelte-h":!0}),A(o)!=="svelte-1vj8wcn"&&(o.textContent=a),c=$(h),l&&l.l(h),r=$(h),e&&e.l(h),h.forEach(_)},m(n,h){p(n,t,h),g(t,o),g(t,c),l&&l.m(t,null),g(t,r),e&&e.m(t,null)},p(n,h){var b,k;(b=n[4])!=null&&b.length&&l.p(n,h),(k=n[5])!=null&&k.length&&e.p(n,h)},d(n){n&&_(t),l&&l.d(),e&&e.d()}}}function V(f){let t,o="People",a,c,r=C(f[4]),l=[];for(let e=0;e<r.length;e+=1)l[e]=D(S(f,r,e));return{c(){t=u("h3"),t.textContent=o,a=v(),c=u("ul");for(let e=0;e<l.length;e+=1)l[e].c()},l(e){t=m(e,"H3",{"data-svelte-h":!0}),A(t)!=="svelte-1wtnxtv"&&(t.textContent=o),a=$(e),c=m(e,"UL",{});var s=d(c);for(let i=0;i<l.length;i+=1)l[i].l(s);s.forEach(_)},m(e,s){p(e,t,s),p(e,a,s),p(e,c,s);for(let i=0;i<l.length;i+=1)l[i]&&l[i].m(c,null)},p(e,s){if(s&16){r=C(e[4]);let i;for(i=0;i<r.length;i+=1){const n=S(e,r,i);l[i]?l[i].p(n,s):(l[i]=D(n),l[i].c(),l[i].m(c,null))}for(;i<l.length;i+=1)l[i].d(1);l.length=r.length}},d(e){e&&(_(t),_(a),_(c)),y(l,e)}}}function D(f){let t,o,a=f[15].name+"",c,r;return{c(){t=u("li"),o=u("a"),c=I(a),r=v(),this.h()},l(l){t=m(l,"LI",{});var e=d(t);o=m(e,"A",{href:!0});var s=d(o);c=O(s,a),s.forEach(_),r=$(e),e.forEach(_),this.h()},h(){w(o,"href","../people/"+f[15].slug)},m(l,e){p(l,t,e),g(t,o),g(o,c),g(t,r)},p:L,d(l){l&&_(t)}}}function W(f){let t,o="Organisations",a,c,r=C(f[5]),l=[];for(let e=0;e<r.length;e+=1)l[e]=N(M(f,r,e));return{c(){t=u("h3"),t.textContent=o,a=v(),c=u("ul");for(let e=0;e<l.length;e+=1)l[e].c()},l(e){t=m(e,"H3",{"data-svelte-h":!0}),A(t)!=="svelte-8cxkzb"&&(t.textContent=o),a=$(e),c=m(e,"UL",{});var s=d(c);for(let i=0;i<l.length;i+=1)l[i].l(s);s.forEach(_)},m(e,s){p(e,t,s),p(e,a,s),p(e,c,s);for(let i=0;i<l.length;i+=1)l[i]&&l[i].m(c,null)},p(e,s){if(s&32){r=C(e[5]);let i;for(i=0;i<r.length;i+=1){const n=M(e,r,i);l[i]?l[i].p(n,s):(l[i]=N(n),l[i].c(),l[i].m(c,null))}for(;i<l.length;i+=1)l[i].d(1);l.length=r.length}},d(e){e&&(_(t),_(a),_(c)),y(l,e)}}}function N(f){let t,o,a=f[9].name+"",c,r;return{c(){t=u("li"),o=u("a"),c=I(a),r=v(),this.h()},l(l){t=m(l,"LI",{});var e=d(t);o=m(e,"A",{href:!0});var s=d(o);c=O(s,a),s.forEach(_),r=$(e),e.forEach(_),this.h()},h(){w(o,"href","../organisations/"+f[9].slug)},m(l,e){p(l,t,e),g(t,o),g(o,c),g(t,r)},p:L,d(l){l&&_(t)}}}function X(f){let t,o,a="Member of",c,r,l=C(f[6]),e=[];for(let s=0;s<l.length;s+=1)e[s]=T(H(f,l,s));return{c(){t=u("section"),o=u("h2"),o.textContent=a,c=v(),r=u("ul");for(let s=0;s<e.length;s+=1)e[s].c()},l(s){t=m(s,"SECTION",{});var i=d(t);o=m(i,"H2",{"data-svelte-h":!0}),A(o)!=="svelte-uvfasz"&&(o.textContent=a),c=$(i),r=m(i,"UL",{});var n=d(r);for(let h=0;h<e.length;h+=1)e[h].l(n);n.forEach(_),i.forEach(_)},m(s,i){p(s,t,i),g(t,o),g(t,c),g(t,r);for(let n=0;n<e.length;n+=1)e[n]&&e[n].m(r,null)},p(s,i){if(i&64){l=C(s[6]);let n;for(n=0;n<l.length;n+=1){const h=H(s,l,n);e[n]?e[n].p(h,i):(e[n]=T(h),e[n].c(),e[n].m(r,null))}for(;n<e.length;n+=1)e[n].d(1);e.length=l.length}},d(s){s&&_(t),y(e,s)}}}function T(f){let t,o,a=f[9].name+"",c,r;return{c(){t=u("li"),o=u("a"),c=I(a),r=v(),this.h()},l(l){t=m(l,"LI",{});var e=d(t);o=m(e,"A",{href:!0});var s=d(o);c=O(s,a),s.forEach(_),r=$(e),e.forEach(_),this.h()},h(){w(o,"href","../organisations/"+f[9].slug)},m(l,e){p(l,t,e),g(t,o),g(o,c),g(t,r)},p:L,d(l){l&&_(t)}}}function Y(f){var e,s,i;let t,o,a,c,r=(((e=f[4])==null?void 0:e.length)||((s=f[5])==null?void 0:s.length))&&Q(f),l=((i=f[6])==null?void 0:i.length)&&X(f);return a=new K({props:{entityName:f[9].name,donationsAsAgent:f[2],donationsAsRecipient:f[3]}}),{c(){r&&r.c(),t=v(),l&&l.c(),o=v(),U(a.$$.fragment)},l(n){r&&r.l(n),t=$(n),l&&l.l(n),o=$(n),j(a.$$.fragment,n)},m(n,h){r&&r.m(n,h),p(n,t,h),l&&l.m(n,h),p(n,o,h),q(a,n,h),c=!0},p(n,h){var b,k,E;((b=n[4])!=null&&b.length||(k=n[5])!=null&&k.length)&&r.p(n,h),(E=n[6])!=null&&E.length&&l.p(n,h)},i(n){c||(z(a.$$.fragment,n),c=!0)},o(n){P(a.$$.fragment,n),c=!1},d(n){n&&(_(t),_(o)),r&&r.d(n),l&&l.d(n),R(a,n)}}}function Z(f){let t,o;return t=new J({props:{entity:f[9],entityType:"Organisation",meta:f[0],description:f[1],moments:f[7],sources:f[8],$$slots:{default:[Y]},$$scope:{ctx:f}}}),{c(){U(t.$$.fragment)},l(a){j(t.$$.fragment,a)},m(a,c){q(t,a,c),o=!0},p(a,[c]){const r={};c&262144&&(r.$$scope={dirty:c,ctx:a}),t.$set(r)},i(a){o||(z(t.$$.fragment,a),o=!0)},o(a){P(t.$$.fragment,a),o=!1},d(a){R(t,a)}}}function x(f,t,o){let{data:a}=t;const{organisation:c,meta:r,description:l,donationsAsAgent:e,donationsAsRecipient:s,personMembers:i,organisationMembers:n,memberOf:h,moments:b,sources:k}=a;return f.$$set=E=>{"data"in E&&o(10,a=E.data)},[r,l,e,s,i,n,h,b,k,c,a]}class ie extends F{constructor(t){super(),G(this,t,x,Z,B,{data:10})}}export{ie as component};