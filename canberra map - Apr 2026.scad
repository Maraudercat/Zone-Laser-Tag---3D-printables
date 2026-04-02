

module maze (){
union(){
translate([-20,-70,0])linear_extrude (height = 13, center = false)import("C:/Users/Phoen/Documents/Laser tag/Canberra maze map/canberra map - Apr 2026.svg.svg");


//base
cube([95,210,1.5]);

//ramp
translate([5,69.5,0])rotate([90,0,0])linear_extrude(height = 10.5)polygon(points = [[0,0], [25,0], [0,6]]);

translate([90,10,1])rotate([0,0,90])linear_extrude(height = 1.5)text(text = "ZONE 3 CANBERRA 2026", size = 10);
}
}

module grill_cutout(){ 
  scale([0.75, 0.75, 0.75])
    cube([10.4,1.5,7.9], center = false); 
}


module maze_final(){
difference(){
maze();

//maze entrance
translate([0,59,5.8])cube([7,10.2,10], center = false);

//half-walls
//red base half height
translate([55,93.55,7])cube([5.5,8,10], center = false);

//blue base half height
translate([28,180,7])cube([6.8,8,10], center = false);


//windows/grills

//orange base
translate([61.5,135,6.6])
rotate([0,0,-90])
scale([0.6,3,0.5])
grill_cutout();
   

//blue side of orange base
  translate([68,157.6,6.6])
scale([0.58,3,0.5])
grill_cutout(); 

//crows nest
translate([28.5,127,6.6])
scale([0.6,3,0.5])
grill_cutout(); 

//sniper spots near blue base
translate([5.6,161.5,10.1])
rotate([0,90,0])
scale([1.1,3,0.6])
grill_cutout(); 

translate([5.6,140.3,10.1])
rotate([0,90,0])
scale([1.1,3,0.6])
grill_cutout(); 

//ramp/yellow grills
translate([19,83,6.6])
scale([0.3,3,0.5])
grill_cutout(); 

translate([19,97,9])
scale([0.3,3,0.5])
grill_cutout(); 

//old green reload grill
translate([61,22,10.1])
rotate([0,90,-90])
scale([1.1,3,0.6])
grill_cutout(); 
  


}
}





 
scale([1,1,1])maze_final();