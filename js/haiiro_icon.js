var HaiiroIcon;HaiiroIcon=function(){var t,i;function n(t,i){this.defaults=i;this.rects=document.getElementById(t).childNodes;this.paintWithDefault()}t=function(t){var i;i=[];while(i.length<7){i=i.concat(t)}return i.slice(0,7)};n.prototype.paintWithDefault=function(){return this.paint(this.defaults)};n.prototype.paintTarget=function(t,i){return this.rects[t].setAttribute("fill",i)};n.prototype.paint=function(i){var n,r,o,a;n=t.call(this,i);if(n.length===7){a=[];for(o=r=0;r<=6;o=++r){a.push(this.rects[o].setAttribute("fill",n[o]))}return a}};i=function(t){if(t===0&&this.finishLogic()){this.paint(this.randomColors);this.finishCallback();return}else if(t===0){t+=100}return setTimeout(function(n){return function(){n.paintTarget(Math.floor(Math.random()*7),n.randomColors[Math.floor(Math.random()*7)]);return i.call(n,t-1)}}(this),15)};n.prototype.randomPaintStart=function(n,r,o){this.finishLogic=r;this.finishCallback=o;this.randomColors=t.call(this,n);return i.call(this,100)};return n}();