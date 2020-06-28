include <../../lib/lib.scad>


//hotBed150x150();
//hotBedHolder150x150();
//LM8UU();

module LM8UU(px=0, py=0, pz=0, rx=0, ry=0, rz=0, clr="darkgreen"){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    color(clr) {   
        difference(){
            yCyl(7.5,24);
            yCyl(4,25);
            difference(){
                yCyl(8,1.1,0,0,8.2);
                yCyl(7,2,0,0,8.2);
            }//diff
            difference(){
                yCyl(8,1.1,0,0,-8.2);
                yCyl(7,2,0,0,-8.2);
            }//diff
        }//diff
        
        
    }//transform
}//module
