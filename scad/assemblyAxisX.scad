include <metal/M8.scad>
include <assemblyFrame.scad>

//assemblyFrame();
assemblyAxisX();

module assemblyAxisX(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){        
        //assemblySmoothRodAxisX();
        //assemblyDriveAxisX();
    }//translate
}//module assemblyAxisY 

