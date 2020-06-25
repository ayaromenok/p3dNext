include <../../lib/lib.scad>
//translate([-7,-7.2,-8])
import ("../../stl/mendel/z-motor-mount-2off.stl");
z_motor_mount_2off();

module z_motor_mount_2off(px=0, py=0, pz=0, rx=0, ry=0, rz=0, zAdd=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
            }//translate
}//module
