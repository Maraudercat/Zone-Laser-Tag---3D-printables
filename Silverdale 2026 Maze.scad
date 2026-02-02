bh=2;
mh=bh+20;
$fn=50;

module mazebase(){
union(){
translate([0,10,0])linear_extrude(height=mh){import("C:/Users/Phoen/Documents/Laser tag/2026/2026 maze map.svg");
}
minkowski(){
cube([270,215,bh]);
cylinder(h= bh, r = 1);
//translate([149,48,0])rotate([90,0,-90])linear_extrude(height = 30){
//polygon([[0,0],[18,0],[18,10]]);}
}
translate([30,10,1.5*bh])linear_extrude(height = bh){
text("SILVERDALE ZLTAC 2026", size = 10);}
}
}

///*

difference(){

mazebase();
//ramp
translate([119.2,25,2*bh])cube([28.5,10,22]);

//windows attached to outer walls
translate([13,140,0.67*mh])cube([10,10,4]);
translate([243.5,140,0.67*mh])cube([10,10,4]);

//hh in bases
translate([50,72.8,0.67*mh])cube([12,6.6,22]);
translate([113.1,167,0.67*mh])cube([6.6,12,22]);
translate([210,72.7,0.67*mh])cube([12,6.75,22]);

//angled cut-away where base units are
translate([51,92,0.75*mh])rotate([0,0,-28])cube([12,10,22]);
translate([133,178.5,0.75*mh])rotate([0,0,-118])cube([10,8,22]);
translate([209.5,87.5,0.75*mh])rotate([0,0,28])cube([10,8,22]);


//windows near middle of the maze
translate([93,101,0.67*mh])cube([12,8,4]);
translate([163,101,0.67*mh])cube([12,8,4]);

//hh below green
//translate([115,130.4,13])cube([12,10.8,22]);
translate([115,130.5,0.67*mh])difference(){
cube([12,10.7,22]);
translate([0,0,10.7])rotate([90,90,90])linear_extrude(height = .67*mh){polygon([[0,0],[10.6,0],[10.6,3]]);}}

}


//*/



