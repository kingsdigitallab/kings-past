import{s as I,b as E,t as m,c as y,d as b,f as T,g as f,h as _,i as A,k as L,l as O,m as a,q as P,n as H,y as R}from"../chunks/scheduler.C3aHL5nM.js";import{S as j,i as w}from"../chunks/index.B0DoMMHu.js";import{p as x}from"../chunks/stores.Cr2SqDef.js";function z(n){var S;let t,o,r=n[0].status+"",i,$,p,c=((S=n[0].error)==null?void 0:S.message)+"",d,k,l,q,h=n[0].url.pathname+"",g,C;return{c(){t=E("article"),o=E("h1"),i=m(r),$=y(),p=E("output"),d=m(c),k=y(),l=E("p"),q=m("Error loading the page "),g=m(h),C=m("."),this.h()},l(s){t=b(s,"ARTICLE",{});var e=T(t);o=b(e,"H1",{});var u=T(o);i=f(u,r),u.forEach(_),$=A(e),p=b(e,"OUTPUT",{class:!0});var U=T(p);d=f(U,c),U.forEach(_),k=A(e),l=b(e,"P",{});var v=T(l);q=f(v,"Error loading the page "),g=f(v,h),C=f(v,"."),v.forEach(_),e.forEach(_),this.h()},h(){L(p,"class","svelte-f58rkg")},m(s,e){O(s,t,e),a(t,o),a(o,i),a(t,$),a(t,p),a(p,d),a(t,k),a(t,l),a(l,q),a(l,g),a(l,C)},p(s,[e]){var u;e&1&&r!==(r=s[0].status+"")&&P(i,r),e&1&&c!==(c=((u=s[0].error)==null?void 0:u.message)+"")&&P(d,c),e&1&&h!==(h=s[0].url.pathname+"")&&P(g,h)},i:H,o:H,d(s){s&&_(t)}}}function B(n,t,o){let r;return R(n,x,i=>o(0,r=i)),[r]}class J extends j{constructor(t){super(),w(this,t,B,z,I,{})}}export{J as component};
