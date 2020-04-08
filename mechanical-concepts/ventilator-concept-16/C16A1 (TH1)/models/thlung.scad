pads=0;

plastik="red";
alu    ="white";
steel    ="darkgrey";
filament    ="red";

nema17=31/2;
moth=40;
plateth=3;
axdist=100;
axdia=8;
rbig=40;

b608dia=22;
b608h=7;


lagerod=b608dia;
lagerh=8;
actorh=lagerh;
actord=80;
armrot=45;
frameih=30;

roddia=8;
lagerdia=22;
roddistx=lagerdia*2;
bagdia=165;
bagl=165;
bagl2=165+150;
outletdia=80;
beltwidth=20;
plate1w=bagdia+20;
plate1l1=0;
plate1l2=175;
stampdia=100;
stampfixdist=80;
myx=(bagdia/3+plate1w*1.4)/2;
    echo(str("myx=",myx));

    segoff=8;
ml=230;//350;
mindist=60;//belt 16 (2 bearings), washer 4*1
pusherlen=60;
angle=10;
stamprot=10;
bagz=150;

angle=20-$t*30;

actorw=60;
//projection(cut=false){actor2a();}
main2();
//actor1(1);
//pad(22);
//actor1(0);

//boardclip();

//motholder();



//translate([0,0,bagz])rotate([90,0,0])%hull()bag();
//translate([0,40+10,0])rotate([90,0,0])motor();
//translate([0,0,bagz])rotate([90,0,0])arm();
//roller(70,40-4);

module roller(d,b){
    th=3;
    rand=10;
    difference(){
        union(){
            difference(){
               sphere(d=d,$fn=64);
               mirror([0,0,1])cylinder(r=d,h=d); 
               translate([0,0,b/2])cylinder(r=d,h=d); 
               translate([0,0,-1])cylinder(d=d-rand*2,h=d,$fn=256); 
            }
            for(i=[0,120,240])
                 rotate([0,0,i])hull(){
                 translate([d/2-rand,0,0])cylinder(d=10,h=b/2);
                 translate([0,0,0])cylinder(d=10,h=b/2);
                 }
            cylinder(d=b608dia+2*th,h=b/2,$fn=64);
            
            }
        translate([0,0,b/2-b608h])
            cylinder(d=b608dia+.7,h=b/2,$fn=64);
        translate([0,0,b/2-b608h-2])
            cylinder(d=b608dia-3,h=b/2,$fn=64);
        translate([0,0,-1])
            cylinder(d=b608dia-3,h=b/2,$fn=64);
        for(i=[0,120,240])
            rotate([0,0,i])
             translate([d/2-rand,0,-1])cylinder(d=2.5,h=b/2+2);
    }
}


module motholder(){

th=plateth;
th2=8;
    motoff=10;
    fixlen=30;
    fixw=30;
    if(pads>0){
        translate([-60,0,0])pad(22);
        translate([0,25,0])pad(22);
        translate([0,-25,0])pad(22);
        translate([70,15,0])pad(22);
        translate([70,-15,0])pad(22);
        }
    
    difference(){
        union(){
            hull(){
                translate([-roddistx,0,0])cylinder(d=roddia*3,h=th);
                translate([0,0,0])cylinder(d=roddia*3,h=th);
                translate([nema17*2+motoff,-fixw/2,0])
                    cylinder(d=8,h=th);
                translate([nema17*2+motoff, fixw/2,0])
                    cylinder(d=8,h=th);
                translate([nema17*2+motoff+fixlen,-fixw/2,0])
                    cylinder(d=8,h=th);
                translate([nema17*2+motoff+fixlen, fixw/2,0])
                    cylinder(d=8,h=th);            }
            translate([0,0,0])
            rotate([0,0,45])
            hull()
            for(a=[0,90,180,270]){
                rotate([0,0,a])
                translate([-16,-16,0])
                  cylinder(d=8,h=plateth, $fn=32);
            }
                translate([0,0,0])cylinder(d=nema17*3,h=th);
            hull(){
                translate([nema17*2+motoff+fixlen,-fixw/2,0])
                    cylinder(d=8,h=th2);
                translate([nema17*2+motoff,fixw/2,0])
                    cylinder(d=8,h=th2);
            }
            hull(){
                translate([nema17*2+motoff,-fixw/2,0])
                    cylinder(d=8,h=th2);
                translate([nema17*2+motoff+fixlen, fixw/2,0])
                    cylinder(d=8,h=th2);
            }
        }
        translate([-roddistx,0,-1])cylinder(d=roddia+1,h=th+2);
        hull(){
        translate([-roddistx,0,-1])cylinder(d=roddia,h=th+2);
        translate([-roddistx-50,0,-1])cylinder(d=roddia,h=th+2);
        }
        translate([0,0,-1])cylinder(d=5,h=th+2);
            translate([0,0,0])
            rotate([0,0,45])
            for(a=[0,90,180,270]){
                rotate([0,0,a])
                translate([-16,-16,-1])
                  cylinder(d=3,h=th+2, $fn=32);
                
            }
            translate([0,0,-1])
                cylinder(d=24,h=th+2);
            translate([plate1w,0,-1])cylinder(d=roddia,h=th+2);
                translate([nema17*2+motoff,-fixw/2,-1])
                    cylinder(d=2.5,h=th2+2);
                translate([nema17*2+motoff, fixw/2,-1])
                    cylinder(d=2.5,h=th2+2);
                translate([nema17*2+motoff+fixlen,-fixw/2,-1])
                    cylinder(d=2.5,h=th2+2);
                translate([nema17*2+motoff+fixlen, fixw/2,-1])
                    cylinder(d=2.5,h=th2+2);
    }
}


module boardclip(){
   difference(){
       union(){
           translate([0,0,plateth])
                cube([8,8,2*plateth],center=true);
           cylinder(d=8,h=2*plateth,$fn=32);
           hull(){
           cylinder(d=8,h=plateth,$fn=32);
           translate([6,0,0])
           cylinder(d=8,h=plateth,$fn=32);
           }
       }
    translate([0,0,-1])cylinder(d=3.5,h=2*plateth+2,$fn=32);
    translate([3,0,2*plateth])
        cube([8,10,2*plateth],center=true);
       
   } 
}
module pad(d){
    cylinder(d=d,h=.5,$fn=64);
    
    }
module actor1(lager){
    th=plateth;
    actw=actorw;
    disty=50-10;
    dyoff=10+2;
    myd=8;
    if (pads>0){
              if(lager>0){  
    translate([-actw/2,20,0])pad(22);
    translate([ actw/2,20,0])pad(22);
              }
    translate([-actw/2,-20,0])pad(22);
    translate([ actw/2,-20,0])pad(22);
    translate([-actw/2,-80,0])pad(22);
    translate([ actw/2,-80,0])pad(22);
          }
    difference(){
        union(){
            
            if(lager>0){
                translate([-actw/2,0,th+b608dia/2])actor0();
                translate([ actw/2,0,th+b608dia/2])actor0();

                hull(){
                translate([-(actw-5)/2,-(b608dia/2+4),0])
                    cylinder(d=5,h=b608dia/2,$fn=32,
                                            center=false);
                translate([ (actw-5)/2,-(b608dia/2+4),0])
                    cylinder(d=5,h=b608dia/2,$fn=32,
                                            center=false);
                translate([-(actw-5)/2,-(b608dia/2+4)-dyoff,0])
                    cylinder(d=5,h=b608dia/2,$fn=32,
                                            center=false);
                translate([ (actw-5)/2,-(b608dia/2+4)-dyoff,0])
                    cylinder(d=5,h=b608dia/2,$fn=32,
                                            center=false);
                }
            }
            
            
            
            hull(){
    translate([ 0,-(b608dia/2+4)-5-dyoff-disty/2,0]){
        translate([-(actw-myd)/2, (disty/2+myd),0])
        cylinder(d=myd,h=b608dia/2,$fn=128,center=false);  
        translate([ (actw-myd)/2, (disty/2+myd),0])
        cylinder(d=myd,h=b608dia/2,$fn=128,center=false);  
    }

            translate([-(actw-myd)/2,-(b608dia/2+4)-dyoff,0])
                cylinder(d=myd,h=b608dia/2,$fn=32,
                                        center=false);
            translate([ (actw-myd)/2,-(b608dia/2+4)-dyoff,0])
                cylinder(d=myd,h=b608dia/2,$fn=32,
                                        center=false);
            translate([-(actw-myd)/2,-(b608dia/2+4)-dyoff*2-disty,0])
                cylinder(d=myd,h=b608dia/2,$fn=32,
                                        center=false);
            translate([ (actw-myd)/2,-(b608dia/2+4)-dyoff*2-disty,0])
                cylinder(d=myd,h=b608dia/2,$fn=32,
                                        center=false);
            }          


        }
    translate([-actw/2,-(b608dia/2+4),-1])
        cylinder(d=2.5,h=b608dia/2+2,$fn=32,center=false);
    translate([ actw/2,-(b608dia/2+4),-1])
        cylinder(d=2.5,h=b608dia/2+2,$fn=32,center=false);
    translate([ 0,-(b608dia/2+4)-5-dyoff-disty/2,b608dia/4])
        cylinder(d=disty,h=b608dia,$fn=128,center=true);
        
    translate([ 0,-(b608dia/2+4)-5-disty/2-dyoff+disty/2,b608dia/2+.5])
        rotate([0,90,0])
        cylinder(d=8,h=actw+2,$fn=32,center=true);
    translate([ 0,-(b608dia/2+4)-5-disty/2-dyoff-disty/2,b608dia/2+.5])
        rotate([0,90,0])
        cylinder(d=8,h=actw+2,$fn=32,center=true);


    translate([ 0,-(b608dia/2+4)-5-dyoff-disty/2,-1]){
        translate([-(actw-myd)/2,-(disty/2+myd),0])
        cylinder(d=2.5,h=b608dia+2,$fn=128,center=false);  
        translate([-(actw-myd)/2, (disty/2+myd),0])
        cylinder(d=2.5,h=b608dia+2,$fn=128,center=false);  
        translate([ (actw-myd)/2,-(disty/2+myd),0])
        cylinder(d=2.5,h=b608dia+2,$fn=128,center=false);  
        translate([ (actw-myd)/2, (disty/2+myd),0])
        cylinder(d=2.5,h=b608dia+2,$fn=128,center=false); 
        translate([-(actw-myd)/2, 0 ,0])
        cylinder(d=2.5,h=b608dia+2,$fn=128,center=false); 
        translate([ (actw-myd)/2, 0 ,0])
        cylinder(d=2.5,h=b608dia+2,$fn=128,center=false); 
    }   
    
    }
}

module actor0(){
    th=plateth;
    difference(){
        union(){
            hull(){
            translate([0,0,-b608dia/4-th])
                cube([b608h+2*th,b608dia+2*th,b608dia/2],center=true);
            translate([0,(b608dia/2+4),-b608dia/4-th])
                cylinder(d=b608h+2*th,h=b608dia/2,$fn=32,center=true);
   //         translate([0,-(b608dia/2+4),-b608dia/4-th])                cylinder(d=b608h+2*th,h=b608dia/2,$fn=32,center=true);
    translate([0,-(b608dia/2+4),-b608dia/4-th])  
                cube([b608h+2*th,5,b608dia/2],center=true);
                
            }
        }
//    echo (b608dia-4);
    rotate([0,90,0])
    cylinder(d=b608dia-4,h=b608h+2*th+2,$fn=32,center=true);
        translate()rotate([0,90,0])cylinder(d=b608dia+.7,h=b608h+.7, $fn=64, center=true);
        translate([0,(b608dia/2+4),-b608dia/4-th])
                cylinder(d=2.5,h=b608dia/2+2,$fn=32,center=true);
        translate([0,-(b608dia/2+4),-b608dia/4-th])
                cylinder(d=2.5,h=b608dia/2+2,$fn=32,center=true);
    }
}

module bedseg(segw,segl){
    th=plateth;
    
    translate([0,0,-bagdia/2+segoff-plateth])
 %      cube([segw,segl,th],center=true);
    
    translate([0,-mindist/2-plateth+12/2+.01,-bagdia/2+segoff-plateth])
          rotate([0,180,0])segh();
    translate([0, mindist/2-plateth-12/2-.01,-bagdia/2+segoff-plateth])
          rotate([0,180,0])segh();
    
}
module segh(){
   od=12;
   h1=15;
   color(plastik)
   difference(){
     hull(){
        cylinder(d=od,h=h1,$fn=32); 
        translate([od/2,0,h1/2])cube([od,od,h1],center=true);   
     }  
    translate([0,0,-1]) 
        cylinder(d=2.5,h=h1+2,$fn=32);    
    translate([od/2,0,h1-5]) 
       rotate([90,0,0])
        cylinder(d=2.5,h=h1+2,$fn=32,center=true);    
   } 
    
}

module gurt(){
belt=20;
   
    difference(){
        hull(){
            translate([0,0,0])rotate([-90,0,0]){
                 translate([0,0,0])rotate([0,0,$t*1440])cylinder(d=24+3,h=belt,$fn=64,center=true);
                 translate([-roddistx+6,0,0])rotate([0,0,$t*1440])cylinder(d=12+3,h=belt,$fn=64,center=true);
             }
             translate([ plate1w,0,plate1l2])rotate([0,-angle,0]){
                translate([-plate1w*1.4,0,0])rotate([90,0,0])cylinder(d=24+3,h=belt,$fn=64,center=true);
         }
        }
        
        hull(){
            translate([0,0,0])rotate([-90,0,0]){
                 translate([0,0,0])rotate([0,0,$t*1440])cylinder(d=24,h=belt+2,$fn=64,center=true);
                 translate([-roddistx+6,0,0])rotate([0,0,$t*1440])cylinder(d=8,h=belt+2,$fn=64,center=true);
             }
             translate([ plate1w,0,plate1l2])rotate([0,-angle,0]){
                translate([-plate1w*1.4,0,0])rotate([90,0,0])cylinder(d=24,h=belt+2,$fn=64,center=true);
         }
        } 
   
        hull(){
            translate([0,0,0])rotate([-90,0,0]){
                 translate([0,0,0])rotate([0,0,$t*1440])cylinder(d=24+3.1,h=belt,$fn=64,center=true);
                 translate([-roddistx,0,0])rotate([0,0,$t*1440])cylinder(d=12+3.1,h=belt,$fn=64,center=true);
             }
     
        
        
     } 
    }
               translate([0,0,0])rotate([-90,0,0]){
                 translate([0,0,0])rotate([0,0,$t*1440])cylinder(d=24+3.1,h=belt,$fn=64,center=true);
                 translate([-roddistx,0,0])rotate([0,0,$t*1440])cylinder(d=12+3.1,h=belt,$fn=64,center=true);
             }
    
}

module bag(){
    
    cylinder(d=bagdia,h=bagl,$fn=128,center=true);
    cylinder(d=outletdia,h=bagl2,$fn=128,center=true);
}

module main2(){
    
bs_w=55;
asn=2*atan((bs_w/2)/(bagdia/2-segoff));
bs_angle=asn;


    
translate([plate1w/2,0,bagdia/2+10]){
   for(i=[-3,-2,-1,0,1]){
    rotate([0,bs_angle*i,0]) bedseg(bs_w,235-15);
   }
}    
    
color("orange")gurt();
color(alu)translate([0,-ml/2,0])rotate([90,0,0])plate2(outletdia);
color(alu)translate([0, ml/2,0])rotate([90,0,0])plate2(outletdia);
color(alu)translate([0,-beltwidth/2-plateth-2,0])rotate([90,0,0])plate1();
//translate([0, mindist/2,0])rotate([90,0,0])plate1();
color(alu)translate([0,-mindist/2-plateth,0])rotate([90,0,0])plate2(bagdia);
color(alu)translate([0, mindist/2,0])rotate([90,0,0])plate2(bagdia);


translate([0,-(mindist/2+plateth+1),0])rotate([90,0,0])
translate([plate1w,plate1l2,0])rotate([0,0,angle]){
    %actor2a();
    }
translate([0, (mindist/2+plateth+1),0])rotate([90,0,0])
translate([plate1w,plate1l2,0])rotate([0,0,angle]){
    %actor2a();
    }
    
translate([plate1w,0,plate1l2])
    {
    translate([0,-actorw/2,0])rotate([90,0,0])bearing608();
    translate([0, actorw/2,0])rotate([90,0,0])bearing608();
    rotate([0,0,-90])rotate([angle-45,0,0])
        translate([0,0,-plateth-b608dia/2])actor1(1);
    rotate([0,0,-90])rotate([angle-45,0,0])
        translate([0,0,-plateth+b608dia/2+1])
            rotate([0,180,0])actor1(0);
    translate([0,-actorw/2,0])   
    rotate([0,0,-90])rotate([angle-45,0,0])
        translate([0,0,-plateth])
            rotate([0,180,0])actor0();
    translate([0, actorw/2,0])   
    rotate([0,0,-90])rotate([angle-45,0,0])
        translate([0,0,-plateth])
            rotate([0,180,0])actor0();
    }
    
    
color(plastik){
translate([0, -(pusherlen/2+plateth+1),0])rotate([90,0,0])
translate([plate1w,plate1l2,0])rotate([0,0,angle]){
    stamp();
    }
translate([0, (pusherlen/2+plateth+1),0])rotate([90,0,0])
translate([plate1w,plate1l2,0])rotate([0,0,angle]){
    stamp();
    }
}


translate([-roddistx,0,0])rotate([90,0,0])rod8(ml+10);
translate([ plate1w,0,0])rotate([90,0,0])rod8(ml+10);
translate([ plate1w,0,plate1l2])rotate([90,0,0])rod8(ml+10);

translate([ plate1w,0,plate1l2])rotate([0,-angle,0]){
  //  translate([-bagdia/3,0,bagdia/3])rotate([90,0,0])rod8(mindist+10);

 //#   rotate([0,40,0])translate([-70,0,-1])rotate([90,0,0])cylinder(d=roddia,h=200,center=true);   
    
 //   translate([-bagdia/3,0,bagdia/3])rotate([90,0,0])rod8(mindist+10);
    translate([-plate1w*1.4,0,0])   rotate([90,0,0])rod8(mindist+10);

    translate([-plate1w*1.4,-1.5*(b608h+.5)-1-1,0])rotate([90,0,0])washer(30);
    translate([-plate1w*1.4,-1.5*(b608h+.5)-1,0])rotate([90,0,0])washer(14);
    translate([-plate1w*1.4,-1*(b608h+.5),0])rotate([90,0,0])bearing608();
    translate([-plate1w*1.4,-0*(b608h+.5),0])rotate([90,0,0])bearing608();
    translate([-plate1w*1.4,+1*(b608h+.5),0])rotate([90,0,0])bearing608();
    translate([-plate1w*1.4,+1.5*(b608h+.5)+1+1,0])rotate([90,0,0])washer(30);
    translate([-plate1w*1.4,+1.5*(b608h+.5)+1,0])rotate([90,0,0])washer(14);
    
    translate([-myx,0,5])
    rotate([0,-stamprot,]){
        translate([-stampfixdist/2,5,0])rotate([90,0,0])rod8(mindist+10);
        translate([+stampfixdist/2,5,0])rotate([90,0,0])rod8(mindist+10);
    }

}

translate([0,-35-beltwidth-plateth-1,0])rotate([-90,0,0]){
    motor();
    translate([0,0,47-2])rotate([0,0,-$t*1440])color("yellow")gurtrolle(24);
}

//%  translate([plate1w/2,0,bagdia/2+10])rotate([90,0,0])cylinder(d=outletdia,center=true,h=ml+10);

/*
%plate2();
translate([plate1w,plate1l2,0])rotate([0,0,-5]){
    actor2();
    stamp();
    }
*/
}
module gurtrolle(d){
   flangeth=5;
   flangeplus=8;
   axdia=5+.7;
   spalt=2.5;
 //  color(plastik)
   difference(){
   union(){
   
   cylinder(d1=d+flangeplus,d2=22,h=flangeth,$fn=64); 
   cylinder(d=d,h=beltwidth+2*flangeth,$fn=64); 
   translate([0,0,beltwidth+flangeth])
   cylinder(d1=d,d2=d+flangeplus,h=flangeth,$fn=64); 
   }
   translate([0,0,-1])cylinder(d=axdia,h=beltwidth+2*flangeth+2,$fn=32);
   translate([8,0,-1])cylinder(d=axdia,h=beltwidth+2*flangeth+2,$fn=32);
   translate([0,-8,-1])cylinder(d=2.5,h=beltwidth+2*flangeth+2,$fn=32);
   translate([0,8,-1])cylinder(d=2.5,h=beltwidth+2*flangeth+2,$fn=32);
   hull(){
       translate([8,0,-1])cylinder(d=spalt,h=beltwidth+2*flangeth+2);
       translate([d,0,-1])cylinder(d=spalt,h=beltwidth+2*flangeth+2);
   }
   
   translate([-5-3+2,0,beltwidth+2*flangeth])
    cube([3,7-1,20],center=true);
   translate([-5-3,0,beltwidth+2*flangeth-10+3.5])
    rotate([0,90,0])
    cylinder(d=3,h=15,center=true,$fn=32);
   
   }
    
   }
module washer(od){
    color(steel)
    difference(){
        cylinder(d=od,h=.7,center=true,$fn=64);
        cylinder(d=8.4,h=.7+1,center=true,$fn=64);
        
    }
}
module bearing608(){
  color("black")difference(){
      cylinder(d=b608dia-2,h=b608h-1,center=true); 
      cylinder(d=8+1,h=b608h,center=true);  
  }   
  color(steel)difference(){
      cylinder(d=b608dia,h=b608h,center=true,$fn=64); 
      cylinder(d=b608dia-3,h=b608h+1,center=true); 
  }   
  color(steel)difference(){
      cylinder(d=8+4,h=b608h,center=true,$fn=64); 
      cylinder(d=8,h=b608h+2,center=true,$fn=32); 
  }   
}
module rod8(l){
color(steel)
  cylinder(d=8,h=l,$fn=32,center=true);    
}    
module stamp(){
th=plateth;
    translate([-myx,0,0])
    rotate([0,0,stamprot])
    difference(){
        union(){
           hull(){
 //          translate([-myx,0,0])
//           rotate([0,0,10])
           {
               translate([-stampfixdist/2,5,0])cylinder(d=roddia*3,h=th);
               translate([+stampfixdist/2,5,0])cylinder(d=roddia*3,h=th);
           }
            translate([myx-plate1w*1.4/2,-30,0]) cylinder(d=roddia*3,h=th);
           }
       }
//       translate([-myx,0,0])
//       rotate([0,0,10])
       {
           translate([-stampfixdist/2,5,-1])cylinder(d=roddia,h=th+2);
           translate([+stampfixdist/2,5,-1])cylinder(d=roddia,h=th+2);
       }  
       translate([myx-plate1w*1.4/2,-30,-1]) cylinder(d=roddia,h=th+2);
   }
}
module actor2a(){
th=plateth;
first=32;      
    difference(){  
        union(){  
    
 //    rotate([0,0,-40])       #translate([-first,0,0])cylinder(d=roddia,h=100,center=true);
           hull(){
               rotate([0,0,-40])translate([-first,0,0])cylinder(d=roddia*3,h=th);
               translate([-bagdia/3,bagdia/3,0])cylinder(d=roddia*3,h=th);
               translate([-bagdia/3,bagdia/4,0])cylinder(d=roddia*3,h=th);
           }
           hull(){
               translate([-bagdia/3,bagdia/4,0])cylinder(d=roddia*3,h=th);
               translate([-bagdia/3,bagdia/3,0])cylinder(d=roddia*3,h=th);
               translate([-plate1w*1.4,0,0])    cylinder(d=roddia*3,h=th);
           }
           translate([-myx,0,0])
           rotate([0,0,10])
           hull(){
               translate([-stampfixdist/2,5,0])cylinder(d=roddia*3,h=th);
               translate([+stampfixdist/2,5,0])cylinder(d=roddia*3,h=th);
           }
           
        }
       translate([0,0,-1])               cylinder(d=roddia,h=th+2);
        
    rotate([0,0,-40])translate([-first,0,-1])cylinder(d=roddia,h=th+2);   
    translate([2,2,0])
    rotate([0,0,-40])translate([-first-40,0,-1])cylinder(d=roddia,h=th+200,center=true);          
        
//       translate([-bagdia/3,bagdia/3,-1])cylinder(d=roddia,h=th+2);
       translate([-plate1w*1.4,0,-1])    cylinder(d=roddia,h=th+2);
       translate([-myx,0,0])
           rotate([0,0,10])
           {
               translate([-stampfixdist/2,5,-1])cylinder(d=roddia,h=th+2);
               translate([+stampfixdist/2,5,-1])cylinder(d=roddia,h=th+2);
           }
   //       translate([-plate1w*1.4/2,-30,0]) cylinder(d=stampdia,h=th+2);
    }  
   //echo(str("stampdia=",stampdia));
//   translate([-plate1w*1.4/2,-30,0]) cylinder(d=stampdia,h=th+2);
   
}
module actor2(){
th=plateth;
      
    difference(){  
        union(){  
           hull(){
               translate([0,0,0])cylinder(d=roddia*3,h=th);
               translate([-bagdia/3,bagdia/3,0])cylinder(d=roddia*3,h=th);
               translate([-bagdia/3,bagdia/4,0])cylinder(d=roddia*3,h=th);
           }
           hull(){
               translate([-bagdia/3,bagdia/4,0])cylinder(d=roddia*3,h=th);
               translate([-bagdia/3,bagdia/3,0])cylinder(d=roddia*3,h=th);
               translate([-plate1w*1.4,0,0])    cylinder(d=roddia*3,h=th);
           }
           translate([-myx,0,0])
           rotate([0,0,10])
           hull(){
               translate([-stampfixdist/2,5,0])cylinder(d=roddia*3,h=th);
               translate([+stampfixdist/2,5,0])cylinder(d=roddia*3,h=th);
           }
           
        }
       translate([0,0,-1])               cylinder(d=roddia,h=th+2);
       translate([-bagdia/3,bagdia/3,-1])cylinder(d=roddia,h=th+2);
       translate([-plate1w*1.4,0,-1])    cylinder(d=roddia,h=th+2);
       translate([-myx,0,0])
           rotate([0,0,10])
           {
               translate([-stampfixdist/2,5,-1])cylinder(d=roddia,h=th+2);
               translate([+stampfixdist/2,5,-1])cylinder(d=roddia,h=th+2);
           }
   //       translate([-plate1w*1.4/2,-30,0]) cylinder(d=stampdia,h=th+2);
    }  
   //echo(str("stampdia=",stampdia));
//   translate([-plate1w*1.4/2,-30,0]) cylinder(d=stampdia,h=th+2);
   
}

module plate2(od){
th=plateth;
    difference(){
        union(){
            translate([plate1w/2,bagdia/2+10])
            rotate([0,0,45])
            difference(){
                    cylinder(d=od+50,h=th,$fn=128);
                    translate([-od,0,-1])
                        cube([2*(od+50),od+50,th+2]);
            }
            hull(){
                translate([-roddistx,0,0])cylinder(d=roddia*3,h=th);
                translate([0,0,0])cylinder(d=roddia*3,h=th);
            }
            translate([0,0,0])
            rotate([0,0,45])
            hull()
            for(a=[0,90,180,270]){
                rotate([0,0,a])
                translate([-16,-16,0])
                  cylinder(d=8,h=plateth, $fn=32);
            }
            hull(){
                translate([plate1w/2,bagdia/2+10])
                    cylinder(d=roddia*3,h=th);
                translate([plate1w,0,0])cylinder(d=roddia*3,h=th);
            }
            hull(){
                translate([0,0,0])cylinder(d=roddia*3,h=th);
                translate([plate1w,0,0])cylinder(d=roddia*3,h=th);
            }
            hull(){
                translate([0,plate1l1,0])cylinder(d=roddia*3,h=th);
                translate([plate1w,plate1l2,0])cylinder(d=roddia*3,h=th);
            }
            hull(){
                translate([plate1w,0,0])cylinder(d=roddia*3,h=th);
                translate([plate1w,plate1l2,0])cylinder(d=roddia*3,h=th);
            }
        }
        translate([-roddistx,0,-1])cylinder(d=roddia,h=th+2);
        translate([0,0,-1])cylinder(d=5,h=th+2);
            translate([0,0,0])
            rotate([0,0,45])
            for(a=[0,90,180,270]){
                rotate([0,0,a])
                translate([-16,-16,-1])
                  cylinder(d=3,h=th+2, $fn=32);
                
            }
            translate([0,0,-1])
                cylinder(d=24,h=th+2);
            translate([plate1w,0,-1])cylinder(d=roddia,h=th+2);
            translate([plate1w,0,-1])cylinder(d=roddia,h=th+2);
            translate([plate1w,plate1l2,-1])cylinder(d=roddia,h=th+2);
            
  translate([plate1w/2,bagdia/2+10,-1])cylinder(d=od,h=th+2,$fn=128);
            
    }
}

module plate1(){
th=plateth;
    difference(){
        union(){
            hull(){
                translate([-roddistx,0,0])cylinder(d=roddia*3,h=th);
                translate([0,0,0])cylinder(d=roddia*3,h=th);
            }
            translate([0,0,0])
            rotate([0,0,45])
            hull()
            for(a=[0,90,180,270]){
                rotate([0,0,a])
                translate([-16,-16,0])
                  cylinder(d=8,h=plateth, $fn=32);
            }
            hull(){
                translate([0,0,0])cylinder(d=roddia*3,h=th);
                translate([plate1w,0,0])cylinder(d=roddia*3,h=th);
            }
        }
        translate([-roddistx,0,-1])cylinder(d=roddia,h=th+2);
        translate([0,0,-1])cylinder(d=5,h=th+2);
            translate([0,0,0])
            rotate([0,0,45])
            for(a=[0,90,180,270]){
                rotate([0,0,a])
                translate([-16,-16,-1])
                  cylinder(d=3,h=th+2, $fn=32);
                
            }
            translate([0,0,-1])
                cylinder(d=24,h=th+2);
            translate([plate1w,0,-1])cylinder(d=roddia,h=th+2);
    }
}

module motor(){
    difference(){
    union(){
    color("lightgrey")
    hull()
        for(a=[0,90,180,270]){
            rotate([0,0,a])
            translate([-16,-16,0])
              cylinder(d=5,h=moth, $fn=32);
            }
    color("black")
    hull()
        for(a=[0,90,180,270]){
            rotate([0,0,a])
            translate([-16,-16,5])
              cylinder(d=5.1,h=moth-10, $fn=32);
            }
    }   
    
    for(a=[0,90,180,270]){
        rotate([0,0,a])
        translate([-16,-16,-10])
          cylinder(d=3,h=moth+20, $fn=32);
        }
    }
    color("grey")
    translate([0,0,-1])
    cylinder(d=5,h=moth+20,$fn=35);
    }
