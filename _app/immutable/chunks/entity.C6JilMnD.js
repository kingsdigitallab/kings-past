import{s as re,b as ce,e as Y,u as _e,g as he,d as ue,f as Z}from"./scheduler.DA7SJN9v.js";import{S as me,i as ge,e as v,t as A,s as z,c as E,a as C,b as D,d as g,f as S,l as k,g as H,h as u,j as R,q as de,r as ve,w as K,H as Ee,x as be,k as fe}from"./index.Cr2jIE7x.js";import{e as y}from"./each.7MQDpSuO.js";function x(a,e,s){const i=a.slice();return i[9]=e[s],i}function $(a,e,s){const i=a.slice();return i[12]=e[s],i}function ee(a,e,s){const i=a.slice();return i[15]=e[s][0],i[16]=e[s][1],i}function te(a){let e,s=a[15]+"",i,o,r=a[16]+"",_;return{c(){e=v("dt"),i=A(s),o=v("dd"),_=A(r)},l(t){e=E(t,"DT",{});var l=C(e);i=D(l,s),l.forEach(g),o=E(t,"DD",{});var c=C(o);_=D(c,r),c.forEach(g)},m(t,l){H(t,e,l),u(e,i),H(t,o,l),u(o,_)},p(t,l){l&4&&s!==(s=t[15]+"")&&R(i,s),l&4&&r!==(r=t[16]+"")&&R(_,r)},d(t){t&&(g(e),g(o))}}}function le(a){let e,s,i,o,r,_,t,l,c=a[4][0].image_title+"",n;return{c(){e=v("section"),s=v("figure"),i=v("img"),t=z(),l=v("figcaption"),n=A(c),this.h()},l(m){e=E(m,"SECTION",{class:!0});var h=C(e);s=E(h,"FIGURE",{});var w=C(s);i=E(w,"IMG",{src:!0,alt:!0,title:!0,class:!0}),t=S(w),l=E(w,"FIGCAPTION",{});var G=C(l);n=D(G,c),G.forEach(g),w.forEach(g),h.forEach(g),this.h()},h(){Z(i.src,o=a[4][0].image_url)||k(i,"src",o),k(i,"alt",r=a[4][0].image_description),k(i,"title",_=a[4][0].image_title),k(i,"class","svelte-3q4zlo"),k(e,"class","font-serif")},m(m,h){H(m,e,h),u(e,s),u(s,i),u(s,t),u(s,l),u(l,n)},p(m,h){h&16&&!Z(i.src,o=m[4][0].image_url)&&k(i,"src",o),h&16&&r!==(r=m[4][0].image_description)&&k(i,"alt",r),h&16&&_!==(_=m[4][0].image_title)&&k(i,"title",_),h&16&&c!==(c=m[4][0].image_title+"")&&R(n,c)},d(m){m&&g(e)}}}function se(a){let e,s;return{c(){e=v("section"),s=new Ee(!1),this.h()},l(i){e=E(i,"SECTION",{class:!0});var o=C(e);s=be(o,!1),o.forEach(g),this.h()},h(){s.a=null,k(e,"class","md font-serif")},m(i,o){H(i,e,o),s.m(a[3],e)},p(i,o){o&8&&s.p(i[3])},d(i){i&&g(e)}}}function ie(a){let e,s,i="Moments",o,r,_=y(a[5]),t=[];for(let l=0;l<_.length;l+=1)t[l]=ne($(a,_,l));return{c(){e=v("section"),s=v("h2"),s.textContent=i,o=z(),r=v("ol");for(let l=0;l<t.length;l+=1)t[l].c();this.h()},l(l){e=E(l,"SECTION",{class:!0});var c=C(e);s=E(c,"H2",{"data-svelte-h":!0}),fe(s)!=="svelte-1xsrrpt"&&(s.textContent=i),o=S(c),r=E(c,"OL",{class:!0});var n=C(r);for(let m=0;m<t.length;m+=1)t[m].l(n);n.forEach(g),c.forEach(g),this.h()},h(){k(r,"class","svelte-3q4zlo"),k(e,"class","moments svelte-3q4zlo")},m(l,c){H(l,e,c),u(e,s),u(e,o),u(e,r);for(let n=0;n<t.length;n+=1)t[n]&&t[n].m(r,null)},p(l,c){if(c&32){_=y(l[5]);let n;for(n=0;n<_.length;n+=1){const m=$(l,_,n);t[n]?t[n].p(m,c):(t[n]=ne(m),t[n].c(),t[n].m(r,null))}for(;n<t.length;n+=1)t[n].d(1);t.length=_.length}},d(l){l&&g(e),K(t,l)}}}function ne(a){let e,s,i=a[12].title+"",o,r,_;return{c(){e=v("a"),s=v("li"),o=A(i),r=z(),this.h()},l(t){e=E(t,"A",{href:!0});var l=C(e);s=E(l,"LI",{class:!0});var c=C(s);o=D(c,i),c.forEach(g),r=S(l),l.forEach(g),this.h()},h(){k(s,"class","surface-2 svelte-3q4zlo"),k(e,"href",_="../../moments/"+a[12].slug)},m(t,l){H(t,e,l),u(e,s),u(s,o),u(e,r)},p(t,l){l&32&&i!==(i=t[12].title+"")&&R(o,i),l&32&&_!==(_="../../moments/"+t[12].slug)&&k(e,"href",_)},d(t){t&&g(e)}}}function ae(a){let e,s,i="Sources",o,r,_=y(a[6]),t=[];for(let l=0;l<_.length;l+=1)t[l]=oe(x(a,_,l));return{c(){e=v("section"),s=v("h2"),s.textContent=i,o=z(),r=v("ul");for(let l=0;l<t.length;l+=1)t[l].c()},l(l){e=E(l,"SECTION",{});var c=C(e);s=E(c,"H2",{"data-svelte-h":!0}),fe(s)!=="svelte-1315qow"&&(s.textContent=i),o=S(c),r=E(c,"UL",{});var n=C(r);for(let m=0;m<t.length;m+=1)t[m].l(n);n.forEach(g),c.forEach(g)},m(l,c){H(l,e,c),u(e,s),u(e,o),u(e,r);for(let n=0;n<t.length;n+=1)t[n]&&t[n].m(r,null)},p(l,c){if(c&64){_=y(l[6]);let n;for(n=0;n<_.length;n+=1){const m=x(l,_,n);t[n]?t[n].p(m,c):(t[n]=oe(m),t[n].c(),t[n].m(r,null))}for(;n<t.length;n+=1)t[n].d(1);t.length=_.length}},d(l){l&&g(e),K(t,l)}}}function oe(a){let e,s,i=a[9].name+"",o,r,_;return{c(){e=v("li"),s=v("a"),o=A(i),_=z(),this.h()},l(t){e=E(t,"LI",{class:!0});var l=C(e);s=E(l,"A",{href:!0});var c=C(s);o=D(c,i),c.forEach(g),_=S(l),l.forEach(g),this.h()},h(){k(s,"href",r=a[9].url),k(e,"class","svelte-3q4zlo")},m(t,l){H(t,e,l),u(e,s),u(s,o),u(e,_)},p(t,l){l&64&&i!==(i=t[9].name+"")&&R(o,i),l&64&&r!==(r=t[9].url)&&k(s,"href",r)},d(t){t&&g(e)}}}function ke(a){let e,s,i,o,r,_,t,l,c,n,m,h,w,G,U,F,M,L,j=y(Object.entries(a[2])),T=[];for(let f=0;f<j.length;f+=1)T[f]=te(ee(a,j,f));let q=a[4]&&a[4].length>0&&le(a),I=a[3]&&se(a),p=a[5]&&a[5].length&&ie(a);const B=a[8].default,O=ce(B,a,a[7],null);let N=a[6]&&a[6].length&&ae(a);return{c(){e=v("article"),s=v("hgroup"),i=v("p"),o=v("strong"),r=A(a[0]),_=z(),t=v("h1"),l=A(a[1]),n=z(),m=v("section"),h=v("dl");for(let f=0;f<T.length;f+=1)T[f].c();w=z(),q&&q.c(),G=z(),I&&I.c(),U=z(),p&&p.c(),F=z(),O&&O.c(),M=z(),N&&N.c(),this.h()},l(f){e=E(f,"ARTICLE",{});var d=C(e);s=E(d,"HGROUP",{class:!0});var b=C(s);i=E(b,"P",{class:!0});var P=C(i);o=E(P,"STRONG",{});var Q=C(o);r=D(Q,a[0]),Q.forEach(g),P.forEach(g),_=S(b),t=E(b,"H1",{class:!0});var V=C(t);l=D(V,a[1]),V.forEach(g),b.forEach(g),n=S(d),m=E(d,"SECTION",{});var W=C(m);h=E(W,"DL",{class:!0});var X=C(h);for(let J=0;J<T.length;J+=1)T[J].l(X);X.forEach(g),W.forEach(g),w=S(d),q&&q.l(d),G=S(d),I&&I.l(d),U=S(d),p&&p.l(d),F=S(d),O&&O.l(d),M=S(d),N&&N.l(d),d.forEach(g),this.h()},h(){k(i,"class","entity svelte-3q4zlo"),k(t,"class","svelte-3q4zlo"),k(s,"class",c=Y(a[0].toLowerCase())+" svelte-3q4zlo"),k(h,"class","dl-inline")},m(f,d){H(f,e,d),u(e,s),u(s,i),u(i,o),u(o,r),u(s,_),u(s,t),u(t,l),u(e,n),u(e,m),u(m,h);for(let b=0;b<T.length;b+=1)T[b]&&T[b].m(h,null);u(e,w),q&&q.m(e,null),u(e,G),I&&I.m(e,null),u(e,U),p&&p.m(e,null),u(e,F),O&&O.m(e,null),u(e,M),N&&N.m(e,null),L=!0},p(f,[d]){if((!L||d&1)&&R(r,f[0]),(!L||d&2)&&R(l,f[1]),(!L||d&1&&c!==(c=Y(f[0].toLowerCase())+" svelte-3q4zlo"))&&k(s,"class",c),d&4){j=y(Object.entries(f[2]));let b;for(b=0;b<j.length;b+=1){const P=ee(f,j,b);T[b]?T[b].p(P,d):(T[b]=te(P),T[b].c(),T[b].m(h,null))}for(;b<T.length;b+=1)T[b].d(1);T.length=j.length}f[4]&&f[4].length>0?q?q.p(f,d):(q=le(f),q.c(),q.m(e,G)):q&&(q.d(1),q=null),f[3]?I?I.p(f,d):(I=se(f),I.c(),I.m(e,U)):I&&(I.d(1),I=null),f[5]&&f[5].length?p?p.p(f,d):(p=ie(f),p.c(),p.m(e,F)):p&&(p.d(1),p=null),O&&O.p&&(!L||d&128)&&_e(O,B,f,f[7],L?ue(B,f[7],d,null):he(f[7]),null),f[6]&&f[6].length?N?N.p(f,d):(N=ae(f),N.c(),N.m(e,null)):N&&(N.d(1),N=null)},i(f){L||(de(O,f),L=!0)},o(f){ve(O,f),L=!1},d(f){f&&g(e),K(T,f),q&&q.d(),I&&I.d(),p&&p.d(),O&&O.d(f),N&&N.d()}}}function Ce(a,e,s){let{$$slots:i={},$$scope:o}=e,{entityType:r}=e,{entityName:_}=e,{meta:t}=e,{description:l}=e,{feature:c}=e,{moments:n}=e,{sources:m}=e;return a.$$set=h=>{"entityType"in h&&s(0,r=h.entityType),"entityName"in h&&s(1,_=h.entityName),"meta"in h&&s(2,t=h.meta),"description"in h&&s(3,l=h.description),"feature"in h&&s(4,c=h.feature),"moments"in h&&s(5,n=h.moments),"sources"in h&&s(6,m=h.sources),"$$scope"in h&&s(7,o=h.$$scope)},[r,_,t,l,c,n,m,o,i]}class pe extends me{constructor(e){super(),ge(this,e,Ce,ke,re,{entityType:0,entityName:1,meta:2,description:3,feature:4,moments:5,sources:6})}}export{pe as E};
