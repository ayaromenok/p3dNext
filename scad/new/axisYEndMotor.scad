include <../metal/M8.scad>
include <../metal/parts.scad>

// !todo add nut connection!
axisYEndMotor(showMetal=true);
//axisYEndMotor(ry=90);

module axisYEndMotor(px=0, py=0, pz=0, rx=0, ry=0, rz=0, showMetal=false){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){        
        difference(){
            yCube(60,28,56, px=25, py=0);
            yCube(40,16,8, 40, 4, 7);
            yCube(40,16,8, 40, 4, -9);
            //m8 shaft
            yCyl(4.6,66, px=14);
            //nema17 holes
            yCyl(12, 32, px=30,py=10,pz=16, rx=90);
            yCyl(2, 32, px=51.9,py=10,pz=16, rx=90);
            yCyl(2, 32, px=8.1,py=10,pz=16, rx=90);
            //m8 smooth rod
            yCyl2(4.2,30,px=20, py=8,pz=41, ry=90);
            yCyl2(4.3,30,px=-20, py=8,pz=41, ry=90);    
        }   
        
        LM8UUHolder(px=-16,py=0, pz=-16.5, rz=180);
        LM8UUHolder(px=-16,py=0, pz=16.5, rz=180);
        if (showMetal){
            //shaft M8
            //yCyl(4.6,100, px=14);
            //shooth rod M8
            //yCyl(4.6,100, px=-16);
            NEMA17(px=30, py=33, rx=90, ry=45);
            GT2_16(px=30,py=-2,rx=-90);
        }//if        
    }//translate
}//module assemblyAxisY 