include <metal/M8.scad>
include <metal/parts.scad>
include <assemblyFrame.scad>
include <assemblyAxisZ.scad>
include <new/axisYEndMotor.scad>
include <new/axisYEndIdle.scad>
include <new/axisYCarriage.scad>

//assemblyFrame();
//assemblyAxisZ();
//assemblyAxisY();

module assemblyAxisY(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){        
        axisYEndMotor(-209,0,200, showMetal=true);
        axisYEndIdle(209,0,200, showMetal=true);        
        axisYCarriage(0,0,200);        
        m8SmoothRod(400,pz=220, ry=90);
        m8SmoothRod(400,pz=180, ry=90);
        //"level" 
        color("olive"){
            yCube(400,6,2, px=0, py=0, pz=207);
            yCube(400,6,2, px=0, py=0, pz=193);
        }

    }//translate
}//module assemblyAxisY 

