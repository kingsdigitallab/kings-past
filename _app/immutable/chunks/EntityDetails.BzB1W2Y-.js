import{s as je,r as we,b as g,t as U,c as O,o as K,d as v,f as E,g as G,h,i as L,j as W,k as d,C as _e,l as D,m as _,q,u as Ue,v as Ge,w as qe,p as X,D as me,H as Me,E as Fe}from"./scheduler.C3aHL5nM.js";import{S as Ye,i as ze,t as V,g as Be,b as se,f as Je,c as Ke,a as Qe,m as Ve,d as We}from"./index.B0DoMMHu.js";import{e as z}from"./each.BPs89dqP.js";import{E as de}from"./config.DNfGVc1F.js";import{E as Xe}from"./external-link.BJujLgZc.js";function ge(o,e,t){const i=o.slice();return i[11]=e[t],i}function ve(o,e,t){const i=o.slice();return i[14]=e[t],i}function Ee(o,e,t){const i=o.slice();return i[17]=e[t],i}function pe(o,e,t){const i=o.slice();return i[20]=e[t],i}function ke(o,e,t){const i=o.slice();return i[23]=e[t][0],i[24]=e[t][1],i}function be(o){let e,t="Slug",i,a=o[0].slug+"",n;return{c(){e=g("dt"),e.textContent=t,i=g("dd"),n=U(a),this.h()},l(c){e=v(c,"DT",{class:!0,"data-svelte-h":!0}),W(e)!=="svelte-58n0x5"&&(e.textContent=t),i=v(c,"DD",{});var s=E(i);n=G(s,a),s.forEach(h),this.h()},h(){d(e,"class","svelte-16rf8ox")},m(c,s){D(c,e,s),D(c,i,s),_(i,n)},p(c,s){s&1&&a!==(a=c[0].slug+"")&&q(n,a)},d(c){c&&(h(e),h(i))}}}function Ze(o){let e,t=o[23]+"",i,a,n=(o[24]||de)+"",c;return{c(){e=g("dt"),i=U(t),a=g("dd"),c=U(n),this.h()},l(s){e=v(s,"DT",{class:!0});var l=E(e);i=G(l,t),l.forEach(h),a=v(s,"DD",{});var f=E(a);c=G(f,n),f.forEach(h),this.h()},h(){d(e,"class","svelte-16rf8ox")},m(s,l){D(s,e,l),_(e,i),D(s,a,l),_(a,c)},p(s,l){l&4&&t!==(t=s[23]+"")&&q(i,t),l&4&&n!==(n=(s[24]||de)+"")&&q(c,n)},d(s){s&&(h(e),h(a))}}}function ye(o){let e,t=o[23]+"",i,a,n,c=o[24].name+"",s,l;return{c(){e=g("dt"),i=U(t),a=g("dd"),n=g("a"),s=U(c),this.h()},l(f){e=v(f,"DT",{class:!0});var r=E(e);i=G(r,t),r.forEach(h),a=v(f,"DD",{class:!0});var u=E(a);n=v(u,"A",{href:!0,class:!0});var k=E(n);s=G(k,c),k.forEach(h),u.forEach(h),this.h()},h(){d(e,"class","svelte-16rf8ox"),d(n,"href",l="../places/"+o[24].slug),d(n,"class","svelte-16rf8ox"),d(a,"class","svelte-16rf8ox")},m(f,r){D(f,e,r),_(e,i),D(f,a,r),_(a,n),_(n,s)},p(f,r){r&4&&t!==(t=f[23]+"")&&q(i,t),r&4&&c!==(c=f[24].name+"")&&q(s,c),r&4&&l!==(l="../places/"+f[24].slug)&&d(n,"href",l)},d(f){f&&(h(e),h(a))}}}function Ce(o){let e;function t(n,c){var s;return(s=n[24])!=null&&s.slug?ye:Ze}let i=t(o),a=i(o);return{c(){a.c(),e=K()},l(n){a.l(n),e=K()},m(n,c){a.m(n,c),D(n,e,c)},p(n,c){i===(i=t(n))&&a?a.p(n,c):(a.d(1),a=i(n),a&&(a.c(),a.m(e.parentNode,e)))},d(n){n&&h(e),a.d(n)}}}function Te(o){let e,t,i,a,n,c;t=new Xe({});let s=z(o[6]),l=[];for(let f=0;f<s.length;f+=1)l[f]=De(pe(o,s,f));return{c(){e=g("dt"),Ke(t.$$.fragment),i=U("Related"),a=g("dd"),n=g("ul");for(let f=0;f<l.length;f+=1)l[f].c();this.h()},l(f){e=v(f,"DT",{class:!0});var r=E(e);Qe(t.$$.fragment,r),i=G(r,"Related"),r.forEach(h),a=v(f,"DD",{class:!0});var u=E(a);n=v(u,"UL",{class:!0});var k=E(n);for(let C=0;C<l.length;C+=1)l[C].l(k);k.forEach(h),u.forEach(h),this.h()},h(){d(e,"class","svelte-16rf8ox"),d(n,"class","svelte-16rf8ox"),d(a,"class","svelte-16rf8ox")},m(f,r){D(f,e,r),Ve(t,e,null),_(e,i),D(f,a,r),_(a,n);for(let u=0;u<l.length;u+=1)l[u]&&l[u].m(n,null);c=!0},p(f,r){if(r&64){s=z(f[6]);let u;for(u=0;u<s.length;u+=1){const k=pe(f,s,u);l[u]?l[u].p(k,r):(l[u]=De(k),l[u].c(),l[u].m(n,null))}for(;u<l.length;u+=1)l[u].d(1);l.length=s.length}},i(f){c||(V(t.$$.fragment,f),c=!0)},o(f){se(t.$$.fragment,f),c=!1},d(f){f&&(h(e),h(a)),We(t),X(l,f)}}}function De(o){let e,t,i=o[20].name+"",a,n,c;return{c(){e=g("li"),t=g("a"),a=U(i),c=O(),this.h()},l(s){e=v(s,"LI",{class:!0});var l=E(e);t=v(l,"A",{href:!0,class:!0});var f=E(t);a=G(f,i),f.forEach(h),c=L(l),l.forEach(h),this.h()},h(){d(t,"href",n=o[20].url),d(t,"class","svelte-16rf8ox"),d(e,"class","svelte-16rf8ox")},m(s,l){D(s,e,l),_(e,t),_(t,a),_(e,c)},p(s,l){l&64&&i!==(i=s[20].name+"")&&q(a,i),l&64&&n!==(n=s[20].url)&&d(t,"href",n)},d(s){s&&h(e)}}}function Ie(o){let e,t,i,a,n,c,s,l,f=o[4].image_title+"",r;return{c(){e=g("section"),t=g("figure"),i=g("img"),s=O(),l=g("figcaption"),r=U(f),this.h()},l(u){e=v(u,"SECTION",{class:!0});var k=E(e);t=v(k,"FIGURE",{});var C=E(t);i=v(C,"IMG",{src:!0,alt:!0,title:!0,class:!0}),s=L(C),l=v(C,"FIGCAPTION",{});var b=E(l);r=G(b,f),b.forEach(h),C.forEach(h),k.forEach(h),this.h()},h(){me(i.src,a=o[4].image_url)||d(i,"src",a),d(i,"alt",n=o[4].image_description),d(i,"title",c=o[4].image_title),d(i,"class","svelte-16rf8ox"),d(e,"class","font-serif")},m(u,k){D(u,e,k),_(e,t),_(t,i),_(t,s),_(t,l),_(l,r)},p(u,k){k&16&&!me(i.src,a=u[4].image_url)&&d(i,"src",a),k&16&&n!==(n=u[4].image_description)&&d(i,"alt",n),k&16&&c!==(c=u[4].image_title)&&d(i,"title",c),k&16&&f!==(f=u[4].image_title+"")&&q(r,f)},d(u){u&&h(e)}}}function Oe(o){let e,t;return{c(){e=g("section"),t=new Me(!1),this.h()},l(i){e=v(i,"SECTION",{class:!0});var a=E(e);t=Fe(a,!1),a.forEach(h),this.h()},h(){t.a=null,d(e,"class","md font-serif")},m(i,a){D(i,e,a),t.m(o[3],e)},p(i,a){a&8&&t.p(i[3])},d(i){i&&h(e)}}}function Le(o){let e,t,i="Moments",a,n,c=z(o[5]),s=[];for(let l=0;l<c.length;l+=1)s[l]=Ae(Ee(o,c,l));return{c(){e=g("section"),t=g("h3"),t.textContent=i,a=O(),n=g("ul");for(let l=0;l<s.length;l+=1)s[l].c();this.h()},l(l){e=v(l,"SECTION",{});var f=E(e);t=v(f,"H3",{"data-svelte-h":!0}),W(t)!=="svelte-daj7mx"&&(t.textContent=i),a=L(f),n=v(f,"UL",{class:!0});var r=E(n);for(let u=0;u<s.length;u+=1)s[u].l(r);r.forEach(h),f.forEach(h),this.h()},h(){d(n,"class","svelte-16rf8ox")},m(l,f){D(l,e,f),_(e,t),_(e,a),_(e,n);for(let r=0;r<s.length;r+=1)s[r]&&s[r].m(n,null)},p(l,f){if(f&32){c=z(l[5]);let r;for(r=0;r<c.length;r+=1){const u=Ee(l,c,r);s[r]?s[r].p(u,f):(s[r]=Ae(u),s[r].c(),s[r].m(n,null))}for(;r<s.length;r+=1)s[r].d(1);s.length=c.length}},d(l){l&&h(e),X(s,l)}}}function Ae(o){let e,t,i=o[17].title+"",a,n,c;return{c(){e=g("li"),t=g("a"),a=U(i),c=O(),this.h()},l(s){e=v(s,"LI",{"data-pagefind-filter":!0,class:!0});var l=E(e);t=v(l,"A",{href:!0});var f=E(t);a=G(f,i),f.forEach(h),c=L(l),l.forEach(h),this.h()},h(){d(t,"href",n="../../moments/"+o[17].slug),d(e,"data-pagefind-filter","Moment"),d(e,"class","svelte-16rf8ox")},m(s,l){D(s,e,l),_(e,t),_(t,a),_(e,c)},p(s,l){l&32&&i!==(i=s[17].title+"")&&q(a,i),l&32&&n!==(n="../../moments/"+s[17].slug)&&d(t,"href",n)},d(s){s&&h(e)}}}function Se(o){let e,t,i="Sources",a,n,c=z(o[7]),s=[];for(let l=0;l<c.length;l+=1)s[l]=Ne(ve(o,c,l));return{c(){e=g("section"),t=g("h3"),t.textContent=i,a=O(),n=g("ul");for(let l=0;l<s.length;l+=1)s[l].c();this.h()},l(l){e=v(l,"SECTION",{});var f=E(e);t=v(f,"H3",{"data-svelte-h":!0}),W(t)!=="svelte-mjie0k"&&(t.textContent=i),a=L(f),n=v(f,"UL",{class:!0});var r=E(n);for(let u=0;u<s.length;u+=1)s[u].l(r);r.forEach(h),f.forEach(h),this.h()},h(){d(n,"class","svelte-16rf8ox")},m(l,f){D(l,e,f),_(e,t),_(e,a),_(e,n);for(let r=0;r<s.length;r+=1)s[r]&&s[r].m(n,null)},p(l,f){if(f&128){c=z(l[7]);let r;for(r=0;r<c.length;r+=1){const u=ve(l,c,r);s[r]?s[r].p(u,f):(s[r]=Ne(u),s[r].c(),s[r].m(n,null))}for(;r<s.length;r+=1)s[r].d(1);s.length=c.length}},d(l){l&&h(e),X(s,l)}}}function xe(o){let e=o[14].name+"",t;return{c(){t=U(e)},l(i){t=G(i,e)},m(i,a){D(i,t,a)},p(i,a){a&128&&e!==(e=i[14].name+"")&&q(t,e)},d(i){i&&h(t)}}}function $e(o){let e,t=o[14].name+"",i,a;return{c(){e=g("a"),i=U(t),this.h()},l(n){e=v(n,"A",{href:!0});var c=E(e);i=G(c,t),c.forEach(h),this.h()},h(){d(e,"href",a=o[14].url)},m(n,c){D(n,e,c),_(e,i)},p(n,c){c&128&&t!==(t=n[14].name+"")&&q(i,t),c&128&&a!==(a=n[14].url)&&d(e,"href",a)},d(n){n&&h(e)}}}function He(o){let e,t=o[14].description+"",i;return{c(){e=g("p"),i=U(t)},l(a){e=v(a,"P",{});var n=E(e);i=G(n,t),n.forEach(h)},m(a,n){D(a,e,n),_(e,i)},p(a,n){n&128&&t!==(t=a[14].description+"")&&q(i,t)},d(a){a&&h(e)}}}function Ne(o){let e,t,i,a;function n(f,r){return f[14].url?$e:xe}let c=n(o),s=c(o),l=o[14].description&&He(o);return{c(){e=g("li"),t=g("p"),s.c(),i=O(),l&&l.c(),a=O(),this.h()},l(f){e=v(f,"LI",{class:!0});var r=E(e);t=v(r,"P",{});var u=E(t);s.l(u),u.forEach(h),i=L(r),l&&l.l(r),a=L(r),r.forEach(h),this.h()},h(){d(e,"class","svelte-16rf8ox")},m(f,r){D(f,e,r),_(e,t),s.m(t,null),_(e,i),l&&l.m(e,null),_(e,a)},p(f,r){c===(c=n(f))&&s?s.p(f,r):(s.d(1),s=c(f),s&&(s.c(),s.m(t,null))),f[14].description?l?l.p(f,r):(l=He(f),l.c(),l.m(e,a)):l&&(l.d(1),l=null)},d(f){f&&h(e),s.d(),l&&l.d()}}}function Pe(o){let e,t,i="External links",a,n,c=z(o[8]),s=[];for(let l=0;l<c.length;l+=1)s[l]=Re(ge(o,c,l));return{c(){e=g("section"),t=g("h3"),t.textContent=i,a=O(),n=g("ul");for(let l=0;l<s.length;l+=1)s[l].c();this.h()},l(l){e=v(l,"SECTION",{});var f=E(e);t=v(f,"H3",{"data-svelte-h":!0}),W(t)!=="svelte-s0eyvq"&&(t.textContent=i),a=L(f),n=v(f,"UL",{class:!0});var r=E(n);for(let u=0;u<s.length;u+=1)s[u].l(r);r.forEach(h),f.forEach(h),this.h()},h(){d(n,"class","svelte-16rf8ox")},m(l,f){D(l,e,f),_(e,t),_(e,a),_(e,n);for(let r=0;r<s.length;r+=1)s[r]&&s[r].m(n,null)},p(l,f){if(f&256){c=z(l[8]);let r;for(r=0;r<c.length;r+=1){const u=ge(l,c,r);s[r]?s[r].p(u,f):(s[r]=Re(u),s[r].c(),s[r].m(n,null))}for(;r<s.length;r+=1)s[r].d(1);s.length=c.length}},d(l){l&&h(e),X(s,l)}}}function Re(o){let e,t,i=o[11].name+"",a,n,c;return{c(){e=g("li"),t=g("a"),a=U(i),c=O(),this.h()},l(s){e=v(s,"LI",{class:!0});var l=E(e);t=v(l,"A",{href:!0});var f=E(t);a=G(f,i),f.forEach(h),c=L(l),l.forEach(h),this.h()},h(){d(t,"href",n=o[11].url),d(e,"class","svelte-16rf8ox")},m(s,l){D(s,e,l),_(e,t),_(t,a),_(e,c)},p(s,l){l&256&&i!==(i=s[11].name+"")&&q(a,i),l&256&&n!==(n=s[11].url)&&d(t,"href",n)},d(s){s&&h(e)}}}function el(o){let e,t,i,a,n,c,s,l=o[0].name+"",f,r,u,k,C,b=["Organisation","Person"].includes(o[1]),Z,y,ie,x,$,A,B,oe="Related information",ne,ee,ae,le,F,H=b&&be(o),J=z(Object.entries(o[2])),S=[];for(let m=0;m<J.length;m+=1)S[m]=Ce(ke(o,J,m));let I=o[6]&&o[6].length&&Te(o),N=o[4]&&Ie(o),P=o[3]&&Oe(o),R=o[5]&&o[5].length&&Le(o);const fe=o[10].default,M=we(fe,o,o[9],null);let j=o[7]&&o[7].length&&Se(o),w=o[8]&&o[8].length&&Pe(o);return{c(){e=g("article"),t=g("hgroup"),i=g("p"),a=g("strong"),n=U(o[1]),c=O(),s=g("h1"),f=U(l),u=O(),k=g("section"),C=g("dl"),H&&H.c(),Z=K();for(let m=0;m<S.length;m+=1)S[m].c();y=K(),I&&I.c(),ie=O(),N&&N.c(),x=O(),P&&P.c(),$=O(),A=g("section"),B=g("h2"),B.textContent=oe,ne=O(),R&&R.c(),ee=O(),M&&M.c(),ae=O(),j&&j.c(),le=O(),w&&w.c(),this.h()},l(m){e=v(m,"ARTICLE",{});var p=E(e);t=v(p,"HGROUP",{class:!0});var T=E(t);i=v(T,"P",{class:!0});var Q=E(i);a=v(Q,"STRONG",{});var ce=E(a);n=G(ce,o[1]),ce.forEach(h),Q.forEach(h),c=L(T),s=v(T,"H1",{"data-pagefind-filter":!0,class:!0});var ue=E(s);f=G(ue,l),ue.forEach(h),T.forEach(h),u=L(p),k=v(p,"SECTION",{});var he=E(k);C=v(he,"DL",{class:!0});var te=E(C);H&&H.l(te),Z=K();for(let re=0;re<S.length;re+=1)S[re].l(te);y=K(),I&&I.l(te),te.forEach(h),he.forEach(h),ie=L(p),N&&N.l(p),x=L(p),P&&P.l(p),$=L(p),A=v(p,"SECTION",{class:!0});var Y=E(A);B=v(Y,"H2",{"data-svelte-h":!0}),W(B)!=="svelte-1jm1uc5"&&(B.textContent=oe),ne=L(Y),R&&R.l(Y),ee=L(Y),M&&M.l(Y),ae=L(Y),j&&j.l(Y),le=L(Y),w&&w.l(Y),Y.forEach(h),p.forEach(h),this.h()},h(){d(i,"class","entity svelte-16rf8ox"),d(s,"data-pagefind-filter",o[1]),d(s,"class","svelte-16rf8ox"),d(t,"class",r=_e(o[1].toLowerCase())+" svelte-16rf8ox"),d(C,"class","dl-inline"),d(A,"class","info svelte-16rf8ox")},m(m,p){D(m,e,p),_(e,t),_(t,i),_(i,a),_(a,n),_(t,c),_(t,s),_(s,f),_(e,u),_(e,k),_(k,C),H&&H.m(C,null),_(C,Z);for(let T=0;T<S.length;T+=1)S[T]&&S[T].m(C,null);_(C,y),I&&I.m(C,null),_(e,ie),N&&N.m(e,null),_(e,x),P&&P.m(e,null),_(e,$),_(e,A),_(A,B),_(A,ne),R&&R.m(A,null),_(A,ee),M&&M.m(A,null),_(A,ae),j&&j.m(A,null),_(A,le),w&&w.m(A,null),F=!0},p(m,[p]){if((!F||p&2)&&q(n,m[1]),(!F||p&1)&&l!==(l=m[0].name+"")&&q(f,l),(!F||p&2)&&d(s,"data-pagefind-filter",m[1]),(!F||p&2&&r!==(r=_e(m[1].toLowerCase())+" svelte-16rf8ox"))&&d(t,"class",r),p&2&&(b=["Organisation","Person"].includes(m[1])),b?H?H.p(m,p):(H=be(m),H.c(),H.m(C,Z)):H&&(H.d(1),H=null),p&4){J=z(Object.entries(m[2]));let T;for(T=0;T<J.length;T+=1){const Q=ke(m,J,T);S[T]?S[T].p(Q,p):(S[T]=Ce(Q),S[T].c(),S[T].m(C,y))}for(;T<S.length;T+=1)S[T].d(1);S.length=J.length}m[6]&&m[6].length?I?(I.p(m,p),p&64&&V(I,1)):(I=Te(m),I.c(),V(I,1),I.m(C,null)):I&&(Be(),se(I,1,1,()=>{I=null}),Je()),m[4]?N?N.p(m,p):(N=Ie(m),N.c(),N.m(e,x)):N&&(N.d(1),N=null),m[3]?P?P.p(m,p):(P=Oe(m),P.c(),P.m(e,$)):P&&(P.d(1),P=null),m[5]&&m[5].length?R?R.p(m,p):(R=Le(m),R.c(),R.m(A,ee)):R&&(R.d(1),R=null),M&&M.p&&(!F||p&512)&&Ue(M,fe,m,m[9],F?qe(fe,m[9],p,null):Ge(m[9]),null),m[7]&&m[7].length?j?j.p(m,p):(j=Se(m),j.c(),j.m(A,le)):j&&(j.d(1),j=null),m[8]&&m[8].length?w?w.p(m,p):(w=Pe(m),w.c(),w.m(A,null)):w&&(w.d(1),w=null)},i(m){F||(V(I),V(M,m),F=!0)},o(m){se(I),se(M,m),F=!1},d(m){m&&h(e),H&&H.d(),X(S,m),I&&I.d(),N&&N.d(),P&&P.d(),R&&R.d(),M&&M.d(m),j&&j.d(),w&&w.d()}}}function ll(o,e,t){let{$$slots:i={},$$scope:a}=e,{entity:n}=e,{entityType:c}=e,{meta:s}=e,{description:l=void 0}=e,{feature:f=void 0}=e,{moments:r=void 0}=e,{sameAs:u=void 0}=e,{sources:k=void 0}=e,{urls:C=void 0}=e;return o.$$set=b=>{"entity"in b&&t(0,n=b.entity),"entityType"in b&&t(1,c=b.entityType),"meta"in b&&t(2,s=b.meta),"description"in b&&t(3,l=b.description),"feature"in b&&t(4,f=b.feature),"moments"in b&&t(5,r=b.moments),"sameAs"in b&&t(6,u=b.sameAs),"sources"in b&&t(7,k=b.sources),"urls"in b&&t(8,C=b.urls),"$$scope"in b&&t(9,a=b.$$scope)},[n,c,s,l,f,r,u,k,C,a,i]}class fl extends Ye{constructor(e){super(),ze(this,e,ll,el,je,{entity:0,entityType:1,meta:2,description:3,feature:4,moments:5,sameAs:6,sources:7,urls:8})}}export{fl as E};
