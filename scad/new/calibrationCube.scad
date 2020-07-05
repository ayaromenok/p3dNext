include <../../lib/lib.scad>
calibrationCube();


module calibrationCube(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){     
        difference(){    
            yCube(20,20,20);
            yCube(18.42,18.42,20,0,0,0.79);
        }//diff        
    }//translate
}//module