include <../../lib/lib.scad>
//translate([-7,-7.2,-8])
//import ("../../stl/mendel/bar-clamp-8off.stl");
//bar_clamp_8off(zAdd=20);
//bar_clamp_5off();

module bar_clamp_8off(px=0, py=0, pz=0, rx=0, ry=0, rz=0, zAdd=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            union(){
                yCyl(7,16+zAdd, pz=(zAdd/2));
                yCube(20,14,16, px=10);
            }//union
            yCyl(4.4,22+zAdd*2);
            yCube(22, 5, 22+zAdd*2, px=10);
            yCyl2(4.4, 20, px=10, rx=90);
            yCube(10,22,12, px=22, pz=7, ry=-30);
            yCube(10,22,12, px=22, pz=-7, ry=30);
        }//diff
    }//translate
}//module

module bar_clamp_5off(px=0, py=0, pz=0, rx=0, ry=0, rz=0, zAdd=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        difference(){
            union(){
                yCyl(7,16+zAdd, pz=(zAdd/2));
                yCube(20,14,16, px=10);
            }//union
            yCyl(4.4,22+zAdd*2);
            yCube(22, 5, 22+zAdd*2, px=10);
            yCyl2(2.9, 20, px=10, rx=90);
            yCube(10,22,12, px=22, pz=7, ry=-30);
            yCube(10,22,12, px=22, pz=-7, ry=30);
        }//diff
    }//translate
}//module