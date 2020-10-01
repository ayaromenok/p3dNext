include <../metal/M8.scad>
include <../metal/parts.scad>

// !todo add nut connection!
//axisYEndMotor(showMetal=true);
//axisYEndMotor();
//axisYEndMotor(ry=90);

module axisYEndMotor(px=0, py=0, pz=0, rx=0, ry=0, rz=0, showMetal=false){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){        
        difference(){
            union(){
                yCube(60,28,56, px=25, py=0);
                //endstop holder            
                yCube(6,14,5,   52,-15,25);    
                yCube(6,14,5,   52,-15,6);    
            }//union
            yCube(40,16,8, 40, 4, 7);
            yCube(40,16,8, 40, 4, -8);
            //m8 shaft
            yCyl(4.6,66, px=14);
            //m8 shaft nut
            yCyl(5.6,20, px=14, pz=-18.5);
            yCyl(1.2,10, px=14+7.5, pz=-23.5);
            yCyl(1.2,10, px=14-7.5, pz=-23.5);
            yCyl(1.2,10, px=14, py=7.5, pz=-23.5);
            yCyl(1.2,10, px=14, py=-7.5, pz=-23.5);
            //nema17 holes
            yCyl(12, 32, px=30,py=15,pz=16, rx=90);
            yCyl(2, 32, px=51.9,py=15,pz=16, rx=90);
            yCyl(2, 32, px=8.1,py=15,pz=16, rx=90);
            //m8 smooth rod
            yCyl2(4.2,60,px=20, py=8,pz=41, ry=90);
            yCyl2(4.3,60,px=-20, py=8,pz=41, ry=90);    
                    //endstop holder holes
            yCyl2(0.8,20,    -6,52,13,  90,90,0);
            yCyl2(0.8,20,    -25,52,13,  90,90,0);
        }   
        //stoper for endstop/top
        yPoly([[0,0],[10,0],[46,40],[0,40]], 5,    -5,-54,23);        
        translate([00,-14,23])
        rotate([90,0,0])
            cylinder(40,5,00,$fn=4);
        
        //stoper for endstop/bottom
        yPoly([[0,0],[10,0],[60,40],[0,40]], 5,    -5,-54,-28);        
        translate([00,-14,-23])
        rotate([90,0,0])
            cylinder(40,5,00,$fn=4);

        
        LM8UUHolder(px=-16,py=0, pz=-16.5, rz=180);
        LM8UUHolder(px=-16,py=0, pz=16.5, rz=180);
        if (showMetal){
            //shaft M8
            //yCyl(4.6,100, px=14);
            m8ShaftNut(14,0,-24.5, ry=180);
            //shooth rod M8
            //yCyl(4.6,100, px=-16);
            NEMA17(px=30, py=33, rx=90, ry=45);
            GT2_16(px=30,py=-2,rx=-90);
            //endstop
            color("yellow")
            endStop(47,-22,9,  90,-90,180);    
        }//if        
    }//translate
}//module assemblyAxisY 