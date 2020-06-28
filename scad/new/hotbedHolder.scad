include <../../lib/lib.scad>
include <../metal/hotbed.scad>
include <../metal/parts.scad>

//hotBed150x150();
//hotBedHolder150x150();

module hotBedHolder150x150(px=0, py=0, pz=0, rx=0, ry=0, rz=0, clr="lightgreen"){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]) {   
        color(clr) 
        difference(){
            yCube(160,160,4,0,0,-10);
            yCyl(1.5,9,73,35,-10);
            yCyl(1.5,9,73,-35,-10);
            yCyl(1.5,9,-73,35,-10);
            yCyl(1.5,9,-73,-35,-10);                       
        }//diff
        LM8UU(60,60,-20,0,90,0); 
        LM8UU(-60,60,-20,0,90,0); 
        LM8UU(0,-60,-20,0,90,0); 
    }//transform
}//module
