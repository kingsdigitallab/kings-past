import{s as H,n as q,f as I}from"../chunks/scheduler.BmBaUOvj.js";import{S as L,i as O,e as E,t as m,s as w,c as b,h as T,j as f,f as _,a as A,b as R,d as x,k as a,w as S}from"../chunks/index.C_nRBhsY.js";import{p as y}from"../chunks/stores.DKOdH4c3.js";function z(n){var U;let e,o,r=n[0].status+"",p,$,i,c=((U=n[0].error)==null?void 0:U.message)+"",d,k,l,C,h=n[0].url.pathname+"",g,P;return{c(){e=E("article"),o=E("h1"),p=m(r),$=w(),i=E("output"),d=m(c),k=w(),l=E("p"),C=m("Error loading the page "),g=m(h),P=m("."),this.h()},l(s){e=b(s,"ARTICLE",{});var t=T(e);o=b(t,"H1",{});var u=T(o);p=f(u,r),u.forEach(_),$=A(t),i=b(t,"OUTPUT",{class:!0});var j=T(i);d=f(j,c),j.forEach(_),k=A(t),l=b(t,"P",{});var v=T(l);C=f(v,"Error loading the page "),g=f(v,h),P=f(v,"."),v.forEach(_),t.forEach(_),this.h()},h(){R(i,"class","svelte-f58rkg")},m(s,t){x(s,e,t),a(e,o),a(o,p),a(e,$),a(e,i),a(i,d),a(e,k),a(e,l),a(l,C),a(l,g),a(l,P)},p(s,[t]){var u;t&1&&r!==(r=s[0].status+"")&&S(p,r),t&1&&c!==(c=((u=s[0].error)==null?void 0:u.message)+"")&&S(d,c),t&1&&h!==(h=s[0].url.pathname+"")&&S(g,h)},i:q,o:q,d(s){s&&_(e)}}}function B(n,e,o){let r;return I(n,y,p=>o(0,r=p)),[r]}class J extends L{constructor(e){super(),O(this,e,B,z,H,{})}}export{J as component};