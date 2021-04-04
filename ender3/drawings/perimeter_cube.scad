length=20 ;
width=20 ;
height1=20; 

hollowThickness=2 ; 

module outerCube(){
    linear_extrude(height=height1) square([length,width],center=true) ; 
}


module innerCube(){
    translate([0,0,hollowThickness]) linear_extrude(height=height1) square([length-hollowThickness,width-hollowThickness],center=true) ; 
}


difference(){
    color("yellow",0.1) outerCube() ; 
    color("red") innerCube() ; 
}