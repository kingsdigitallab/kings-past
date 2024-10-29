import{s as X,n as A}from"../chunks/scheduler.CGxai6gC.js";import{S as Y,i as Z,s as k,l as R,m as x,f as h,a as b,n as j,d as v,o as z,p as F,q as K,r as M,e as m,c as d,h as p,g as w,k as u,u as D,t as E,j as $,b as L}from"../chunks/index.CClN3njN.js";import{e as C}from"../chunks/each.CNtapdtK.js";import{E as ee,D as te}from"../chunks/DonationsList.D7LiI1jB.js";import{t as I}from"../chunks/config.gUoqXaG8.js";function le(a){return a.start_date!==a.end_date?`${new Date(a.start_date).toLocaleDateString()}–${new Date(a.end_date).toLocaleDateString()}`:new Date(a.start_date).toLocaleDateString()}function y(a,t,o){const c=a.slice();return c[16]=t[o],c}function N(a,t,o){const c=a.slice();return c[16]=t[o],c}function O(a,t,o){const c=a.slice();return c[14]=t[o],c}function T(a,t,o){const c=a.slice();return c[23]=t[o],c}function ne(a){let t,o,c="Events",_,f,r=C(a[5]),e=[];for(let l=0;l<r.length;l+=1)e[l]=H(T(a,r,l));return{c(){t=m("section"),o=m("h2"),o.textContent=c,_=k(),f=m("ul");for(let l=0;l<e.length;l+=1)e[l].c()},l(l){t=d(l,"SECTION",{});var s=p(t);o=d(s,"H2",{"data-svelte-h":!0}),w(o)!=="svelte-1b7vw6v"&&(o.textContent=c),_=b(s),f=d(s,"UL",{});var n=p(f);for(let i=0;i<e.length;i+=1)e[i].l(n);n.forEach(h),s.forEach(h)},m(l,s){v(l,t,s),u(t,o),u(t,_),u(t,f);for(let n=0;n<e.length;n+=1)e[n]&&e[n].m(f,null)},p(l,s){if(s&32){r=C(l[5]);let n;for(n=0;n<r.length;n+=1){const i=T(l,r,n);e[n]?e[n].p(i,s):(e[n]=H(i),e[n].c(),e[n].m(f,null))}for(;n<e.length;n+=1)e[n].d(1);e.length=r.length}},d(l){l&&h(t),D(e,l)}}}function H(a){let t,o,c=le(a[23])+"",_,f,r=a[23].name+"",e,l;return{c(){t=m("li"),o=m("a"),_=E(c),f=E(" — "),e=E(r),l=k(),this.h()},l(s){t=d(s,"LI",{});var n=p(t);o=d(n,"A",{href:!0});var i=p(o);_=$(i,c),f=$(i," — "),e=$(i,r),i.forEach(h),l=b(n),n.forEach(h),this.h()},h(){L(o,"href","../events/"+a[23].slug)},m(s,n){v(s,t,n),u(t,o),u(o,_),u(o,f),u(o,e),u(t,l)},p:A,d(s){s&&h(t)}}}function oe(a){let t,o,c="Knows",_,f,r=C(a[14]),e=[];for(let l=0;l<r.length;l+=1)e[l]=U(O(a,r,l));return{c(){t=m("section"),o=m("h2"),o.textContent=c,_=k(),f=m("ul");for(let l=0;l<e.length;l+=1)e[l].c()},l(l){t=d(l,"SECTION",{});var s=p(t);o=d(s,"H2",{"data-svelte-h":!0}),w(o)!=="svelte-18rnh06"&&(o.textContent=c),_=b(s),f=d(s,"UL",{});var n=p(f);for(let i=0;i<e.length;i+=1)e[i].l(n);n.forEach(h),s.forEach(h)},m(l,s){v(l,t,s),u(t,o),u(t,_),u(t,f);for(let n=0;n<e.length;n+=1)e[n]&&e[n].m(f,null)},p(l,s){if(s&24577){r=C(l[14]);let n;for(n=0;n<r.length;n+=1){const i=O(l,r,n);e[n]?e[n].p(i,s):(e[n]=U(i),e[n].c(),e[n].m(f,null))}for(;n<e.length;n+=1)e[n].d(1);e.length=r.length}},d(l){l&&h(t),D(e,l)}}}function ae(a){let t,o=a[13][a[14].person].name+"",c;return{c(){t=m("a"),c=E(o),this.h()},l(_){t=d(_,"A",{href:!0});var f=p(t);c=$(f,o),f.forEach(h),this.h()},h(){L(t,"href",a[14].person)},m(_,f){v(_,t,f),u(t,c)},p:A,d(_){_&&h(t)}}}function ie(a){let t,o=a[13][a[14].knows].name+"",c;return{c(){t=m("a"),c=E(o),this.h()},l(_){t=d(_,"A",{href:!0});var f=p(t);c=$(f,o),f.forEach(h),this.h()},h(){L(t,"href",a[14].knows)},m(_,f){v(_,t,f),u(t,c)},p:A,d(_){_&&h(t)}}}function re(a){let t,o,c=a[14].relationship.toLowerCase()+"",_;return{c(){t=m("span"),o=E(", "),_=E(c)},l(f){t=d(f,"SPAN",{});var r=p(t);o=$(r,", "),_=$(r,c),r.forEach(h)},m(f,r){v(f,t,r),u(t,o),u(t,_)},p:A,d(f){f&&h(t)}}}function U(a){let t,o,c;function _(l,s){return l[14].person===l[0].slug?ie:ae}let r=_(a)(a),e=a[14].relationship&&re(a);return{c(){t=m("li"),r.c(),o=k(),e&&e.c(),c=k()},l(l){t=d(l,"LI",{});var s=p(t);r.l(s),o=b(s),e&&e.l(s),c=b(s),s.forEach(h)},m(l,s){v(l,t,s),r.m(t,null),u(t,o),e&&e.m(t,null),u(t,c)},p(l,s){r.p(l,s),l[14].relationship&&e.p(l,s)},d(l){l&&h(t),r.d(),e&&e.d()}}}function se(a){let t,o,c="Member of",_,f,r=C(a[8]),e=[];for(let l=0;l<r.length;l+=1)e[l]=P(N(a,r,l));return{c(){t=m("section"),o=m("h2"),o.textContent=c,_=k(),f=m("ul");for(let l=0;l<e.length;l+=1)e[l].c()},l(l){t=d(l,"SECTION",{});var s=p(t);o=d(s,"H2",{"data-svelte-h":!0}),w(o)!=="svelte-uvfasz"&&(o.textContent=c),_=b(s),f=d(s,"UL",{});var n=p(f);for(let i=0;i<e.length;i+=1)e[i].l(n);n.forEach(h),s.forEach(h)},m(l,s){v(l,t,s),u(t,o),u(t,_),u(t,f);for(let n=0;n<e.length;n+=1)e[n]&&e[n].m(f,null)},p(l,s){if(s&256){r=C(l[8]);let n;for(n=0;n<r.length;n+=1){const i=N(l,r,n);e[n]?e[n].p(i,s):(e[n]=P(i),e[n].c(),e[n].m(f,null))}for(;n<e.length;n+=1)e[n].d(1);e.length=r.length}},d(l){l&&h(t),D(e,l)}}}function P(a){let t,o,c=a[16].name+"",_,f;return{c(){t=m("li"),o=m("a"),_=E(c),f=k(),this.h()},l(r){t=d(r,"LI",{});var e=p(t);o=d(e,"A",{href:!0});var l=p(o);_=$(l,c),l.forEach(h),f=b(e),e.forEach(h),this.h()},h(){L(o,"href","../organisations/"+a[16].slug)},m(r,e){v(r,t,e),u(t,o),u(o,_),u(t,f)},p:A,d(r){r&&h(t)}}}function fe(a){let t,o,c="Funded",_,f,r=C(a[7]),e=[];for(let l=0;l<r.length;l+=1)e[l]=q(y(a,r,l));return{c(){t=m("section"),o=m("h2"),o.textContent=c,_=k(),f=m("ul");for(let l=0;l<e.length;l+=1)e[l].c()},l(l){t=d(l,"SECTION",{});var s=p(t);o=d(s,"H2",{"data-svelte-h":!0}),w(o)!=="svelte-19x0aa0"&&(o.textContent=c),_=b(s),f=d(s,"UL",{});var n=p(f);for(let i=0;i<e.length;i+=1)e[i].l(n);n.forEach(h),s.forEach(h)},m(l,s){v(l,t,s),u(t,o),u(t,_),u(t,f);for(let n=0;n<e.length;n+=1)e[n]&&e[n].m(f,null)},p(l,s){if(s&128){r=C(l[7]);let n;for(n=0;n<r.length;n+=1){const i=y(l,r,n);e[n]?e[n].p(i,s):(e[n]=q(i),e[n].c(),e[n].m(f,null))}for(;n<e.length;n+=1)e[n].d(1);e.length=r.length}},d(l){l&&h(t),D(e,l)}}}function q(a){let t,o,c=a[16].name+"",_,f;return{c(){t=m("li"),o=m("a"),_=E(c),f=k(),this.h()},l(r){t=d(r,"LI",{});var e=p(t);o=d(e,"A",{href:!0});var l=p(o);_=$(l,c),l.forEach(h),f=b(e),e.forEach(h),this.h()},h(){L(o,"href","../organisations/"+a[16].slug)},m(r,e){v(r,t,e),u(t,o),u(o,_),u(t,f)},p:A,d(r){r&&h(t)}}}function ce(a){let t,o,c,_,f,r,e=a[5]&&a[5].length&&ne(a),l=a[14]&&a[14].length&&oe(a),s=a[8]&&a[8].length&&se(a),n=a[7]&&a[7].length&&fe(a);return f=new te({props:{entityName:a[0].name,donationsAsAgent:a[3],donationsAsRecipient:a[4]}}),{c(){e&&e.c(),t=k(),l&&l.c(),o=k(),s&&s.c(),c=k(),n&&n.c(),_=k(),R(f.$$.fragment)},l(i){e&&e.l(i),t=b(i),l&&l.l(i),o=b(i),s&&s.l(i),c=b(i),n&&n.l(i),_=b(i),j(f.$$.fragment,i)},m(i,g){e&&e.m(i,g),v(i,t,g),l&&l.m(i,g),v(i,o,g),s&&s.m(i,g),v(i,c,g),n&&n.m(i,g),v(i,_,g),z(f,i,g),r=!0},p(i,g){i[5]&&i[5].length&&e.p(i,g),i[14]&&i[14].length&&l.p(i,g),i[8]&&i[8].length&&s.p(i,g),i[7]&&i[7].length&&n.p(i,g)},i(i){r||(F(f.$$.fragment,i),r=!0)},o(i){K(f.$$.fragment,i),r=!1},d(i){i&&(h(t),h(o),h(c),h(_)),e&&e.d(i),l&&l.d(i),s&&s.d(i),n&&n.d(i),M(f,i)}}}function _e(a){var f;let t,o,c,_;return document.title=t=((f=a[0])==null?void 0:f.name)+" | "+I,c=new ee({props:{entity:a[0],entityType:"Person",meta:a[1],feature:a[6],description:a[2],moments:a[9],sameAs:a[11],sources:a[10],urls:a[12],$$slots:{default:[ce]},$$scope:{ctx:a}}}),{c(){o=k(),R(c.$$.fragment)},l(r){x("svelte-1ktpoor",document.head).forEach(h),o=b(r),j(c.$$.fragment,r)},m(r,e){v(r,o,e),z(c,r,e),_=!0},p(r,[e]){var s;(!_||e&1)&&t!==(t=((s=r[0])==null?void 0:s.name)+" | "+I)&&(document.title=t);const l={};e&67108864&&(l.$$scope={dirty:e,ctx:r}),c.$set(l)},i(r){_||(F(c.$$.fragment,r),_=!0)},o(r){K(c.$$.fragment,r),_=!1},d(r){r&&h(o),M(c,r)}}}function he(a,t,o){let{data:c}=t;const{person:_,meta:f,description:r,donationsAsAgent:e,donationsAsRecipient:l,events:s,feature:n,funded:i,knows:g,memberOf:B,moments:G,sources:J,sameAs:Q,urls:V,people:W}=c;return a.$$set=S=>{"data"in S&&o(15,c=S.data)},[_,f,r,e,l,s,n,i,B,G,J,Q,V,W,g,c]}class ve extends Y{constructor(t){super(),Z(this,t,he,_e,X,{data:15})}}export{ve as component};