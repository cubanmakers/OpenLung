stuetz=0;       //supportmaterial 
cone=0;         //Form cone
brim=0;         //brim for print bed adhesion

fn=32;          //default for $fn

idb=15.25;      //some inner diameter
odb=22.43-.3;   

th=3;           //wall thickness
spiel=.7;       //margin (outlets will be that bigger)


// some diameters for my special parts
t_od=(12.01+12.47)/2;
t_id=8;
d_od=27.6; //od_deckel
d_h=7.84;

//example

adapter(
        35,            //diameter bigger inlet
        15,            //diameter smaller inlet
        30,            //length bigger inlet side
        20,            //length smaller inlet side
        cone=1         //outer conus form
        );
//adapter are closed by a 0.5 mm sheet for printability;
//bore them out in smaller diameter


//translate([0,34,0])adapter(odb,t_od,d_h,15,cone=1); //deckel();
//sensor1(cone=1,stuetz=1,brim=1);
//translate([0,34,0])adapter(odb,t_od,15,15,cone=1,brim=0);   //beutel, Schlauch


module sensor1(){    //special adapter with cable outlet
  difference(){
   adapter(d_od,t_od,d_h,15+8,stuetz=stuetz,cone=cone,brim=brim); 
   translate([0,0,d_h])
      rotate([0,60,0])
      translate([0,0,-4])
      cylinder(d=3,h=200,$fn=fn);
  }
}

module adapter(od1, od2,l,l2){
 
difference(){
      union(){
       if(brim>0){
        cylinder(d=od1+spiel+4*th,h=.5,$fn=fn*2); }
        
        cylinder(d=od1+spiel+2*th,h=l+th,$fn=fn*2);
         if(cone>0){
            translate([0,0,l+th-.1])
                cylinder(d1=od1+spiel+2*th,d2=od2+spiel+2*th,h=od1-od2,$fn=fn*2);     
             
             } 
        translate([0,0,l])
        cylinder(d=od2+spiel+2*th,h=l2,$fn=fn*2); 
          
      }
        translate([0,0,-.1])
        cylinder(d1=od1+spiel+.5,d2=od1+spiel,h=l+.01,$fn=fn*2); 
        translate([0,0,l+.5])
        cylinder(d1=od2+spiel,d2=od2+spiel,h=th,$fn=fn*2); 
        translate([0,0,l+.5])
        cylinder(d1=od2+spiel,d2=od2+spiel+.5,h=l2,$fn=fn*2); 
    translate([0,0,l+l2+.001])
       cylinder(d=od1+od2,h=l+l2);
    }   
    
   if(stuetz>0){
     difference(){
        cylinder(d1=od2+spiel+2,d2=od2+spiel+.5,h=l+.002,$fn=fn*2); 
        translate([0,0,+.5])
        cylinder(d1=od2+spiel,d2=od2+spiel+.5,h=l+.002,$fn=fn*2); 
    }   
       
   }
    
    
}

/////////////////////outdated modules
module deckel(){
d2=27.10;
d1=27.6;
dh=7.84;
difference(){
      union(){
        cylinder(d=d1+spiel+4*th,h=.5,$fn=fn*2); 
        cylinder(d1=d1+spiel+2*th,d2=d2+spiel+2*th,h=dh+th,$fn=fn*2); 
        translate([0,0,dh+.5])
        tube(t_od,20);
      }
        translate([0,0,-.1])
        cylinder(d1=d1+spiel,d2=d2+spiel,h=dh,$fn=fn*2); 
        translate([0,0,dh+.5])
        cylinder(d=t_od,h=dh,$fn=fn*2); 
      
    }    
    
}

module bag1(){
l1=25;    
    
    difference(){
       union(){
        cylinder(d=odb+2*th,h=l1,$fn=fn*2); 
       }       
        translate([0,0,-.1])
        cylinder(d1=odb+spiel+1,d2=odb,h=10,$fn=fn*2); 
        cylinder(d1=odb+spiel+1,d2=odb,h=l1+.2,$fn=fn*2); 
    }
}

module tube(od,l ){
l1=25;    
    
    difference(){
       union(){
        cylinder(d=od+4*th,h=.5,$fn=fn*2); 
        cylinder(d=od+2*th,h=l,$fn=fn*2); 
       }       
        translate([0,0,-.1])
        cylinder(d1=od+spiel+1,d2=od,h=l,$fn=fn*2); 
        cylinder(d1=od+spiel+1,d2=od,h=l+.2,$fn=fn*2); 
    }
}