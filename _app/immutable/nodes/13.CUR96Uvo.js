import{s as rt,n as dt}from"../chunks/scheduler.kmZ0wU0i.js";import{S as ft,i as mt,e as l,t as T,s as M,c as i,a as p,b as x,d as c,f as O,k as b,g as W,h as e,j as k}from"../chunks/index.BsTBuasu.js";function ot(s){let t=s[0].item.alternative_names+"",a;return{c(){a=T(t)},l(n){a=x(n,t)},m(n,_){W(n,a,_)},p(n,_){_&1&&t!==(t=n[0].item.alternative_names+"")&&k(a,t)},d(n){n&&c(a)}}}function st(s){let t,a,n="About",_,E,v=s[0].item.description+"",u;return{c(){t=l("article"),a=l("h2"),a.textContent=n,_=M(),E=l("p"),u=T(v)},l(D){t=i(D,"ARTICLE",{});var h=p(t);a=i(h,"H2",{"data-svelte-h":!0}),b(a)!=="svelte-1h16os9"&&(a.textContent=n),_=O(h),E=i(h,"P",{});var d=p(E);u=x(d,v),d.forEach(c),h.forEach(c)},m(D,h){W(D,t,h),e(t,a),e(t,_),e(t,E),e(E,u)},p(D,h){h&1&&v!==(v=D[0].item.description+"")&&k(u,v)},d(D){D&&c(t)}}}function _t(s){let t,a,n=s[0].item.name+"",_,E,v,u,D="Metadata",h,d,A,X="Alternative names",g,z,L,Y="Gender",q,w=s[0].item.gender+"",B,H,Z="Nationality",y,N=s[0].item.nationality+"",F,I,$="Ethnicity",P,R=s[0].item.ethnicity+"",J,S,tt="Languages",j,G=s[0].item.languages+"",K,U,r=s[0].item.alternative_names&&ot(s),f=s[0].item.description&&st(s);return{c(){t=l("article"),a=l("h1"),_=T(n),E=M(),v=l("section"),u=l("h2"),u.textContent=D,h=M(),d=l("dl"),A=l("dt"),A.textContent=X,g=l("dd"),r&&r.c(),z=M(),L=l("dt"),L.textContent=Y,q=l("dd"),B=T(w),H=l("dt"),H.textContent=Z,y=l("dd"),F=T(N),I=l("dt"),I.textContent=$,P=l("dd"),J=T(R),S=l("dt"),S.textContent=tt,j=l("dd"),K=T(G),U=M(),f&&f.c()},l(o){t=i(o,"ARTICLE",{});var m=p(t);a=i(m,"H1",{});var et=p(a);_=x(et,n),et.forEach(c),E=O(m),v=i(m,"SECTION",{});var Q=p(v);u=i(Q,"H2",{"data-svelte-h":!0}),b(u)!=="svelte-120cf5n"&&(u.textContent=D),h=O(Q),d=i(Q,"DL",{});var C=p(d);A=i(C,"DT",{"data-svelte-h":!0}),b(A)!=="svelte-1lqvr37"&&(A.textContent=X),g=i(C,"DD",{});var V=p(g);r&&r.l(V),z=O(V),V.forEach(c),L=i(C,"DT",{"data-svelte-h":!0}),b(L)!=="svelte-ae5mer"&&(L.textContent=Y),q=i(C,"DD",{});var at=p(q);B=x(at,w),at.forEach(c),H=i(C,"DT",{"data-svelte-h":!0}),b(H)!=="svelte-1gr8iws"&&(H.textContent=Z),y=i(C,"DD",{});var nt=p(y);F=x(nt,N),nt.forEach(c),I=i(C,"DT",{"data-svelte-h":!0}),b(I)!=="svelte-peof8h"&&(I.textContent=$),P=i(C,"DD",{});var lt=p(P);J=x(lt,R),lt.forEach(c),S=i(C,"DT",{"data-svelte-h":!0}),b(S)!=="svelte-bwofb"&&(S.textContent=tt),j=i(C,"DD",{});var it=p(j);K=x(it,G),it.forEach(c),C.forEach(c),Q.forEach(c),U=O(m),f&&f.l(m),m.forEach(c)},m(o,m){W(o,t,m),e(t,a),e(a,_),e(t,E),e(t,v),e(v,u),e(v,h),e(v,d),e(d,A),e(d,g),r&&r.m(g,null),e(g,z),e(d,L),e(d,q),e(q,B),e(d,H),e(d,y),e(y,F),e(d,I),e(d,P),e(P,J),e(d,S),e(d,j),e(j,K),e(t,U),f&&f.m(t,null)},p(o,[m]){m&1&&n!==(n=o[0].item.name+"")&&k(_,n),o[0].item.alternative_names?r?r.p(o,m):(r=ot(o),r.c(),r.m(g,z)):r&&(r.d(1),r=null),m&1&&w!==(w=o[0].item.gender+"")&&k(B,w),m&1&&N!==(N=o[0].item.nationality+"")&&k(F,N),m&1&&R!==(R=o[0].item.ethnicity+"")&&k(J,R),m&1&&G!==(G=o[0].item.languages+"")&&k(K,G),o[0].item.description?f?f.p(o,m):(f=st(o),f.c(),f.m(t,null)):f&&(f.d(1),f=null)},i:dt,o:dt,d(o){o&&c(t),r&&r.d(),f&&f.d()}}}function ct(s,t,a){let{data:n}=t;return s.$$set=_=>{"data"in _&&a(0,n=_.data)},[n]}class ut extends ft{constructor(t){super(),mt(this,t,ct,_t,rt,{data:0})}}export{ut as component};
