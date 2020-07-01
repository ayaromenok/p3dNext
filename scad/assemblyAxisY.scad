include <metal/M8.scad>
include <metal/parts.scad>
include <assemblyFrame.scad>
include <assemblyAxisZ.scad>
include <new/axisYEndMotor.scad>
include <new/axisYEndIdle.scad>
include <new/axisYCarriage.scad>

assemblyFrame();
assemblyAxisZ();
assemblyAxisY();

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


module assemblyYEndIdle(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){        
        yCube(50,16,50);
        //should be on one level with GT2_16 on one side!
        m8BallBearing(rx=90, py=-17, pz=-5);
        
    }//translate
}//module assemblyAxisY 


module assemblyYCarrige(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){        
        yCube(50,10,50);
    }//translate
}//module assemblyAxisY 

