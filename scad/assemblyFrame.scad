include <metal/M8.scad>
include <org/mendelOrg.scad>


module assemblyFrame(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        mendelOrg();
        m8();
    }//translate
}//module        