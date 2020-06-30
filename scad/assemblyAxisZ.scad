include <metal/M8.scad>
include <metal/parts.scad>
include <new/axisZbottomHolder.scad>
include <assemblyFrame.scad>

//assemblyFrame();
//assemblyAxisZ();

module assemblyAxisZ(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){        
        //assemblySmoothRodAxisZ();
        assemblyDriveAxisZ();
        
        axisZbottomHolder(-210,0,31);
        m8SpringRodHolder(-180,0,29,ry=180);
        
        mirror([1,0,0])
        axisZbottomHolder(-210,0,31);
        m8SpringRodHolder(210,0,29,ry=180);
    }//translate
}//module assemblyAxisZ 

module assemblyDriveAxisZ(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        NEMA17(195,0,358,0,180,0);
        m8Rod(300, 195, 0, 163, clr="blue");
        yCyl(9,25,195,0,315,clr="blue");
        
        NEMA17(-195,0,358,0,180,0);
        m8Rod(300, -195,0, 163, clr="blue");
        yCyl(9,25,-195,0,315,clr="blue");
    }//translate
}//module assemblyAxisZ 



