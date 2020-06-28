include <../../lib/lib.scad>

//hotBed150x150();

module hotBed150x150(px=0, py=0, pz=0, rx=0, ry=0, rz=0, clr="green"){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    color(clr)
    {
        difference(){
            yCube(159,159,3);
        
            yCyl(1.5,9,73,35);
            yCyl(1.5,9,73,-35);
            yCyl(1.5,9,-73,35);
            yCyl(1.5,9,-73,-35);
        }//dif
        //connector
        yCube(10,24,8,-84.5,0,-2.5);
    }//transform
}//module
