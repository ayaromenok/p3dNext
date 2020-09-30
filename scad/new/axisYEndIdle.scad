include <../metal/M8.scad>
include <../metal/parts.scad>

// !todo add nut connection!
//axisYEndIdle(showMetal=true);
//axisYEndIdle();
axisYEndIdle(ry=-90);

module axisYEndIdle(px=0, py=0, pz=0, rx=0, ry=0, rz=0, showMetal=false){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    mirror([1,0,0])
    {        
        difference(){
            union(){
                yCube(60,28,56, px=25, py=0);
                //endstop holder
                yCyl2(3,10,    -2,-8,10,    -90,0,0);
                yCyl2(3,10,    -2,11,10,    -90,0,0);
            }
            yCube(40,11,22, 40, 7, 0);            
            
            //m8 shaft
            yCyl(4.6,66, px=14);
            
            //m8 shaft nut
            yCyl(5.6,20, px=14, pz=-18.5);
            yCyl(1.2,10, px=14+7.5, pz=-23.5);
            yCyl(1.2,10, px=14-7.5, pz=-23.5);
            yCyl(1.2,10, px=14, py=7.5, pz=-23.5);
            yCyl(1.2,10, px=14, py=-7.5, pz=-23.5);
            
            //roller holes
            yCyl(12, 32, px=30,py=34,pz=16, rx=90);            
            yCyl(2.3, 32, px=30,py=20,pz=16, rx=90);
            yCyl(12, 32, px=30,py=-2,pz=16, rx=90);
            
            //m8 smooth rod
            yCyl2(4.2,60,px=20, py=8,pz=41, ry=90);
            yCyl2(4.3,60,px=-20, py=8,pz=41, ry=90);    
            
        //endstop holder holes
            yCyl2(0.8,20,    -2,-8,10,    -90,0,0);
            yCyl2(0.8,20,    -2,11,10,    -90,0,0);            
        } 
        difference(){
            //yCube(30,1.5,7, px=27, py=13.25);
            yPoly([[5,0],[3,3],[-3,3],[-5,0]], 30,    15,12.5,0,  0,90,0);
            yCyl(2.3, 32, px=30,py=20,pz=16, rx=90);
        }//dif
        
        
        LM8UUHolder(px=-16,py=0, pz=-16.5, rz=180);
        LM8UUHolder(px=-16,py=0, pz=16.5, rz=180);
        if (showMetal){
            //shaft M8
            //yCyl(4.6,100, px=14);
            m8ShaftNut(14,0,-24.5, ry=180);
            //shooth rod M8
            //yCyl(4.6,100, px=-16);    
            color("darkgreen"){    
                yCyl(2,20,px=30, py=15,pz=10,rx=90);
                yCyl(5,2,px=30, py=-5,pz=0,rx=90);
                yCyl(6,9,px=30, py=12,pz=4.5,rx=90);
            }//clr  
            color("yellow"){    
                mirror([1,0,0])
                endStop(-3,15,-8,  -90,-90,0);                
            }
        }//if        
    }//translate
}//module assemblyAxisY 