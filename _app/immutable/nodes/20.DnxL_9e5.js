import{s as Q,n as A}from"../chunks/scheduler.BmBaUOvj.js";import{S as V,i as W,l as L,n as w,o as I,p as S,q as N,r as O,s as $,a as k,d as v,f as h,e as m,c as p,h as g,g as T,k as u,v as D,t as b,j as E,b as y}from"../chunks/index.C_nRBhsY.js";import{e as C}from"../chunks/each.DhGhqZbU.js";import{E as X}from"../chunks/EntityDetails.BLOKEW8R.js";import{D as Y}from"../chunks/DonationsList.CDJdi_-o.js";import{E as Z}from"../chunks/EventsList.CAU4JT_J.js";function P(r,e,o){const s=r.slice();return s[16]=e[o],s}function U(r,e,o){const s=r.slice();return s[16]=e[o],s}function q(r,e,o){const s=r.slice();return s[14]=e[o],s}function x(r){let e,o,s="Knows",_,a,f=C(r[14]),l=[];for(let t=0;t<f.length;t+=1)l[t]=R(q(r,f,t));return{c(){e=m("section"),o=m("h2"),o.textContent=s,_=$(),a=m("ul");for(let t=0;t<l.length;t+=1)l[t].c()},l(t){e=p(t,"SECTION",{});var c=g(e);o=p(c,"H2",{"data-svelte-h":!0}),T(o)!=="svelte-18rnh06"&&(o.textContent=s),_=k(c),a=p(c,"UL",{});var n=g(a);for(let i=0;i<l.length;i+=1)l[i].l(n);n.forEach(h),c.forEach(h)},m(t,c){v(t,e,c),u(e,o),u(e,_),u(e,a);for(let n=0;n<l.length;n+=1)l[n]&&l[n].m(a,null)},p(t,c){if(c&24577){f=C(t[14]);let n;for(n=0;n<f.length;n+=1){const i=q(t,f,n);l[n]?l[n].p(i,c):(l[n]=R(i),l[n].c(),l[n].m(a,null))}for(;n<l.length;n+=1)l[n].d(1);l.length=f.length}},d(t){t&&h(e),D(l,t)}}}function ee(r){let e,o=r[13][r[14].person].name+"",s;return{c(){e=m("a"),s=b(o),this.h()},l(_){e=p(_,"A",{href:!0});var a=g(e);s=E(a,o),a.forEach(h),this.h()},h(){y(e,"href",r[14].person)},m(_,a){v(_,e,a),u(e,s)},p:A,d(_){_&&h(e)}}}function te(r){let e,o=r[13][r[14].knows].name+"",s;return{c(){e=m("a"),s=b(o),this.h()},l(_){e=p(_,"A",{href:!0});var a=g(e);s=E(a,o),a.forEach(h),this.h()},h(){y(e,"href",r[14].knows)},m(_,a){v(_,e,a),u(e,s)},p:A,d(_){_&&h(e)}}}function le(r){let e,o,s=r[14].relationship.toLowerCase()+"",_;return{c(){e=m("span"),o=b(", "),_=b(s)},l(a){e=p(a,"SPAN",{});var f=g(e);o=E(f,", "),_=E(f,s),f.forEach(h)},m(a,f){v(a,e,f),u(e,o),u(e,_)},p:A,d(a){a&&h(e)}}}function R(r){let e,o,s;function _(t,c){return t[14].person===t[0].slug?te:ee}let f=_(r)(r),l=r[14].relationship&&le(r);return{c(){e=m("li"),f.c(),o=$(),l&&l.c(),s=$()},l(t){e=p(t,"LI",{});var c=g(e);f.l(c),o=k(c),l&&l.l(c),s=k(c),c.forEach(h)},m(t,c){v(t,e,c),f.m(e,null),u(e,o),l&&l.m(e,null),u(e,s)},p(t,c){f.p(t,c),t[14].relationship&&l.p(t,c)},d(t){t&&h(e),f.d(),l&&l.d()}}}function ne(r){let e,o,s="Member of",_,a,f=C(r[8]),l=[];for(let t=0;t<f.length;t+=1)l[t]=j(U(r,f,t));return{c(){e=m("section"),o=m("h2"),o.textContent=s,_=$(),a=m("ul");for(let t=0;t<l.length;t+=1)l[t].c()},l(t){e=p(t,"SECTION",{});var c=g(e);o=p(c,"H2",{"data-svelte-h":!0}),T(o)!=="svelte-uvfasz"&&(o.textContent=s),_=k(c),a=p(c,"UL",{});var n=g(a);for(let i=0;i<l.length;i+=1)l[i].l(n);n.forEach(h),c.forEach(h)},m(t,c){v(t,e,c),u(e,o),u(e,_),u(e,a);for(let n=0;n<l.length;n+=1)l[n]&&l[n].m(a,null)},p(t,c){if(c&256){f=C(t[8]);let n;for(n=0;n<f.length;n+=1){const i=U(t,f,n);l[n]?l[n].p(i,c):(l[n]=j(i),l[n].c(),l[n].m(a,null))}for(;n<l.length;n+=1)l[n].d(1);l.length=f.length}},d(t){t&&h(e),D(l,t)}}}function j(r){let e,o,s=r[16].name+"",_,a;return{c(){e=m("li"),o=m("a"),_=b(s),a=$(),this.h()},l(f){e=p(f,"LI",{});var l=g(e);o=p(l,"A",{href:!0});var t=g(o);_=E(t,s),t.forEach(h),a=k(l),l.forEach(h),this.h()},h(){y(o,"href","../organisations/"+r[16].slug)},m(f,l){v(f,e,l),u(e,o),u(o,_),u(e,a)},p:A,d(f){f&&h(e)}}}function oe(r){let e,o,s="Funded",_,a,f=C(r[7]),l=[];for(let t=0;t<f.length;t+=1)l[t]=z(P(r,f,t));return{c(){e=m("section"),o=m("h2"),o.textContent=s,_=$(),a=m("ul");for(let t=0;t<l.length;t+=1)l[t].c()},l(t){e=p(t,"SECTION",{});var c=g(e);o=p(c,"H2",{"data-svelte-h":!0}),T(o)!=="svelte-19x0aa0"&&(o.textContent=s),_=k(c),a=p(c,"UL",{});var n=g(a);for(let i=0;i<l.length;i+=1)l[i].l(n);n.forEach(h),c.forEach(h)},m(t,c){v(t,e,c),u(e,o),u(e,_),u(e,a);for(let n=0;n<l.length;n+=1)l[n]&&l[n].m(a,null)},p(t,c){if(c&128){f=C(t[7]);let n;for(n=0;n<f.length;n+=1){const i=P(t,f,n);l[n]?l[n].p(i,c):(l[n]=z(i),l[n].c(),l[n].m(a,null))}for(;n<l.length;n+=1)l[n].d(1);l.length=f.length}},d(t){t&&h(e),D(l,t)}}}function z(r){let e,o,s=r[16].name+"",_,a;return{c(){e=m("li"),o=m("a"),_=b(s),a=$(),this.h()},l(f){e=p(f,"LI",{});var l=g(e);o=p(l,"A",{href:!0});var t=g(o);_=E(t,s),t.forEach(h),a=k(l),l.forEach(h),this.h()},h(){y(o,"href","../organisations/"+r[16].slug)},m(f,l){v(f,e,l),u(e,o),u(o,_),u(e,a)},p:A,d(f){f&&h(e)}}}function ie(r){let e,o,s,_,a,f,l;e=new Z({props:{events:r[5]}});let t=r[14]&&r[14].length&&x(r),c=r[8]&&r[8].length&&ne(r),n=r[7]&&r[7].length&&oe(r);return f=new Y({props:{entityName:r[0].name,donationsAsAgent:r[3],donationsAsRecipient:r[4]}}),{c(){L(e.$$.fragment),o=$(),t&&t.c(),s=$(),c&&c.c(),_=$(),n&&n.c(),a=$(),L(f.$$.fragment)},l(i){w(e.$$.fragment,i),o=k(i),t&&t.l(i),s=k(i),c&&c.l(i),_=k(i),n&&n.l(i),a=k(i),w(f.$$.fragment,i)},m(i,d){I(e,i,d),v(i,o,d),t&&t.m(i,d),v(i,s,d),c&&c.m(i,d),v(i,_,d),n&&n.m(i,d),v(i,a,d),I(f,i,d),l=!0},p(i,d){i[14]&&i[14].length&&t.p(i,d),i[8]&&i[8].length&&c.p(i,d),i[7]&&i[7].length&&n.p(i,d)},i(i){l||(S(e.$$.fragment,i),S(f.$$.fragment,i),l=!0)},o(i){N(e.$$.fragment,i),N(f.$$.fragment,i),l=!1},d(i){i&&(h(o),h(s),h(_),h(a)),O(e,i),t&&t.d(i),c&&c.d(i),n&&n.d(i),O(f,i)}}}function re(r){let e,o;return e=new X({props:{entity:r[0],entityType:"Person",meta:r[1],feature:r[6],description:r[2],moments:r[9],sameAs:r[11],sources:r[10],urls:r[12],$$slots:{default:[ie]},$$scope:{ctx:r}}}),{c(){L(e.$$.fragment)},l(s){w(e.$$.fragment,s)},m(s,_){I(e,s,_),o=!0},p(s,[_]){const a={};_&8388608&&(a.$$scope={dirty:_,ctx:s}),e.$set(a)},i(s){o||(S(e.$$.fragment,s),o=!0)},o(s){N(e.$$.fragment,s),o=!1},d(s){O(e,s)}}}function se(r,e,o){let{data:s}=e;const{person:_,meta:a,description:f,donationsAsAgent:l,donationsAsRecipient:t,events:c,feature:n,funded:i,knows:d,memberOf:F,moments:K,sources:M,sameAs:B,urls:G,people:J}=s;return r.$$set=H=>{"data"in H&&o(15,s=H.data)},[_,a,f,l,t,c,n,i,F,K,M,B,G,J,d,s]}class me extends V{constructor(e){super(),W(this,e,se,re,Q,{data:15})}}export{me as component};