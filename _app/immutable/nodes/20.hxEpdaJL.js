import{s as M}from"../chunks/scheduler.DyeQaagj.js";import{S as O,i as T,n as U,o as w,p as D,q as K,r as z,u as B,s as b,v as E,f as k,g,d as c,e as u,c as p,a as d,k as y,h as _,m as j,t as q,b as A,l as v,j as H}from"../chunks/index.DYZKNNvD.js";import{e as $}from"../chunks/each.D6YF6ztN.js";import{M as F}from"../chunks/moment.CTnoOTwK.js";function C(f,t,o){const e=f.slice();return e[1]=t[o],e}function P(f,t,o){const e=f.slice();return e[4]=t[o],e}function I(f){let t,o,e="Detailed research",s,n,r=$(f[0].essays),l=[];for(let a=0;a<r.length;a+=1)l[a]=L(P(f,r,a));return{c(){t=u("section"),o=u("h2"),o.textContent=e,s=b(),n=u("ul");for(let a=0;a<l.length;a+=1)l[a].c()},l(a){t=p(a,"SECTION",{});var m=d(t);o=p(m,"H2",{"data-svelte-h":!0}),y(o)!=="svelte-1fpkpjd"&&(o.textContent=e),s=k(m),n=p(m,"UL",{});var i=d(n);for(let h=0;h<l.length;h+=1)l[h].l(i);i.forEach(c),m.forEach(c)},m(a,m){g(a,t,m),_(t,o),_(t,s),_(t,n);for(let i=0;i<l.length;i+=1)l[i]&&l[i].m(n,null)},p(a,m){if(m&1){r=$(a[0].essays);let i;for(i=0;i<r.length;i+=1){const h=P(a,r,i);l[i]?l[i].p(h,m):(l[i]=L(h),l[i].c(),l[i].m(n,null))}for(;i<l.length;i+=1)l[i].d(1);l.length=r.length}},d(a){a&&c(t),j(l,a)}}}function L(f){let t,o,e=f[4].title+"",s,n;return{c(){t=u("li"),o=u("a"),s=q(e),this.h()},l(r){t=p(r,"LI",{});var l=d(t);o=p(l,"A",{href:!0});var a=d(o);s=A(a,e),a.forEach(c),l.forEach(c),this.h()},h(){v(o,"href",n=f[0].slug+"/"+f[4].slug)},m(r,l){g(r,t,l),_(t,o),_(o,s)},p(r,l){l&1&&e!==(e=r[4].title+"")&&H(s,e),l&1&&n!==(n=r[0].slug+"/"+r[4].slug)&&v(o,"href",n)},d(r){r&&c(t)}}}function N(f){let t,o,e="King's lives",s,n,r=$(f[0].momentPeople),l=[];for(let a=0;a<r.length;a+=1)l[a]=S(C(f,r,a));return{c(){t=u("section"),o=u("h2"),o.textContent=e,s=b(),n=u("ul");for(let a=0;a<l.length;a+=1)l[a].c()},l(a){t=p(a,"SECTION",{});var m=d(t);o=p(m,"H2",{"data-svelte-h":!0}),y(o)!=="svelte-5udxg4"&&(o.textContent=e),s=k(m),n=p(m,"UL",{});var i=d(n);for(let h=0;h<l.length;h+=1)l[h].l(i);i.forEach(c),m.forEach(c)},m(a,m){g(a,t,m),_(t,o),_(t,s),_(t,n);for(let i=0;i<l.length;i+=1)l[i]&&l[i].m(n,null)},p(a,m){if(m&1){r=$(a[0].momentPeople);let i;for(i=0;i<r.length;i+=1){const h=C(a,r,i);l[i]?l[i].p(h,m):(l[i]=S(h),l[i].c(),l[i].m(n,null))}for(;i<l.length;i+=1)l[i].d(1);l.length=r.length}},d(a){a&&c(t),j(l,a)}}}function S(f){let t,o,e=f[0].people[f[1].person].name+"",s,n,r;return{c(){t=u("li"),o=u("a"),s=q(e),r=b(),this.h()},l(l){t=p(l,"LI",{});var a=d(t);o=p(a,"A",{href:!0});var m=d(o);s=A(m,e),m.forEach(c),r=k(a),a.forEach(c),this.h()},h(){v(o,"href",n="../database/people/"+f[1].person)},m(l,a){g(l,t,a),_(t,o),_(o,s),_(t,r)},p(l,a){a&1&&e!==(e=l[0].people[l[1].person].name+"")&&H(s,e),a&1&&n!==(n="../database/people/"+l[1].person)&&v(o,"href",n)},d(l){l&&c(t)}}}function G(f){let t,o,e=f[0].essays&&f[0].essays.length>0&&I(f),s=f[0].momentPeople&&f[0].momentPeople.length>0&&N(f);return{c(){e&&e.c(),t=b(),s&&s.c(),o=E()},l(n){e&&e.l(n),t=k(n),s&&s.l(n),o=E()},m(n,r){e&&e.m(n,r),g(n,t,r),s&&s.m(n,r),g(n,o,r)},p(n,r){n[0].essays&&n[0].essays.length>0?e?e.p(n,r):(e=I(n),e.c(),e.m(t.parentNode,t)):e&&(e.d(1),e=null),n[0].momentPeople&&n[0].momentPeople.length>0?s?s.p(n,r):(s=N(n),s.c(),s.m(o.parentNode,o)):s&&(s.d(1),s=null)},d(n){n&&(c(t),c(o)),e&&e.d(n),s&&s.d(n)}}}function J(f){let t,o;return t=new F({props:{meta:f[0].meta,content:f[0].content,moments:f[0].moments,$$slots:{default:[G]},$$scope:{ctx:f}}}),{c(){U(t.$$.fragment)},l(e){w(t.$$.fragment,e)},m(e,s){D(t,e,s),o=!0},p(e,[s]){const n={};s&1&&(n.meta=e[0].meta),s&1&&(n.content=e[0].content),s&1&&(n.moments=e[0].moments),s&129&&(n.$$scope={dirty:s,ctx:e}),t.$set(n)},i(e){o||(K(t.$$.fragment,e),o=!0)},o(e){z(t.$$.fragment,e),o=!1},d(e){B(t,e)}}}function Q(f,t,o){let{data:e}=t;return f.$$set=s=>{"data"in s&&o(0,e=s.data)},[e]}class Y extends O{constructor(t){super(),T(this,t,Q,J,M,{data:0})}}export{Y as component};