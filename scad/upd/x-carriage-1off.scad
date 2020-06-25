include <../../lib/lib.scad>
//translate([-7,-7.2,-8])
import ("../../stl/mendel/x-carriage-1off.stl");
x_carriage_1off();

module x_carriage_1off(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
            }//translate
}//module
