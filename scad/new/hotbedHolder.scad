include <../../lib/lib.scad>
include <../metal/hotbed.scad>
include <../metal/parts.scad>

//hotBed150x150();
//hotBedHolder150x150();

module hotBedHolder150x150(px=0, py=0, pz=0, rx=0, ry=0, rz=0, clr="lightgreen", showMetal=false){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]) {   
        color(clr) 
        difference(){
            yCube(160,160,4,0,0,-10);
            yCyl(1.5,9,73,35,-10);
            yCyl(3,5,73,35,-12, fn=2);
            yCyl(1.5,9,73,-35,-10);
            yCyl(3,5,73,-35,-12, fn=2);
            yCyl(1.5,9,-73,35,-10);
            yCyl(3,5,-73,35,-12, fn=2);
            yCyl(1.5,9,-73,-35,-10);
            yCyl(3,5,-73,-35,-12, fn=2);                       
        }//diff
        
        LM8UUHolder(60,60,-22,0,90,0);         
        LM8UUHolder(-60,60,-22,0,90,0);        
        LM8UUHolder(0,-60,-22,0,90,0); 
        if (showMetal){
            LM8UU(60,60,-22,0,90,0); 
            LM8UU(-60,60,-22,0,90,0);
            LM8UU(0,-60,-22,0,90,0); 
            }//if
        color(clr)
        difference(){
            yCube(5,20,12,60,0,-15);
            yCube(6,10,2,60,0,-18);
        }
        color(clr)
        difference(){
            yCube(5,20,12,-60,0,-15);
            yCube(6,10,2,-60,0,-18);
        }
    }//transform
}//module
