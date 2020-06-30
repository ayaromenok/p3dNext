include <metal/M8.scad>
include <metal/parts.scad>

include <assemblyFrame.scad>

assemblyFrame();
assemblyAxisZ();

module assemblyAxisZ(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){        
        //assemblySmoothRodAxisZ();
        assemblyDriveAxisZ();
    }//translate
}//module assemblyAxisZ 

module assemblyDriveAxisZ(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        NEMA17(195,0,358,0,180,0);
        m8Rod(300, 195, 0, 163,clr="blue");
        NEMA17(-195,0,358,0,180,0);
        m8Rod(300, -195,0, 163,clr="blue");
    }//translate
}//module assemblyAxisZ 
