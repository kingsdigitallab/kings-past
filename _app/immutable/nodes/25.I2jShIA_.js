import{s}from"../chunks/scheduler.HAtzMe-w.js";import{S as r,i,c as f,a as c,m as u,t as p,b as _,d as l}from"../chunks/index.47LFtYJN.js";import{M as $}from"../chunks/moment.CH26uJ3c.js";function g(a){let e,m;return e=new $({props:{meta:a[0].meta,metaExtra:a[0].essayMeta,content:a[0].essay,moments:a[0].moments}}),{c(){f(e.$$.fragment)},l(t){c(e.$$.fragment,t)},m(t,n){u(e,t,n),m=!0},p(t,[n]){const o={};n&1&&(o.meta=t[0].meta),n&1&&(o.metaExtra=t[0].essayMeta),n&1&&(o.content=t[0].essay),n&1&&(o.moments=t[0].moments),e.$set(o)},i(t){m||(p(e.$$.fragment,t),m=!0)},o(t){_(e.$$.fragment,t),m=!1},d(t){l(e,t)}}}function d(a,e,m){let{data:t}=e;return a.$$set=n=>{"data"in n&&m(0,t=n.data)},[t]}class E extends r{constructor(e){super(),i(this,e,d,g,s,{data:0})}}export{E as component};