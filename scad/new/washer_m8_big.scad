include <../../lib/lib.scad>
washer_m8_big();
//washer_m8_big(px=30, sideHole=true);

module washer_m8_big(px=0, py=0, pz=0, rx=0, ry=0, rz=0, sideHole=false){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){     
        difference(){    
            union(){
                yCyl(15);
                yCyl(6,1.4,pz=0.2);
            }//union
            yCyl(4.4,3);
            if(sideHole){
                yCube(20,8,4, px=10);
            }//sideHole    
        }//diff
        
    }//translate
}//module