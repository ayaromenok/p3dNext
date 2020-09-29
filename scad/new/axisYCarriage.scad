include <../metal/M8.scad>
include <../metal/parts.scad>
include <../metal/heads.scad>


//axisYCarriage(showMetal=true);
//axisYCarriageDiamond(showMetal=true);
axisYCarriageDiamond(showMetal=false,rx=180);
//axisYCarriage(py=30);
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

module axisYCarriageDiamond(px=0, py=0, pz=0, rx=0, ry=0, rz=0, showMetal=false){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    mirror([1,0,0])
    {   
        difference(){
            union(){
                yCube(90,20,50,     0,0,15);
                yCube(90,51,3,     0,-35,38.5);
                yCube(5,51,23,     42.5,-35,28.5);
                yCube(5,51,23,     -42.5,-35,28.5);
            }
            yCube(30,21,41,     0,0,10);
            //holes for 40mm fan
            yCyl(18,20,     0,-36,35);
            yCyl(1,20,     16,-20,35);
            yCyl(1,20,     16,-52,35);
            yCyl(1,20,     -16,-20,35);
            yCyl(1,20,     -16,-52,35);
            //for filament pipes
            translate([0,-36,25]){        
                rotate([0,0,150])
                    yCyl(10.5,50,px=19,pz=5, ry=30);
                rotate([0,0,30])
                    yCyl(10.5,50,px=19,pz=5, ry=30);
            }    
        }
        
        
        LM8UUHolder(px=0,py=0, pz=20, ry=90);
        LM8UUHolder(px=-32,py=0, pz=-20, ry=90);
        LM8UUHolder(px=32,py=0, pz=-20, ry=90);
        if (showMetal){            
            color("darkgreen"){    
                yCyl2(4,100, px=20, ry=90);
                yCyl2(4,100, px=-20, ry=90);
            }//clr  
        }//if
        if (showMetal){
            translate([0,-36,25]){        
                diamondHeadV6(pz=-37,rz=30);
                translate([0,0,12])
                rotate([180,0,-90])
                color("lightblue")
                    import("../../stl/3rd/diamond.stl");            
                
            }//translate            
            
        }//if showMetall
    }//translate
}//module assemblyAxisY 