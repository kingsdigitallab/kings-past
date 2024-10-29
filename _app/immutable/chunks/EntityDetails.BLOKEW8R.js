import{s as Le,c as Ae,h as oe,u as Se,g as He,b as Ne,j as re}from"./scheduler.BmBaUOvj.js";import{S as Pe,i as we,e as v,t as w,s as I,u as F,c as g,h as E,j as R,f as u,a as O,b as d,d as y,k as m,w as j,p as Y,z as Re,q as $,A as je,v as J,g as ee,l as Ge,n as Ue,o as qe,r as Me,H as Fe,B as Be}from"./index.C_nRBhsY.js";import{e as U}from"./each.DhGhqZbU.js";import{E as ce}from"./config.gUoqXaG8.js";import{E as Ye}from"./external-link.DqiwTDgh.js";function he(r,e,t){const i=r.slice();return i[11]=e[t],i}function ue(r,e,t){const i=r.slice();return i[14]=e[t],i}function _e(r,e,t){const i=r.slice();return i[17]=e[t],i}function me(r,e,t){const i=r.slice();return i[20]=e[t],i}function de(r,e,t){const i=r.slice();return i[23]=e[t][0],i[24]=e[t][1],i}function ve(r){let e,t="Slug",i,a=r[0].slug+"",n;return{c(){e=v("dt"),e.textContent=t,i=v("dd"),n=w(a),this.h()},l(c){e=g(c,"DT",{class:!0,"data-svelte-h":!0}),ee(e)!=="svelte-58n0x5"&&(e.textContent=t),i=g(c,"DD",{});var s=E(i);n=R(s,a),s.forEach(u),this.h()},h(){d(e,"class","svelte-zxy1oe")},m(c,s){y(c,e,s),y(c,i,s),m(i,n)},p(c,s){s&1&&a!==(a=c[0].slug+"")&&j(n,a)},d(c){c&&(u(e),u(i))}}}function Je(r){let e,t=r[23]+"",i,a,n=(r[24]||ce)+"",c;return{c(){e=v("dt"),i=w(t),a=v("dd"),c=w(n),this.h()},l(s){e=g(s,"DT",{class:!0});var l=E(e);i=R(l,t),l.forEach(u),a=g(s,"DD",{});var f=E(a);c=R(f,n),f.forEach(u),this.h()},h(){d(e,"class","svelte-zxy1oe")},m(s,l){y(s,e,l),m(e,i),y(s,a,l),m(a,c)},p(s,l){l&4&&t!==(t=s[23]+"")&&j(i,t),l&4&&n!==(n=(s[24]||ce)+"")&&j(c,n)},d(s){s&&(u(e),u(a))}}}function Ke(r){let e,t=r[23]+"",i,a,n,c=r[24].name+"",s,l;return{c(){e=v("dt"),i=w(t),a=v("dd"),n=v("a"),s=w(c),this.h()},l(f){e=g(f,"DT",{class:!0});var o=E(e);i=R(o,t),o.forEach(u),a=g(f,"DD",{class:!0});var h=E(a);n=g(h,"A",{href:!0,class:!0});var b=E(n);s=R(b,c),b.forEach(u),h.forEach(u),this.h()},h(){d(e,"class","svelte-zxy1oe"),d(n,"href",l="../places/"+r[24].slug),d(n,"class","svelte-zxy1oe"),d(a,"class","svelte-zxy1oe")},m(f,o){y(f,e,o),m(e,i),y(f,a,o),m(a,n),m(n,s)},p(f,o){o&4&&t!==(t=f[23]+"")&&j(i,t),o&4&&c!==(c=f[24].name+"")&&j(s,c),o&4&&l!==(l="../places/"+f[24].slug)&&d(n,"href",l)},d(f){f&&(u(e),u(a))}}}function ge(r){let e;function t(n,c){var s;return(s=n[24])!=null&&s.slug?Ke:Je}let i=t(r),a=i(r);return{c(){a.c(),e=F()},l(n){a.l(n),e=F()},m(n,c){a.m(n,c),y(n,e,c)},p(n,c){i===(i=t(n))&&a?a.p(n,c):(a.d(1),a=i(n),a&&(a.c(),a.m(e.parentNode,e)))},d(n){n&&u(e),a.d(n)}}}function Ee(r){let e,t,i,a,n,c;t=new Ye({});let s=U(r[6]),l=[];for(let f=0;f<s.length;f+=1)l[f]=ke(me(r,s,f));return{c(){e=v("dt"),Ge(t.$$.fragment),i=w("Related"),a=v("dd"),n=v("ul");for(let f=0;f<l.length;f+=1)l[f].c();this.h()},l(f){e=g(f,"DT",{class:!0});var o=E(e);Ue(t.$$.fragment,o),i=R(o,"Related"),o.forEach(u),a=g(f,"DD",{class:!0});var h=E(a);n=g(h,"UL",{class:!0});var b=E(n);for(let C=0;C<l.length;C+=1)l[C].l(b);b.forEach(u),h.forEach(u),this.h()},h(){d(e,"class","svelte-zxy1oe"),d(n,"class","svelte-zxy1oe"),d(a,"class","svelte-zxy1oe")},m(f,o){y(f,e,o),qe(t,e,null),m(e,i),y(f,a,o),m(a,n);for(let h=0;h<l.length;h+=1)l[h]&&l[h].m(n,null);c=!0},p(f,o){if(o&64){s=U(f[6]);let h;for(h=0;h<s.length;h+=1){const b=me(f,s,h);l[h]?l[h].p(b,o):(l[h]=ke(b),l[h].c(),l[h].m(n,null))}for(;h<l.length;h+=1)l[h].d(1);l.length=s.length}},i(f){c||(Y(t.$$.fragment,f),c=!0)},o(f){$(t.$$.fragment,f),c=!1},d(f){f&&(u(e),u(a)),Me(t),J(l,f)}}}function ke(r){let e,t,i=r[20].name+"",a,n,c;return{c(){e=v("li"),t=v("a"),a=w(i),c=I(),this.h()},l(s){e=g(s,"LI",{class:!0});var l=E(e);t=g(l,"A",{href:!0,class:!0});var f=E(t);a=R(f,i),f.forEach(u),c=O(l),l.forEach(u),this.h()},h(){d(t,"href",n=r[20].url),d(t,"class","svelte-zxy1oe"),d(e,"class","svelte-zxy1oe")},m(s,l){y(s,e,l),m(e,t),m(t,a),m(e,c)},p(s,l){l&64&&i!==(i=s[20].name+"")&&j(a,i),l&64&&n!==(n=s[20].url)&&d(t,"href",n)},d(s){s&&u(e)}}}function be(r){let e,t,i,a,n,c,s,l,f=r[4].image_title+"",o;return{c(){e=v("section"),t=v("figure"),i=v("img"),s=I(),l=v("figcaption"),o=w(f),this.h()},l(h){e=g(h,"SECTION",{class:!0});var b=E(e);t=g(b,"FIGURE",{});var C=E(t);i=g(C,"IMG",{src:!0,alt:!0,title:!0,class:!0}),s=O(C),l=g(C,"FIGCAPTION",{});var p=E(l);o=R(p,f),p.forEach(u),C.forEach(u),b.forEach(u),this.h()},h(){re(i.src,a=r[4].image_url)||d(i,"src",a),d(i,"alt",n=r[4].image_description),d(i,"title",c=r[4].image_title),d(i,"class","svelte-zxy1oe"),d(e,"class","font-serif")},m(h,b){y(h,e,b),m(e,t),m(t,i),m(t,s),m(t,l),m(l,o)},p(h,b){b&16&&!re(i.src,a=h[4].image_url)&&d(i,"src",a),b&16&&n!==(n=h[4].image_description)&&d(i,"alt",n),b&16&&c!==(c=h[4].image_title)&&d(i,"title",c),b&16&&f!==(f=h[4].image_title+"")&&j(o,f)},d(h){h&&u(e)}}}function pe(r){let e,t;return{c(){e=v("section"),t=new Fe(!1),this.h()},l(i){e=g(i,"SECTION",{class:!0});var a=E(e);t=Be(a,!1),a.forEach(u),this.h()},h(){t.a=null,d(e,"class","md font-serif")},m(i,a){y(i,e,a),t.m(r[3],e)},p(i,a){a&8&&t.p(i[3])},d(i){i&&u(e)}}}function Ce(r){let e,t,i="Moments",a,n,c=U(r[5]),s=[];for(let l=0;l<c.length;l+=1)s[l]=ze(_e(r,c,l));return{c(){e=v("section"),t=v("h2"),t.textContent=i,a=I(),n=v("ol");for(let l=0;l<s.length;l+=1)s[l].c();this.h()},l(l){e=g(l,"SECTION",{class:!0});var f=E(e);t=g(f,"H2",{"data-svelte-h":!0}),ee(t)!=="svelte-1xsrrpt"&&(t.textContent=i),a=O(f),n=g(f,"OL",{class:!0});var o=E(n);for(let h=0;h<s.length;h+=1)s[h].l(o);o.forEach(u),f.forEach(u),this.h()},h(){d(n,"class","svelte-zxy1oe"),d(e,"class","moments svelte-zxy1oe")},m(l,f){y(l,e,f),m(e,t),m(e,a),m(e,n);for(let o=0;o<s.length;o+=1)s[o]&&s[o].m(n,null)},p(l,f){if(f&32){c=U(l[5]);let o;for(o=0;o<c.length;o+=1){const h=_e(l,c,o);s[o]?s[o].p(h,f):(s[o]=ze(h),s[o].c(),s[o].m(n,null))}for(;o<s.length;o+=1)s[o].d(1);s.length=c.length}},d(l){l&&u(e),J(s,l)}}}function ze(r){let e,t,i=r[17].title+"",a,n,c;return{c(){e=v("li"),t=v("a"),a=w(i),c=I(),this.h()},l(s){e=g(s,"LI",{class:!0});var l=E(e);t=g(l,"A",{href:!0});var f=E(t);a=R(f,i),f.forEach(u),c=O(l),l.forEach(u),this.h()},h(){d(t,"href",n="../../moments/"+r[17].slug),d(e,"class","surface-2 svelte-zxy1oe")},m(s,l){y(s,e,l),m(e,t),m(t,a),m(e,c)},p(s,l){l&32&&i!==(i=s[17].title+"")&&j(a,i),l&32&&n!==(n="../../moments/"+s[17].slug)&&d(t,"href",n)},d(s){s&&u(e)}}}function ye(r){let e,t,i="Sources",a,n,c=U(r[7]),s=[];for(let l=0;l<c.length;l+=1)s[l]=De(ue(r,c,l));return{c(){e=v("section"),t=v("h2"),t.textContent=i,a=I(),n=v("ul");for(let l=0;l<s.length;l+=1)s[l].c();this.h()},l(l){e=g(l,"SECTION",{});var f=E(e);t=g(f,"H2",{"data-svelte-h":!0}),ee(t)!=="svelte-1315qow"&&(t.textContent=i),a=O(f),n=g(f,"UL",{class:!0});var o=E(n);for(let h=0;h<s.length;h+=1)s[h].l(o);o.forEach(u),f.forEach(u),this.h()},h(){d(n,"class","svelte-zxy1oe")},m(l,f){y(l,e,f),m(e,t),m(e,a),m(e,n);for(let o=0;o<s.length;o+=1)s[o]&&s[o].m(n,null)},p(l,f){if(f&128){c=U(l[7]);let o;for(o=0;o<c.length;o+=1){const h=ue(l,c,o);s[o]?s[o].p(h,f):(s[o]=De(h),s[o].c(),s[o].m(n,null))}for(;o<s.length;o+=1)s[o].d(1);s.length=c.length}},d(l){l&&u(e),J(s,l)}}}function Qe(r){let e=r[14].name+"",t;return{c(){t=w(e)},l(i){t=R(i,e)},m(i,a){y(i,t,a)},p(i,a){a&128&&e!==(e=i[14].name+"")&&j(t,e)},d(i){i&&u(t)}}}function Ve(r){let e,t=r[14].name+"",i,a;return{c(){e=v("a"),i=w(t),this.h()},l(n){e=g(n,"A",{href:!0});var c=E(e);i=R(c,t),c.forEach(u),this.h()},h(){d(e,"href",a=r[14].url)},m(n,c){y(n,e,c),m(e,i)},p(n,c){c&128&&t!==(t=n[14].name+"")&&j(i,t),c&128&&a!==(a=n[14].url)&&d(e,"href",a)},d(n){n&&u(e)}}}function Te(r){let e,t=r[14].description+"",i;return{c(){e=v("p"),i=w(t)},l(a){e=g(a,"P",{});var n=E(e);i=R(n,t),n.forEach(u)},m(a,n){y(a,e,n),m(e,i)},p(a,n){n&128&&t!==(t=a[14].description+"")&&j(i,t)},d(a){a&&u(e)}}}function De(r){let e,t,i,a;function n(f,o){return f[14].url?Ve:Qe}let c=n(r),s=c(r),l=r[14].description&&Te(r);return{c(){e=v("li"),t=v("p"),s.c(),i=I(),l&&l.c(),a=I(),this.h()},l(f){e=g(f,"LI",{class:!0});var o=E(e);t=g(o,"P",{});var h=E(t);s.l(h),h.forEach(u),i=O(o),l&&l.l(o),a=O(o),o.forEach(u),this.h()},h(){d(e,"class","svelte-zxy1oe")},m(f,o){y(f,e,o),m(e,t),s.m(t,null),m(e,i),l&&l.m(e,null),m(e,a)},p(f,o){c===(c=n(f))&&s?s.p(f,o):(s.d(1),s=c(f),s&&(s.c(),s.m(t,null))),f[14].description?l?l.p(f,o):(l=Te(f),l.c(),l.m(e,a)):l&&(l.d(1),l=null)},d(f){f&&u(e),s.d(),l&&l.d()}}}function Ie(r){let e,t,i="External links",a,n,c=U(r[8]),s=[];for(let l=0;l<c.length;l+=1)s[l]=Oe(he(r,c,l));return{c(){e=v("section"),t=v("h2"),t.textContent=i,a=I(),n=v("ul");for(let l=0;l<s.length;l+=1)s[l].c();this.h()},l(l){e=g(l,"SECTION",{});var f=E(e);t=g(f,"H2",{"data-svelte-h":!0}),ee(t)!=="svelte-cjmo2c"&&(t.textContent=i),a=O(f),n=g(f,"UL",{class:!0});var o=E(n);for(let h=0;h<s.length;h+=1)s[h].l(o);o.forEach(u),f.forEach(u),this.h()},h(){d(n,"class","svelte-zxy1oe")},m(l,f){y(l,e,f),m(e,t),m(e,a),m(e,n);for(let o=0;o<s.length;o+=1)s[o]&&s[o].m(n,null)},p(l,f){if(f&256){c=U(l[8]);let o;for(o=0;o<c.length;o+=1){const h=he(l,c,o);s[o]?s[o].p(h,f):(s[o]=Oe(h),s[o].c(),s[o].m(n,null))}for(;o<s.length;o+=1)s[o].d(1);s.length=c.length}},d(l){l&&u(e),J(s,l)}}}function Oe(r){let e,t,i=r[11].name+"",a,n,c;return{c(){e=v("li"),t=v("a"),a=w(i),c=I(),this.h()},l(s){e=g(s,"LI",{class:!0});var l=E(e);t=g(l,"A",{href:!0});var f=E(t);a=R(f,i),f.forEach(u),c=O(l),l.forEach(u),this.h()},h(){d(t,"href",n=r[11].url),d(e,"class","svelte-zxy1oe")},m(s,l){y(s,e,l),m(e,t),m(t,a),m(e,c)},p(s,l){l&256&&i!==(i=s[11].name+"")&&j(a,i),l&256&&n!==(n=s[11].url)&&d(t,"href",n)},d(s){s&&u(e)}}}function We(r){let e,t,i,a,n,c,s,l=r[0].name+"",f,o,h,b,C,p=["Organisation","Person"].includes(r[1]),K,Q,le,V,W,X,te,Z,q,L=p&&ve(r),M=U(Object.entries(r[2])),D=[];for(let _=0;_<M.length;_+=1)D[_]=ge(de(r,M,_));let T=r[6]&&r[6].length&&Ee(r),A=r[4]&&be(r),S=r[3]&&pe(r),H=r[5]&&r[5].length&&Ce(r);const se=r[10].default,G=Ae(se,r,r[9],null);let N=r[7]&&r[7].length&&ye(r),P=r[8]&&r[8].length&&Ie(r);return{c(){e=v("article"),t=v("hgroup"),i=v("p"),a=v("strong"),n=w(r[1]),c=I(),s=v("h1"),f=w(l),h=I(),b=v("section"),C=v("dl"),L&&L.c(),K=F();for(let _=0;_<D.length;_+=1)D[_].c();Q=F(),T&&T.c(),le=I(),A&&A.c(),V=I(),S&&S.c(),W=I(),H&&H.c(),X=I(),G&&G.c(),te=I(),N&&N.c(),Z=I(),P&&P.c(),this.h()},l(_){e=g(_,"ARTICLE",{});var k=E(e);t=g(k,"HGROUP",{class:!0});var z=E(t);i=g(z,"P",{class:!0});var B=E(i);a=g(B,"STRONG",{});var ne=E(a);n=R(ne,r[1]),ne.forEach(u),B.forEach(u),c=O(z),s=g(z,"H1",{class:!0});var ae=E(s);f=R(ae,l),ae.forEach(u),z.forEach(u),h=O(k),b=g(k,"SECTION",{});var fe=E(b);C=g(fe,"DL",{class:!0});var x=E(C);L&&L.l(x),K=F();for(let ie=0;ie<D.length;ie+=1)D[ie].l(x);Q=F(),T&&T.l(x),x.forEach(u),fe.forEach(u),le=O(k),A&&A.l(k),V=O(k),S&&S.l(k),W=O(k),H&&H.l(k),X=O(k),G&&G.l(k),te=O(k),N&&N.l(k),Z=O(k),P&&P.l(k),k.forEach(u),this.h()},h(){d(i,"class","entity svelte-zxy1oe"),d(s,"class","svelte-zxy1oe"),d(t,"class",o=oe(r[1].toLowerCase())+" svelte-zxy1oe"),d(C,"class","dl-inline")},m(_,k){y(_,e,k),m(e,t),m(t,i),m(i,a),m(a,n),m(t,c),m(t,s),m(s,f),m(e,h),m(e,b),m(b,C),L&&L.m(C,null),m(C,K);for(let z=0;z<D.length;z+=1)D[z]&&D[z].m(C,null);m(C,Q),T&&T.m(C,null),m(e,le),A&&A.m(e,null),m(e,V),S&&S.m(e,null),m(e,W),H&&H.m(e,null),m(e,X),G&&G.m(e,null),m(e,te),N&&N.m(e,null),m(e,Z),P&&P.m(e,null),q=!0},p(_,[k]){if((!q||k&2)&&j(n,_[1]),(!q||k&1)&&l!==(l=_[0].name+"")&&j(f,l),(!q||k&2&&o!==(o=oe(_[1].toLowerCase())+" svelte-zxy1oe"))&&d(t,"class",o),k&2&&(p=["Organisation","Person"].includes(_[1])),p?L?L.p(_,k):(L=ve(_),L.c(),L.m(C,K)):L&&(L.d(1),L=null),k&4){M=U(Object.entries(_[2]));let z;for(z=0;z<M.length;z+=1){const B=de(_,M,z);D[z]?D[z].p(B,k):(D[z]=ge(B),D[z].c(),D[z].m(C,Q))}for(;z<D.length;z+=1)D[z].d(1);D.length=M.length}_[6]&&_[6].length?T?(T.p(_,k),k&64&&Y(T,1)):(T=Ee(_),T.c(),Y(T,1),T.m(C,null)):T&&(Re(),$(T,1,1,()=>{T=null}),je()),_[4]?A?A.p(_,k):(A=be(_),A.c(),A.m(e,V)):A&&(A.d(1),A=null),_[3]?S?S.p(_,k):(S=pe(_),S.c(),S.m(e,W)):S&&(S.d(1),S=null),_[5]&&_[5].length?H?H.p(_,k):(H=Ce(_),H.c(),H.m(e,X)):H&&(H.d(1),H=null),G&&G.p&&(!q||k&512)&&Se(G,se,_,_[9],q?Ne(se,_[9],k,null):He(_[9]),null),_[7]&&_[7].length?N?N.p(_,k):(N=ye(_),N.c(),N.m(e,Z)):N&&(N.d(1),N=null),_[8]&&_[8].length?P?P.p(_,k):(P=Ie(_),P.c(),P.m(e,null)):P&&(P.d(1),P=null)},i(_){q||(Y(T),Y(G,_),q=!0)},o(_){$(T),$(G,_),q=!1},d(_){_&&u(e),L&&L.d(),J(D,_),T&&T.d(),A&&A.d(),S&&S.d(),H&&H.d(),G&&G.d(_),N&&N.d(),P&&P.d()}}}function Xe(r,e,t){let{$$slots:i={},$$scope:a}=e,{entity:n}=e,{entityType:c}=e,{meta:s}=e,{description:l=void 0}=e,{feature:f=void 0}=e,{moments:o=void 0}=e,{sameAs:h=void 0}=e,{sources:b=void 0}=e,{urls:C=void 0}=e;return r.$$set=p=>{"entity"in p&&t(0,n=p.entity),"entityType"in p&&t(1,c=p.entityType),"meta"in p&&t(2,s=p.meta),"description"in p&&t(3,l=p.description),"feature"in p&&t(4,f=p.feature),"moments"in p&&t(5,o=p.moments),"sameAs"in p&&t(6,h=p.sameAs),"sources"in p&&t(7,b=p.sources),"urls"in p&&t(8,C=p.urls),"$$scope"in p&&t(9,a=p.$$scope)},[n,c,s,l,f,o,h,b,C,a,i]}class tl extends Pe{constructor(e){super(),we(this,e,Xe,We,Le,{entity:0,entityType:1,meta:2,description:3,feature:4,moments:5,sameAs:6,sources:7,urls:8})}}export{tl as E};
