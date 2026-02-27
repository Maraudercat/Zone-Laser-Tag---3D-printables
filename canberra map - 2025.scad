

module maze (){
union(){
translate([-20,-70,0])linear_extrude (height = 13, center = false)import("C:/Users/Phoen/Documents/Laser tag/canberra map - 2025.svg");

//base
cube([95,210,1.5]);

//ramp
translate([5,71.5,0])rotate([90,0,0])linear_extrude(height = 8.5)polygon(points = [[0,0], [23,0], [0,6]]);

translate([90,10,1])rotate([0,0,90])linear_extrude(height = 1.5)text(text = "ZONE 3 CANBERRA 2025", size = 10);
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
translate([0,63.6,5.8])cube([7,7.5,10], center = false);

//half-walls
//red base six/seven half height
translate([39.1,97,6])cube([5.5,5,10], center = false);


//windows/grills

//orange base
translate([55.5,138,6.6])
rotate([0,0,-90])
scale([0.9,3,0.5])
grill_cutout();   

//blue side of orange base
  translate([68,157.6,6.6])
scale([0.58,3,0.5])
grill_cutout(); 

//crows nest
translate([25,127.3,6.6])
scale([0.6,3,0.5])
grill_cutout(); 

//sniper spots near blue base
translate([5.6,158.5,10.1])
rotate([0,90,0])
scale([1.1,3,0.6])
grill_cutout(); 

translate([5.6,142.3,10.1])
rotate([0,90,0])
scale([1.1,3,0.6])
grill_cutout(); 

//ramp/yellow grills

//old green reload grill
translate([61,20,10.1])
rotate([0,90,-90])
scale([1.1,3,0.6])
grill_cutout(); 
  


}
}




 
scale([1,1,1])maze_final();