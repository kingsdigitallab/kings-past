import{s as oe,n as M,r as fe}from"../chunks/scheduler.BmBaUOvj.js";import{S as ce,i as ie,e as k,c as $,h as C,f as g,b as w,d as B,v as ue,t as H,s as S,j as P,a as I,k as d,w as Q,u as x,l as U,m as de,g as he,n as j,B as O,o as K,G as ee,q as V,y as _e,p as A,r as Y,x as me}from"../chunks/index.DR9A4W70.js";import{t as ge,E as G}from"../chunks/config.gUoqXaG8.js";import{n as ve,a as pe,s as be,I as Ee}from"../chunks/tableColumns.K3vgcsao.js";import{e as z}from"../chunks/each.2_aCXxmM.js";import{T as ke}from"../chunks/table.DAfnXkRB.js";import{L as $e}from"../chunks/layout-grid.CwVM5POk.js";function te(s,t,l){const e=s.slice();return e[3]=t[l],e}function le(s,t,l){const e=s.slice();return e[6]=t[l],e}function ae(s){let t,l,e=s[6].header+"",a,i,r,u=ne(s[3],s[6])+"",_,m;return{c(){t=k("div"),l=k("dt"),a=H(e),i=S(),r=k("dd"),_=H(u),m=S(),this.h()},l(v){t=$(v,"DIV",{class:!0});var n=C(t);l=$(n,"DT",{class:!0});var c=C(l);a=P(c,e),c.forEach(g),i=I(n),r=$(n,"DD",{class:!0});var o=C(r);_=P(o,u),o.forEach(g),m=I(n),n.forEach(g),this.h()},h(){w(l,"class","svelte-g13mfe"),w(r,"class","svelte-g13mfe"),w(t,"class","dl-item svelte-g13mfe")},m(v,n){B(v,t,n),d(t,l),d(l,a),d(t,i),d(t,r),d(r,_),d(t,m)},p(v,n){n&4&&e!==(e=v[6].header+"")&&Q(a,e),n&5&&u!==(u=ne(v[3],v[6])+"")&&Q(_,u)},d(v){v&&g(t)}}}function re(s){let t,l=s[6].header!=="Name"&&s[6].header!=="Slug"&&ae(s);return{c(){l&&l.c(),t=x()},l(e){l&&l.l(e),t=x()},m(e,a){l&&l.m(e,a),B(e,t,a)},p(e,a){e[6].header!=="Name"&&e[6].header!=="Slug"?l?l.p(e,a):(l=ae(e),l.c(),l.m(t.parentNode,t)):l&&(l.d(1),l=null)},d(e){e&&g(t),l&&l.d(e)}}}function se(s){let t,l,e,a,i=s[3].name+"",r,u,_,m,v,n=z(s[2]),c=[];for(let o=0;o<n.length;o+=1)c[o]=re(le(s,n,o));return{c(){t=k("article"),l=k("header"),e=k("h2"),a=k("a"),r=H(i),_=S(),m=k("dl");for(let o=0;o<c.length;o+=1)c[o].c();v=S(),this.h()},l(o){t=$(o,"ARTICLE",{class:!0});var b=C(t);l=$(b,"HEADER",{});var f=C(l);e=$(f,"H2",{class:!0});var p=C(e);a=$(p,"A",{href:!0});var E=C(a);r=P(E,i),E.forEach(g),p.forEach(g),f.forEach(g),_=I(b),m=$(b,"DL",{class:!0});var y=C(m);for(let N=0;N<c.length;N+=1)c[N].l(y);y.forEach(g),v=I(b),b.forEach(g),this.h()},h(){w(a,"href",u=`${s[1]}/${s[3].slug}`),w(e,"class","svelte-g13mfe"),w(m,"class","svelte-g13mfe"),w(t,"class","card svelte-g13mfe")},m(o,b){B(o,t,b),d(t,l),d(l,e),d(e,a),d(a,r),d(t,_),d(t,m);for(let f=0;f<c.length;f+=1)c[f]&&c[f].m(m,null);d(t,v)},p(o,b){if(b&1&&i!==(i=o[3].name+"")&&Q(r,i),b&3&&u!==(u=`${o[1]}/${o[3].slug}`)&&w(a,"href",u),b&5){n=z(o[2]);let f;for(f=0;f<n.length;f+=1){const p=le(o,n,f);c[f]?c[f].p(p,b):(c[f]=re(p),c[f].c(),c[f].m(m,null))}for(;f<c.length;f+=1)c[f].d(1);c.length=n.length}},d(o){o&&g(t),ue(c,o)}}}function Ce(s){let t,l=z(s[0]),e=[];for(let a=0;a<l.length;a+=1)e[a]=se(te(s,l,a));return{c(){t=k("div");for(let a=0;a<e.length;a+=1)e[a].c();this.h()},l(a){t=$(a,"DIV",{class:!0});var i=C(t);for(let r=0;r<e.length;r+=1)e[r].l(i);i.forEach(g),this.h()},h(){w(t,"class","cards-container svelte-g13mfe")},m(a,i){B(a,t,i);for(let r=0;r<e.length;r+=1)e[r]&&e[r].m(t,null)},p(a,[i]){if(i&7){l=z(a[0]);let r;for(r=0;r<l.length;r+=1){const u=te(a,l,r);e[r]?e[r].p(u,i):(e[r]=se(u),e[r].c(),e[r].m(t,null))}for(;r<e.length;r+=1)e[r].d(1);e.length=l.length}},i:M,o:M,d(a){a&&g(t),ue(e,a)}}}function ne(s,t){return t.cell?t.cell({value:s[t.accessor]}):s[t.accessor]??"N/A"}function we(s,t,l){let{data:e}=t,{url:a}=t,{columns:i}=t;return s.$$set=r=>{"data"in r&&l(0,e=r.data),"url"in r&&l(1,a=r.url),"columns"in r&&l(2,i=r.columns)},[e,a,i]}class ye extends ce{constructor(t){super(),ie(this,t,we,Ce,oe,{data:0,url:1,columns:2})}}function Te(s){let t,l;return t=new ye({props:{data:s[1],columns:s[3],url:s[2]}}),{c(){U(t.$$.fragment)},l(e){j(t.$$.fragment,e)},m(e,a){K(t,e,a),l=!0},p:M,i(e){l||(A(t.$$.fragment,e),l=!0)},o(e){V(t.$$.fragment,e),l=!1},d(e){Y(t,e)}}}function Le(s){let t,l;return t=new Ee({props:{data:s[1],label:Se,columns:s[3],sortBy:s[4],url:s[2]}}),{c(){U(t.$$.fragment)},l(e){j(t.$$.fragment,e)},m(e,a){K(t,e,a),l=!0},p:M,i(e){l||(A(t.$$.fragment,e),l=!0)},o(e){V(t.$$.fragment,e),l=!1},d(e){Y(t,e)}}}function De(s){let t,l,e,a,i="People",r,u,_,m,v,n,c,o,b,f,p,E,y,N,W;document.title="People | "+ge,m=new ke({}),o=new $e({});const X=[Le,Te],L=[];function Z(h,T){return h[0]==="table"?0:1}return p=Z(s),E=L[p]=X[p](s),{c(){t=S(),l=k("article"),e=k("header"),a=k("h1"),a.textContent=i,r=S(),u=k("div"),_=k("button"),U(m.$$.fragment),v=H("Table view"),n=S(),c=k("button"),U(o.$$.fragment),b=H("Card view"),f=S(),E.c(),this.h()},l(h){de("svelte-yypte9",document.head).forEach(g),t=I(h),l=$(h,"ARTICLE",{});var D=C(l);e=$(D,"HEADER",{});var R=C(e);a=$(R,"H1",{"data-svelte-h":!0}),he(a)!=="svelte-120h8qb"&&(a.textContent=i),r=I(R),u=$(R,"DIV",{class:!0});var q=C(u);_=$(q,"BUTTON",{class:!0});var F=C(_);j(m.$$.fragment,F),v=P(F,"Table view"),F.forEach(g),n=I(q),c=$(q,"BUTTON",{class:!0});var J=C(c);j(o.$$.fragment,J),b=P(J,"Card view"),J.forEach(g),q.forEach(g),R.forEach(g),f=I(D),E.l(D),D.forEach(g),this.h()},h(){w(_,"class","svelte-ntp5bx"),O(_,"active",s[0]==="table"),w(c,"class","svelte-ntp5bx"),O(c,"active",s[0]==="cards"),w(u,"class","view-toggle svelte-ntp5bx")},m(h,T){B(h,t,T),B(h,l,T),d(l,e),d(e,a),d(e,r),d(e,u),d(u,_),K(m,_,null),d(_,v),d(u,n),d(u,c),K(o,c,null),d(c,b),d(l,f),L[p].m(l,null),y=!0,N||(W=[ee(_,"click",s[6]),ee(c,"click",s[7])],N=!0)},p(h,[T]){(!y||T&1)&&O(_,"active",h[0]==="table"),(!y||T&1)&&O(c,"active",h[0]==="cards");let D=p;p=Z(h),p===D?L[p].p(h,T):(me(),V(L[D],1,1,()=>{L[D]=null}),_e(),E=L[p],E?E.p(h,T):(E=L[p]=X[p](h),E.c()),A(E,1),E.m(l,null))},i(h){y||(A(m.$$.fragment,h),A(o.$$.fragment,h),A(E),y=!0)},o(h){V(m.$$.fragment,h),V(o.$$.fragment,h),V(E),y=!1},d(h){h&&(g(t),g(l)),Y(m),Y(o),L[p].d(),N=!1,fe(W)}}}const Se="people";function Ie(s,t,l){let{data:e}=t;const{people:a,url:i}=e;let r="table";const u=[{header:"Slug",accessor:"slug"},ve,pe,{header:"Gender",accessor:"gender",cell:({value:n})=>n??G,plugins:{sort:{getSortValue(n){return(n||"").toLowerCase()}}}},{header:"Nationality",accessor:"nationality",cell:({value:n})=>n??G,plugins:{sort:{getSortValue(n){return(n||"").toLowerCase()}}}},{header:"Ethnicity",accessor:"ethnicity",cell:({value:n})=>n??G,plugins:{sort:{getSortValue(n){return(n||"").toLowerCase()}}}},{header:"Language",accessor:"language",cell:({value:n})=>n??G,plugins:{sort:{getSortValue(n){return(n||"").toLowerCase()}}}},be],_={initialSortKeys:[{id:"name",order:"asc"}]},m=()=>l(0,r="table"),v=()=>l(0,r="cards");return s.$$set=n=>{"data"in n&&l(5,e=n.data)},[r,a,i,u,_,e,m,v]}class qe extends ce{constructor(t){super(),ie(this,t,Ie,De,oe,{data:5})}}export{qe as component};
