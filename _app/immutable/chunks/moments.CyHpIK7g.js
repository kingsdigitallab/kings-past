import{_ as c}from"./index.BfczS5W3.js";import{_ as d}from"./index.DAQFRSKv.js";import{_ as p}from"./index.DKWcmT_w.js";import{_ as l}from"./index.Cat0BLVV.js";import{_ as g}from"./index.BUugRJFe.js";import{_ as f}from"./index.B-GV6YuP.js";import{_ as b}from"./index.C2plJBVr.js";import{_ as u}from"./index.DTMwlzXx.js";import{_ as v}from"./index.CjydRHSF.js";import{_ as x}from"./index.YMKUnOhB.js";import{_ as y}from"./index.BaDSSJiC.js";import{_ as h}from"./index.D9vgoLzh.js";import{_ as C}from"./index.B0Kr2sb-.js";import{_ as j}from"./introduction-moment-2.BS7FvbIR.js";import{_ as M}from"./student.-MXkc_ZF.js";import{_ as B}from"./war-studies-at-kcl.BHz9xZgv.js";function I(s){const[_="",r=""]=s.split(":").map(e=>e.trim());return{year:_,name:r}}async function J(){const s=[],_=Object.assign({"/src/moments/01/index.md":c,"/src/moments/02/index.md":d,"/src/moments/03/index.md":p,"/src/moments/04/index.md":l,"/src/moments/05/index.md":g,"/src/moments/06/index.md":f,"/src/moments/07/index.md":b,"/src/moments/08/index.md":u,"/src/moments/09/index.md":v,"/src/moments/10/index.md":x,"/src/moments/11/index.md":y,"/src/moments/12/index.md":h,"/src/moments/13/index.md":C});for(const r in _){const e=_[r],n=r.split("/").at(-2);if(e&&typeof e=="object"&&"metadata"in e&&n){const t={...e.metadata,slug:n};s.push(t)}}return s}function K(s){return String(s).padStart(2,"0")}async function L(s){var i;const _=[],r=Object.assign({"/src/moments/02/introduction-moment-2.md":j,"/src/moments/04/student.md":M,"/src/moments/04/war-studies-at-kcl.md":B});for(const t in r){const o=r[t],m=(i=t.split("/").at(-1))==null?void 0:i.split(".").at(0);if(t.startsWith(`/src/moments/${s}`)&&o&&typeof o=="object"&&"metadata"in o&&m){const a={...o.metadata,slug:m};_.push(a)}}const e="Academic";return _.sort((t,o)=>{var m;return((m=t.category)==null?void 0:m.localeCompare(o.category||""))||t.title.localeCompare(o.title)}).reduce((t,o)=>{const m=(o==null?void 0:o.category)||e;return t[m]=t[m]||[],t[m].push(o),t},{})}export{L as a,K as b,J as g,I as s};