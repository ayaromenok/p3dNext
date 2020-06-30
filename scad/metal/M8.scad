include <../../lib/lib.scad>

//m8();

module m8(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        m8Rod();
        m8SmoothRod(300,50);
        m8Nut(100);
        m8LockWasher(150);
        m8Washer(200);
        m8NutWasher(250);
        m8BallBearing(300);
    }//transform
}//module

module m8Rod(length=300,px=0, py=0, pz=0, rx=0, ry=0, rz=0, clr="grey"){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    color(clr){
        yCyl(4,length);
    }//transform
}//module

module m8Nut(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    color("lightgreen")
    rotate([rx,ry,rz]){
        difference(){
            cylinder(6.5, 7.2, 7.2, $fn=6);
            cylinder(8, 4, 4);
        }
    }//transform
}//module

module m8LockWasher(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        color("lightgreen")
        difference(){
            cylinder(1.5, 6, 6, $fn=8);
            cylinder(8, 4, 4);
        }
    }//transform
}//module

module m8Washer(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        color("lightgreen")
        difference(){
            cylinder(1, 9, 9, $fn=16);
            cylinder(8, 4, 4);
        }
    }//transform
}//module

module m8NutWasher(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            union(){
                color("lightgreen")
                translate([0,0,2.5])
                    cylinder(6.5, 7.2, 7.2, $fn=6);
                color("lightgreen")
                translate([0,0,1])
                    cylinder(1.5, 6, 6, $fn=8);
                color("lightgreen")
                cylinder(1, 9, 9, $fn=16);
            }
            cylinder(10, 4, 4);
        }
    }//transform
}//module
module m8SmoothRod(length=300,px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        yCyl(4, length, clr="black");
    }//transform
}//module

module m8BallBearing(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){        
        yCyl(r=14, szz=1, pz=4.5,clr="darkgreen");
        yCyl(r=11, szz=8, clr="darkgreen");
        yCyl(r=14, szz=1, pz=-4.5,clr="darkgreen");
    }//transform
}//module

/*
module mendelOrg(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
    }//transform
}//module
*/