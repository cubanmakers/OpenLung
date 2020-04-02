$fn=120;

d=5;
ra=85;
ri=60;
rct=2.5;
offset=150;
difference(){

translate([0,0,-offset])import("/home/knief/Desktop/ballgear.stl");
f=5; //heights factor base
union(){
translate([ra,ra+f*d,0]) rotate([0,0,-135])translate([ra-(ra-ri)/2-3,0,0])cylinder(8,rct,3*rct);
    translate([ra,ra+f*d,0]) rotate([0,0,135])translate([ra-(ra-ri)/2-3,0,0])cylinder(8,rct,3*rct);
    translate([ra,ra+f*d,0]) rotate([0,0,45])translate([ra-(ra-ri)/2-3,0,0])cylinder(8,rct,3*rct);
    translate([ra,ra+f*d,0]) rotate([0,0,-45])translate([ra-(ra-ri)/2-3,0,0])cylinder(8,rct,3*rct);

//translate([d*f,0,-5])cube([15,15,172]);    
//translate([(2*ra)-(d*f)-3*d,0,-5])cube([15,15,172]);
}
}


