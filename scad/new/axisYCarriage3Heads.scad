include <../metal/M8.scad>
include <../metal/parts.scad>


//axisYCarriage3Heads(showMetal=true);
//axisYCarriage3Heads();
axisYCarriage3Heads(rx=-90);

module axisYCarriage3Heads(px=0, py=0, pz=0, rx=0, ry=0, rz=0, showMetal=false){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    mirror([1,0,0])
    {
        difference(){
            yCube(98,5,48, 0,0,-12);
            //connector
            yCyl2(1.8,30,px=6, py=8,rx=90);
            yCyl2(1.8,30,px=-6, py=8,rx=90);
            yCyl2(1.8,30,px=40, py=-33,rx=90);
            yCyl2(1.8,30,px=6, py=-33,rx=90);
            yCyl2(1.8,30,px=-6, py=-33,rx=90);
            yCyl2(1.8,30,px=-40, py=-33,rx=90);
            
            //air for central head
            yCube(86,5,16,0,-2,-15);
            yCube(8,5,44,0,-2,-15);
            //central head
            translate([0,0,0]){
                axisYCarriage1HeadHoles();
                
            }
            
            //air for right head
            yCube(8,7,40,30,0,-12);
            yCube(26,7,16,30,0,-15);
            //right head
            axisYCarriage1HeadHoles(31);
            
            //air for left head
            yCube(8,7,40,-30,0,-12);
            yCube(26,7,16,-30,0,-15);
            //left head
            axisYCarriage1HeadHoles(31);
            
        }//diff
        axisYCarriage1HeadWasses();
        axisYCarriage1HeadWasses(31);
        axisYCarriage1HeadWasses(-31);
        
        
        if (showMetal){            
            color("darkgreen"){    
                yCyl2(4,100, px=20, ry=90);
                yCyl2(4,100, px=-20, ry=90);
            }//clr  
        }//if        
        //for end-stoppers
        yCube(3,20,48, 47.5,-10,-12);
        yCube(3,20,48, -47.5,-10,-12);
    }//translate
}//module assemblyAxisY 

module axisYCarriage1HeadHoles(px=0, py=0, pz=0, rx=0, ry=0, rz=0, showMetal=false){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])    
    {
        yCyl(2.1,30,px=11, pz=11, py=10,rx=90);
        yCyl(4,30,px=11, pz=11, py=30,rx=90);
        yCyl(2.1,30,px=11, pz=-11, py=10,rx=90);
        yCyl(4,30,px=11, pz=-11, py=30,rx=90);
        yCyl(2.1,30,px=-11, pz=11, py=10,rx=90);
        yCyl(4,30,px=-11, pz=11, py=30,rx=90);
        yCyl(2.1,30,px=-11, pz=-11, py=10,rx=90);
        yCyl(4,30,px=-11, pz=-11, py=30,rx=90);
    }//translate
}//module axisYCarriage1HeadHoles

module axisYCarriage1HeadWasses(px=0, py=0, pz=0, rx=0, ry=0, rz=0, showMetal=false){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])    
    {   
        difference(){
            yCyl(3.4,3,px=11, pz=-2.5, py=-2,rx=90);
            yCyl(2.1,30,px=11, pz=11, py=10,rx=90);
        }//diff
        difference(){
            yCyl(3.4,3,px=11, pz=-24.5, py=-2,rx=90);
            yCyl(2.1,30,px=11, pz=-11, py=10,rx=90);
        }//diff
        difference(){
            yCyl(3.4,3,px=-11, pz=-2.5, py=-2,rx=90);
            yCyl(2.1,30,px=-11, pz=11, py=10,rx=90);
        }//diff
        difference(){
            yCyl(3.4,3,px=-11, pz=-24.5, py=-2,rx=90);
            yCyl(2.1,30,px=-11, pz=-11, py=10,rx=90);
        }//diff
    }//translate
}//module assemblyAxisY 