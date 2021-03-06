include <../metal/M8.scad>
include <../metal/parts.scad>
include <../metal/heads.scad>


//axisYCarriage(showMetal=true);
//axisYCarriageDiamond(showMetal=true);
//axisYCarriageDiamond(showMetal=false,rx=180);
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
                yCube(90,21,50,     0,0,15);
                yCube(90,51,3,     0,-35,38.5);
                yPoly(p=[[25.5,-5],[25.5,20],[-25.5,20],[-25.5,10]],szz=4, px=41, py=-35, pz=18.5, rx=90,rz=90);
                yPoly(p=[[25.5,-5],[25.5,20],[-25.5,20],[-25.5,-5]],szz=4, px=-45, py=-35, pz=18.5, rx=90,rz=90);
                
                translate([0,-36,38])        
                rotate([180,0,-90])
                color("lightblue")
                    import("../../stl/3rd/diamond.stl");
            }
            //structure hole
            yCube(30,22,41,     0,0,10);
            //for rail
            yCyl(9,100,    -50,0,70,0,90,0);
            
            //holes for 40mm fan
            yCyl(18,20,     0,-36,35);            
            yCyl(1,20,     16,-20,35);
            yCyl(1,20,     16,-52,35);
            yCyl(1,20,     -16,-20,35);
            yCyl(1,20,     -16,-52,35);
            //for heater
            yCyl(10,20,     0,-23,35);
            
            //for additional cooling
            translate([32.5,-45,40])
            minkowski(){
                yCube(12,20,10);
                yCyl(1,1);
            }//mink
            translate([-32.5,-45,40])
            minkowski(){
                yCube(12,20,10);
                yCyl(1,1);
            }//mink
            //for filament pipes
            translate([0,-36,25]){        
                rotate([0,0,150])
                    yCyl(10.5,20,px=33,pz=15, ry=30);
                rotate([0,0,30])
                    yCyl(10.5,20,px=33,pz=15, ry=30);
                //yCyl(10.5,50,px=19,pz=5, ry=30);
            }    
            //drive
            yPoly(p=[[6,5],[6,8],[-6,8],[-6,5],[-3,0],[3,0]], szz=100, px=-50, pz=-8,rx=90,rz=90);
            yCube(21,12,16,     -35,0,6);
            yCyl2(1.8,30,       -40,10,0,  90,0,0);
            yCube(21,12,16,     35,0,6);
            yCyl2(1.8,30,       40,10,0,  90,0,0);
            
            //holes for additional fan support
            yCyl(1.8,20,     -50,-36,28,  0,90,0);
            yCyl(1.8,20,     -50,-56,28,  0,90,0);
                
        }//diff
        
        //autolevel
        translate([39,-36,14.3]){
            yCube(3,34,12,    4,0,6);
            yPoly([[0,0],[10,0],[10,15]], 3,   -5,1.5,0, 90,0,0);
            yPoly([[0,0],[10,0],[10,15]], 3,   -5,17,0, 90,0,0);
            yPoly([[0,0],[10,0],[10,15]], 3,   -5,-14,0, 90,0,0);
            difference(){
                yCube(11,34,2.3,    0,0,-1.15);
                //holes
                yCyl(1.8,10,        -1,9,0);
                yCyl(1.8,10,        -1,-9,0);
            }//diff    
        }//translate autolevel        
        
        /*
        //side fan
        translate([-39,-36,14.3]){
            translate([4,-10,-25]){
                yCube(3,40,40,    0,0,0);
                yCyl(18,4,  -2,0,2,  0,90,0);
                
                yCyl(1,4,     -2,16,16,  0,90,0);
                yCyl(1,4,     -2,16,-16,  0,90,0);
                yCyl(1,4,     -2,-16,16,  0,90,0);
                yCyl(1,4,     -2,-16,-16,  0,90,0);
            }//translate
            yPoly([[0,0],[10,0],[0,15]], 3,   -5,1.5,0,90,0,0);
            yPoly([[0,0],[10,0],[0,15]], 3,   -5,17,0, 90,0,0);
            yPoly([[0,0],[10,0],[0,15]], 3,   -5,-14,0, 90,0,0);            
        }//translate side fan       
        */
        LM8UUHolder(px=0,py=0, pz=20, ry=90);
        LM8UUHolder(px=-32,py=0, pz=-20, ry=90);
        LM8UUHolder(px=32,py=0, pz=-20, ry=90);
        
        if (showMetal){            
            color("darkgreen"){    
                yCyl2(4,100, px=20, ry=90);
                yCyl2(4,100, px=-20, ry=90);
            }//clr
            sensorAutoLevel(38,-36,12,   0,0,0);  
            translate([0,-36,25]){        
                diamondHeadV6(pz=-37,rz=30);
                /*translate([0,0,12])
                rotate([180,0,-90])
                color("lightblue")
                    import("../../stl/3rd/diamond.stl");            
                */
            }//translate                        
        }//if showMetall
        
    }//translate
}//module assemblyAxisY 