import{_ as c}from"./index.Cm9hE2-k.js";import{_ as d}from"./index.D8ZiZd9I.js";import{_ as l}from"./index.Cv3IRekP.js";import{_ as p}from"./index.D6tN2aES.js";import{_ as g}from"./index.wsq-8dUE.js";import{_ as f}from"./index.BomdCFH5.js";import{_ as b}from"./index.CVLCskwt.js";import{_ as u}from"./index.D-iTE7UT.js";import{_ as v}from"./index.bu9zFX0m.js";import{_ as y}from"./index.B108MRZN.js";import{_ as x}from"./index.CfFUqA-d.js";import{_ as h}from"./index.CgUkf2b7.js";import{_ as C}from"./index.jM00eb5s.js";import{_ as j}from"./thomas-guy.DWRc_EwF.js";import{_ as w}from"./africanus-horton.Cgp2Wnbv.js";import{_ as M}from"./introduction-moment-2.B-ji3OsM.js";import{_ as k}from"./william-gladstone.CiiJZY6R.js";import{_ as B}from"./maurice.C3W-Gb1s.js";import{_ as O}from"./herbert-edwardes.TyEZwcV_.js";import{_ as S}from"./war-studies-at-kcl.C3-yyVde.js";import{_ as A}from"./kings-ladies-department.CVxJKkRw.js";function Z(m){if(!m.includes(":"))return{year:"",name:m};const[e="",r=""]=m.split(":").map(s=>s.trim());return{year:e,name:r}}async function tt(){const m=[],e=Object.assign({"/src/moments/01/index.md":c,"/src/moments/02/index.md":d,"/src/moments/03/index.md":l,"/src/moments/04/index.md":p,"/src/moments/05/index.md":g,"/src/moments/06/index.md":f,"/src/moments/07/index.md":b,"/src/moments/08/index.md":u,"/src/moments/09/index.md":v,"/src/moments/10/index.md":y,"/src/moments/11/index.md":x,"/src/moments/12/index.md":h,"/src/moments/13/index.md":C});for(const r in e){const s=e[r],n=r.split("/").at(-2);if(s&&typeof s=="object"&&"metadata"in s&&n){const t={...s.metadata,slug:n};m.push(t)}}return m}function ot(m){return String(m).padStart(2,"0")}async function mt(m){var i;const e=[],r=Object.assign({"/src/moments/01/thomas-guy.md":j,"/src/moments/02/africanus-horton.md":w,"/src/moments/02/introduction-moment-2.md":M,"/src/moments/02/william-gladstone.md":k,"/src/moments/03/maurice.md":B,"/src/moments/04/herbert-edwardes.md":O,"/src/moments/04/war-studies-at-kcl.md":S,"/src/moments/07/kings-ladies-department.md":A});for(const t in r){const o=r[t],_=(i=t.split("/").at(-1))==null?void 0:i.split(".").at(0);if(t.startsWith(`/src/moments/${m}`)&&o&&typeof o=="object"&&"metadata"in o&&_){const a={...o.metadata,slug:_};e.push(a)}}const s="Academic";return e.sort((t,o)=>{var _;return((_=t.category)==null?void 0:_.localeCompare(o.category||""))||t.title.localeCompare(o.title)}).reduce((t,o)=>{const _=(o==null?void 0:o.category)||s;return t[_]=t[_]||[],t[_].push(o),t},{})}export{mt as a,ot as b,tt as g,Z as s};
