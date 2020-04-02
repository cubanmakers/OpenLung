// ventilatoe basic
$fn=120;

d=5;
ra=85;
ri=60;
rct=2.5;
offset=150;
f=5; //heights factor base
include </home/knief/openscad/lib/parametric_involute_gear.scad>;


module nema17(h=47) {
    cube([42,42,h],center=true);
    translate([0,0,(h/2)+2]) cylinder(11,12,12,center=true);
    translate([0,0,h/2]) cylinder(22+h/2,3,3,center=true);
    rotate([0,0,0])translate([31.5/2,31.5/2,h/2]) cylinder(22+h/2,2,2,center=true);
    rotate([0,0,90]) translate([31.5/2,31.5/2,h/2]) cylinder(22+h/2,2,2,center=true);
    rotate([0,0,180]) translate([31.5/2,31.5/2,h/2]) cylinder(22+h/2,2,2,center=true);
    rotate([0,0,270]) translate([31.5/2,31.5/2,h/2]) cylinder(22+h/2,2,2,center=true);
}
//moving part
*color ("purple")difference(){ 
hull() {
    translate([ra,ra+f*d,0])cylinder(d,ra,ra);
    cube([2*ra,f*d,d]);
}
    translate([ra,ra+f*d,0])cylinder(d,ri,ri);
    translate([ra,ra+f*d,0]) rotate([0,0,-45])translate([ra-(ra-ri)/2-3,0,0])cylinder(d,rct,2.5*rct);
    translate([ra,ra+f*d,0]) rotate([0,0,45])translate([ra-(ra-ri)/2-3,0,0])cylinder(d,rct,2.5*rct);
    translate([ra,ra+f*d,0]) rotate([0,0,135])translate([ra-(ra-ri)/2-3,0,0])cylinder(d,rct,2.5*rct);
    translate([ra,ra+f*d,0]) rotate([0,0,-135])translate([ra-(ra-ri)/2-3,0,0])cylinder(d,rct,2.5*rct);
translate([d*f,0,0])cube([15,15,d]);    
translate([(2*ra)-(d*f)-3*d,0,0])cube([15,15,d]);
}

// ballgear 
*color("green") translate([ra,ra+f*d,offset])
union(){
difference() {
gear( number_of_teeth=120,
	circular_pitch=250,
	pressure_angle=20,
	clearance = 0.2,
	gear_thickness = 8,
	rim_thickness = 8,
	rim_width = 5,
	hub_thickness = 14,
	hub_diameter=23,
	bore_diameter=(2*ri),
	circles=0);
    //translate([0,0,3.25]) cylinder(1.5,(ra),(ra));
    *union(){
    translate([ra,ra+f*d,0]) rotate([0,0,-135])translate([ra-(ra-ri)/2-3,0,0])cylinder(8,rct,3*rct);
    translate([ra,ra+f*d,0]) rotate([0,0,135])translate([ra-(ra-ri)/2-3,0,0])cylinder(8,rct,3*rct);
    translate([ra,ra+f*d,0]) rotate([0,0,45])translate([ra-(ra-ri)/2-3,0,0])cylinder(8,rct,3*rct);
    translate([ra,ra+f*d,0]) rotate([0,0,-45])translate([ra-(ra-ri)/2-3,0,0])cylinder(8,rct,3*rct);
    
}}
 
}


// bearings just for alignment purposes present
*union(){
translate([ra,ra+f*d,offset]) rotate([0,0,-90])translate([ri-11.25,0,0])difference(){
cylinder(6,11,11);
cylinder(6,4,4);
}
translate([ra,ra+f*d,offset]) rotate([0,0,-172])translate([ri-11.25,0,0])
difference(){
cylinder(6,11,11);
cylinder(6,4,4);
}
}
//drive Plate
*color ("purple")translate([0,0,offset+d+7])difference(){ 
hull() {
    translate([ri/2,ri+(f*d),0])cylinder(d,35,35);
    cube([2*ra,f*d,d]);
}
translate([d*f,0,0])cube([15,15,d]);    
translate([(2*ra)-(d*f)-3*d,0,0])cube([15,15,d]);
//translate([(f-1)*d,(f*d)+15,34])
translate([ri-(47-(f-2)*d),(f*d)+10.5,34])rotate([180,0,0])nema17();
translate([ra,ra+f*d,0])cylinder(d,40,40);
translate([ra,ra+f*d,0]) rotate([0,0,-172])translate([ri-11.25,0,0])
cylinder(d,4,4);
translate([ra,ra+f*d,0]) rotate([0,0,-90])translate([ri-11.25,0,0])
cylinder(d,4,4);
}


// pinion gear
*color("green")translate([ri-(47-(f-2)*d),(f*d)+10.5,offset]){ 
union(){
rotate([0,0,2])gear( number_of_teeth=15,
	circular_pitch=235,
	pressure_angle=20,
	clearance = 0.2,
	gear_thickness = 8,
	rim_thickness = 8,
	rim_width = 5,
	hub_thickness = 10,
	hub_diameter=9,
	bore_diameter=5,
	circles=0); //Belt
translate([-3,+2,0])cube([6,1.8,2*d]);
}
difference(){
union(){    
translate([0,0,-2])cylinder(2,14,14);
translate([0,0,8])cylinder(2,14,14);
}
translate([0,0,-2])cylinder(14,2.5,2.5);
}
}

*union(){
translate([ra,ra+f*d,0]) rotate([0,0,-45])translate([ra-(ra-ri)/2-3,0,0])cylinder(160,rct,rct);
    translate([ra,ra+f*d,0]) rotate([0,0,45])translate([ra-(ra-ri)/2-3,0,0])cylinder(160,rct,rct);
    translate([ra,ra+f*d,0]) rotate([0,0,135])translate([ra-(ra-ri)/2-3,0,0])cylinder(160,rct,rct);
    translate([ra,ra+f*d,0]) rotate([0,0,-135])translate([ra-(ra-ri)/2-3,0,0])cylinder(160,rct,rct);
//translate([d*f,0,-5])cube([15,15,172]);    
//translate([(2*ra)-(d*f)-3*d,0,-5])cube([15,15,172]);
}

//foot Drive side 2* neended
difference(){
union(){
cube([30,20,17]);
translate([-5.25,2.75,0])cube([5.25,14.5,17]);
translate([-10.25,0,0])cube([5,20,17]);
}
translate([-11,10,9.75])rotate([0,90,0])cylinder(42,4.25,4.25);
translate([7,10,5])cylinder(15,1.25,1.25);
}

//foot moving side 2* neended
*translate([-100,0,2.5]) difference(){
union(){
cube([30,20,14.5]);
translate([-5.25,2.75,0])cube([5.25,14.5,14.5]);
translate([-10.25,0,0])cube([5,20,14.5]);
}
translate([-11,10,7.25])rotate([0,90,0])cylinder(42,4.5,4.5);

}
*translate([d*f,0,0]) rotate([0,-90,-90])difference(){ //crossbar
//ra-2*(d*f)    
translate([-41,0,0])cube([20,(2*ra)-(2*d*d),17]);
translate([-41,10,9.75])rotate([0,90,0])cylinder(21,4,4);
translate([-41,(2*ra)-(2*d*d)-10,9.75])rotate([0,90,0])cylinder(21,4,4);
translate([-31,10,5])cylinder(15,1.25,1.25);
translate([-31,(2*ra)-(2*d*d)-10,5])cylinder(15,1.25,1.25);
translate([-44,((2*ra)-(2*d*d))/2,62.75])rotate([0,90,0])cylinder(60,ri,ri);
}