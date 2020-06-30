include <../metal/M8.scad>
include <../metal/parts.scad>

//axisYEndMotor(ry=90);

module axisYEndMotor(px=0, py=0, pz=0, rx=0, ry=0, rz=0, showMetal=false){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){        
        difference(){
            yCube(50,20,56, 20);
            yCube(40,16,8, 40, 0, 7);
            yCube(40,16,8, 40, 0, -9);
            yCyl2(4.3,30,px=20, pz=31, ry=90);
            yCyl2(4.3,30,px=-20, pz=31, ry=90);
            yCyl(12, 22, px=20,py=10,pz=10, rx=90);
            yCyl(2, 22, px=41.9,py=10,pz=10, rx=90);
            yCyl(2, 22, px=-1.9,py=10,pz=10, rx=90);
        }        
        LM8UUHolder(px=-16,py=0, pz=-16.5, rz=180);
        LM8UUHolder(px=-16,py=0, pz=16.5, rz=180);
        if (showMetal){
            NEMA17(px=20, py=29, rx=90, ry=45);
            GT2_16(px=20,py=-7,rx=-90);
        }//if        
    }//translate
}//module assemblyAxisY 