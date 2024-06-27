import{s as se,a as ie,d as V,u as ae,g as ne,b as fe,e as W}from"./scheduler.DyeQaagj.js";import{S as re,i as oe,e as v,t as D,s as y,c as E,a as p,b as R,d,f as H,l as k,g as q,h,j,q as ce,r as _e,m as le,H as ue,x as he,k as me}from"./index.DYZKNNvD.js";import{e as U}from"./each.D6YF6ztN.js";function X(a,e,t){const s=a.slice();return s[8]=e[t],s}function Y(a,e,t){const s=a.slice();return s[11]=e[t][0],s[12]=e[t][1],s}function Z(a){let e,t=a[11]+"",s,r,c=a[12]+"",u;return{c(){e=v("dt"),s=D(t),r=v("dd"),u=D(c)},l(l){e=E(l,"DT",{});var i=p(e);s=R(i,t),i.forEach(d),r=E(l,"DD",{});var _=p(r);u=R(_,c),_.forEach(d)},m(l,i){q(l,e,i),h(e,s),q(l,r,i),h(r,u)},p(l,i){i&4&&t!==(t=l[11]+"")&&j(s,t),i&4&&c!==(c=l[12]+"")&&j(u,c)},d(l){l&&(d(e),d(r))}}}function x(a){let e,t,s,r,c,u,l,i,_=a[4][0].image_title+"",o;return{c(){e=v("section"),t=v("figure"),s=v("img"),l=y(),i=v("figcaption"),o=D(_),this.h()},l(f){e=E(f,"SECTION",{class:!0});var b=p(e);t=E(b,"FIGURE",{});var L=p(t);s=E(L,"IMG",{src:!0,alt:!0,title:!0,class:!0}),l=H(L),i=E(L,"FIGCAPTION",{});var G=p(i);o=R(G,_),G.forEach(d),L.forEach(d),b.forEach(d),this.h()},h(){W(s.src,r=a[4][0].image_url)||k(s,"src",r),k(s,"alt",c=a[4][0].image_description),k(s,"title",u=a[4][0].image_title),k(s,"class","svelte-19sidl9"),k(e,"class","font-serif")},m(f,b){q(f,e,b),h(e,t),h(t,s),h(t,l),h(t,i),h(i,o)},p(f,b){b&16&&!W(s.src,r=f[4][0].image_url)&&k(s,"src",r),b&16&&c!==(c=f[4][0].image_description)&&k(s,"alt",c),b&16&&u!==(u=f[4][0].image_title)&&k(s,"title",u),b&16&&_!==(_=f[4][0].image_title+"")&&j(o,_)},d(f){f&&d(e)}}}function $(a){let e,t;return{c(){e=v("section"),t=new ue(!1),this.h()},l(s){e=E(s,"SECTION",{class:!0});var r=p(e);t=he(r,!1),r.forEach(d),this.h()},h(){t.a=null,k(e,"class","md font-serif")},m(s,r){q(s,e,r),t.m(a[3],e)},p(s,r){r&8&&t.p(s[3])},d(s){s&&d(e)}}}function ee(a){let e,t,s="Sources",r,c,u=U(a[5]),l=[];for(let i=0;i<u.length;i+=1)l[i]=te(X(a,u,i));return{c(){e=v("section"),t=v("h2"),t.textContent=s,r=y(),c=v("ul");for(let i=0;i<l.length;i+=1)l[i].c()},l(i){e=E(i,"SECTION",{});var _=p(e);t=E(_,"H2",{"data-svelte-h":!0}),me(t)!=="svelte-1315qow"&&(t.textContent=s),r=H(_),c=E(_,"UL",{});var o=p(c);for(let f=0;f<l.length;f+=1)l[f].l(o);o.forEach(d),_.forEach(d)},m(i,_){q(i,e,_),h(e,t),h(e,r),h(e,c);for(let o=0;o<l.length;o+=1)l[o]&&l[o].m(c,null)},p(i,_){if(_&32){u=U(i[5]);let o;for(o=0;o<u.length;o+=1){const f=X(i,u,o);l[o]?l[o].p(f,_):(l[o]=te(f),l[o].c(),l[o].m(c,null))}for(;o<l.length;o+=1)l[o].d(1);l.length=u.length}},d(i){i&&d(e),le(l,i)}}}function te(a){let e,t,s=a[8].name+"",r,c,u;return{c(){e=v("li"),t=v("a"),r=D(s),u=y(),this.h()},l(l){e=E(l,"LI",{class:!0});var i=p(e);t=E(i,"A",{href:!0});var _=p(t);r=R(_,s),_.forEach(d),u=H(i),i.forEach(d),this.h()},h(){k(t,"href",c=a[8].url),k(e,"class","svelte-19sidl9")},m(l,i){q(l,e,i),h(e,t),h(t,r),h(e,u)},p(l,i){i&32&&s!==(s=l[8].name+"")&&j(r,s),i&32&&c!==(c=l[8].url)&&k(t,"href",c)},d(l){l&&d(e)}}}function de(a){let e,t,s,r,c,u,l,i,_,o,f,b,L,G,P,F,S,w=U(Object.entries(a[2])),T=[];for(let n=0;n<w.length;n+=1)T[n]=Z(Y(a,w,n));let C=a[4]&&a[4].length>0&&x(a),I=a[3]&&$(a);const M=a[7].default,O=ie(M,a,a[6],null);let N=a[5]&&a[5].length&&ee(a);return{c(){e=v("article"),t=v("hgroup"),s=v("p"),r=v("strong"),c=D(a[0]),u=y(),l=v("h1"),i=D(a[1]),o=y(),f=v("section"),b=v("dl");for(let n=0;n<T.length;n+=1)T[n].c();L=y(),C&&C.c(),G=y(),I&&I.c(),P=y(),O&&O.c(),F=y(),N&&N.c(),this.h()},l(n){e=E(n,"ARTICLE",{});var m=p(e);t=E(m,"HGROUP",{class:!0});var g=p(t);s=E(g,"P",{class:!0});var A=p(s);r=E(A,"STRONG",{});var B=p(r);c=R(B,a[0]),B.forEach(d),A.forEach(d),u=H(g),l=E(g,"H1",{class:!0});var J=p(l);i=R(J,a[1]),J.forEach(d),g.forEach(d),o=H(m),f=E(m,"SECTION",{});var K=p(f);b=E(K,"DL",{class:!0});var Q=p(b);for(let z=0;z<T.length;z+=1)T[z].l(Q);Q.forEach(d),K.forEach(d),L=H(m),C&&C.l(m),G=H(m),I&&I.l(m),P=H(m),O&&O.l(m),F=H(m),N&&N.l(m),m.forEach(d),this.h()},h(){k(s,"class","entity svelte-19sidl9"),k(l,"class","svelte-19sidl9"),k(t,"class",_=V(a[0].toLowerCase())+" svelte-19sidl9"),k(b,"class","dl-inline")},m(n,m){q(n,e,m),h(e,t),h(t,s),h(s,r),h(r,c),h(t,u),h(t,l),h(l,i),h(e,o),h(e,f),h(f,b);for(let g=0;g<T.length;g+=1)T[g]&&T[g].m(b,null);h(e,L),C&&C.m(e,null),h(e,G),I&&I.m(e,null),h(e,P),O&&O.m(e,null),h(e,F),N&&N.m(e,null),S=!0},p(n,[m]){if((!S||m&1)&&j(c,n[0]),(!S||m&2)&&j(i,n[1]),(!S||m&1&&_!==(_=V(n[0].toLowerCase())+" svelte-19sidl9"))&&k(t,"class",_),m&4){w=U(Object.entries(n[2]));let g;for(g=0;g<w.length;g+=1){const A=Y(n,w,g);T[g]?T[g].p(A,m):(T[g]=Z(A),T[g].c(),T[g].m(b,null))}for(;g<T.length;g+=1)T[g].d(1);T.length=w.length}n[4]&&n[4].length>0?C?C.p(n,m):(C=x(n),C.c(),C.m(e,G)):C&&(C.d(1),C=null),n[3]?I?I.p(n,m):(I=$(n),I.c(),I.m(e,P)):I&&(I.d(1),I=null),O&&O.p&&(!S||m&64)&&ae(O,M,n,n[6],S?fe(M,n[6],m,null):ne(n[6]),null),n[5]&&n[5].length?N?N.p(n,m):(N=ee(n),N.c(),N.m(e,null)):N&&(N.d(1),N=null)},i(n){S||(ce(O,n),S=!0)},o(n){_e(O,n),S=!1},d(n){n&&d(e),le(T,n),C&&C.d(),I&&I.d(),O&&O.d(n),N&&N.d()}}}function ge(a,e,t){let{$$slots:s={},$$scope:r}=e,{entityType:c}=e,{entityName:u}=e,{meta:l}=e,{description:i}=e,{feature:_}=e,{sources:o}=e;return a.$$set=f=>{"entityType"in f&&t(0,c=f.entityType),"entityName"in f&&t(1,u=f.entityName),"meta"in f&&t(2,l=f.meta),"description"in f&&t(3,i=f.description),"feature"in f&&t(4,_=f.feature),"sources"in f&&t(5,o=f.sources),"$$scope"in f&&t(6,r=f.$$scope)},[c,u,l,i,_,o,r,s]}class Te extends re{constructor(e){super(),oe(this,e,ge,de,se,{entityType:0,entityName:1,meta:2,description:3,feature:4,sources:5})}}export{Te as E};
