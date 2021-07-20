var DongHua={};

function FoundId(id){

         return document.getElementById(id)

         }

function FoundName(c,p){

         return p.getElementsByTagName(c)

         }

DongHua.Photos = function(){

         function init(anchor,options){

                   this.anchor = anchor;

                   var wp = FoundId(options.id),

                            ul = FoundName('ul',wp)[0],

                            li = this.li = FoundName('li',ul);

                   this.index = options.position?options.position:0;

                   this.a = options.auto?options.auto:2;

                   this.cur = this.z = 0;

                   this.l = li.length;

                   this.img = [];

                   for(var k=0;k<this.l;k++){

                            this.img.push(FoundName('img',this.li[k])[0]);

                   }

                   this.curC = options.curNavClass?options.curNavClass:'Photos-cur-nav';

                   nav_wp = document.createElement('div');

                   nav_wp.id = 'Photos-nav';

                   nav_wp.style.cssText = 'position:absolute;right:0;bottom:0;padding:8px 0;';

                   var alt = this.alt = document.createElement('p');

                   for(var i=0;i<this.l;i++){

                            this.li[i].o = 100;

                            //setOpacity(this.li[i],this.li.o);

                            this.li[i].style.opacity = this.li[i].o/100;

                            this.li[i].style.filter = 'alpha(opacity='+this.li[i].o+')';

                            //绘制控制器

                            var nav = document.createElement('a');

                            nav.className = options.navClass?options.navClass:'Photos-nav';

                            nav.innerHTML = i+1;

                            nav.onclick = new Function(this.anchor+'.pos('+i+')');

                            nav_wp.appendChild(nav);

                   }

                   wp.appendChild(alt);                

                   wp.appendChild(nav_wp);

                   this.textH = nav_wp.offsetHeight;

                                     alt.style.cssText = 'color:#fff;font-size:12px;padding-left:20px;margin:0px;position:absolute;left:0;bottom:0;overflow:hidden;width:100%;background:#000;opacity:0.7;filter:alpha(opacity=70);';

                                     alt.style.height = alt.style.lineHeight = this.textH+'px';

                   this.pos(this.index);

         }

         init.prototype={

                   auto:function(){

                            this.li.a = setInterval(new Function(this.anchor+'.move(1)'),this.a*1000);

                   },

                   move:function(i){

                            var n = this.cur+i;

                            var m = i==1?n==this.l?0:n:n<0?this.l-1:n;

                            this.pos(m);

                   },

                   pos:function(i){

                            clearInterval(this.li.a);

                            clearInterval(this.li[i].f);

                            var curLi = this.li[i];

                            this.z++;

                            curLi.style.zIndex = this.z;

                            this.alt.style.zIndex = this.z+1;

                            nav_wp.style.zIndex = this.z+2;

                            this.li.a=false;//这句话是必要的

                            this.cur = i;

                            //setOpacity(curLi[i],0);

                            if(this.li[i].o>=100){

                                     this.li[i].o = 0;

                                     curLi.style.opacity = 0;

                                     curLi.style.filter = 'alpha(opacity=0)';

                                     this.alt.style.height = '0px';

                            }

                            for(var x=0;x<this.l;x++){

                                     nav_wp.getElementsByTagName('a')[x].className = x==i?this.curC:'Photos-nav';

                                     }

                            this.alt.innerHTML = this.img[i].alt;

                            this.li[i].f = setInterval(new Function(this.anchor+'.fade('+i+')'),20);

                   },

                   fade:function(i){

                   var p=this.li[i];

                            if(p.o>=100){

                                     clearInterval(p.f);

                                     if(!this.li.a){//一定要在这里做个是否已经clearInterval的判断，要不然在快速点击的时候会导致图片不停地闪

                                               this.auto();

                                     }

                            }

                            else{
                                     p.o+=5;
                                     //setOpacity(this.li[i],this.li[i].o);
                                     p.style.opacity = p.o/100;
                                     p.style.filter = 'alpha(opacity='+p.o+')';
                                     this.alt.style.height = Math.ceil(p.o*this.textH/100)+'px';
                            }
                   }
         };

         return {init:init};

}();