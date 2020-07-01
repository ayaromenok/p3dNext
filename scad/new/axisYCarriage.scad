include <../metal/M8.scad>
include <../metal/parts.scad>


//axisYCarriage(showMetal=true);
//axisYCarriage();
//axisYCarriage(ry=-90);

module axisYCarriage(px=0, py=0, pz=0, rx=0, ry=0, rz=0, showMetal=false){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    mirror([1,0,0])
    {        
        difference(){
            yCube(36,20,41, 0,0,-9);
            yCube(8,8,4, -16.5,0,6);
            yCube(3,8,10, -14,0,10);
            yCube(8,8,4, 16.5,0,6);
            yCube(3,8,10, 14,0,10);
            yCube(40,10,4, 0,0,-7);            
            yCube(40,7,7, 0,0,-5, 45);
            yCyl(6,40,px=-20,ry=90);
            //connector
            yCyl2(1.8,30,px=6, py=8,rx=90);
            yCyl2(1.8,30,px=-6, py=8,rx=90);
        }
        
        //bottom
        difference(){
            yCube(87,20,7, 0,0,-33);
            //connector
            yCyl2(1.8,30,px=40, py=-33,rx=90);
            yCyl2(1.8,30,px=6, py=-33,rx=90);
            yCyl2(1.8,30,px=-6, py=-33,rx=90);
            yCyl2(1.8,30,px=-40, py=-33,rx=90);
        }
        
        LM8UUHolder(px=0,py=0, pz=20, ry=-90);
        LM8UUHolder(px=-32,py=0, pz=-20, ry=-90);
        LM8UUHolder(px=32,py=0, pz=-20, ry=-90);
        if (showMetal){            
            color("darkgreen"){    
                yCyl2(4,100, px=20, ry=90);
                yCyl2(4,100, px=-20, ry=90);
            }//clr  
        }//if        
    }//translate
}//module assemblyAxisY 