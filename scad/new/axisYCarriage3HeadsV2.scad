include <../metal/M8.scad>
include <../metal/parts.scad>
include <../metal/heads.scad>


//axisYCarriage3HeadsV2(showMetal=true);
//axisYCarriage3HeadsV2();
axisYCarriage3HeadsV2(rx=-90);
//axisYCarriage1HeadHolder(holes=true);
axisYCarriage1HeadHolder(0,40,0.5,rx=-90,rz=180, short=true);
axisYCarriage1HeadHolder(-40,40,0.5,rx=-90,rz=180, short=true);
axisYCarriage1HeadHolder(40,40,0.5,rx=-90,rz=180, short=true);
module axisYCarriage3HeadsV2(px=0, py=0, pz=0, rx=0, ry=0, rz=0, showMetal=false){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    mirror([1,0,0])
    {
        difference(){
            yCube(102,5,56, 0,0,-8);
            //connector
            yCyl2(1.8,30,px=6, py=8,rx=90);
            yCyl2(1.8,30,px=-6, py=8,rx=90);
            yCyl2(1.8,30,px=40, py=-33,rx=90);
            yCyl2(1.8,30,px=6, py=-33,rx=90);
            yCyl2(1.8,30,px=-6, py=-33,rx=90);
            yCyl2(1.8,30,px=-40, py=-33,rx=90);
            
            yCyl2(3,4,11,14,-1,90);
            yCyl2(3,35,-11,14,-1,90);
                
            yCyl2(3,4,21,14,-1,90);
            yCyl2(3,4,43,14,-1,90);
                
            yCyl2(3,4,-21,14,-1,90);
            yCyl2(3,4,-43,14,-1,90);
        }//diff
        
        
        axisYCarriage1HeadHolder(0,-10.5,14, holes=true);
        axisYCarriage1HeadHolder(32,-10.5,14);
        axisYCarriage1HeadHolder(-32,-10.5,14);        
        
        
        if (showMetal){            
            color("darkgreen"){    
                singleHeadV6(0,-19,-8.5);
                singleHeadV6(32,-19,-8.5);
                singleHeadV6(-32,-19,-8.5);
                yCyl2(1.5,35,11,14,15,90);
                yCyl2(1.5,35,-11,14,15,90);
                
                yCyl2(1.5,35,21,14,15,90);
                yCyl2(1.5,35,43,14,15,90);
                
                yCyl2(1.5,35,-21,14,15,90);
                yCyl2(1.5,35,-43,14,15,90);
            }//clr  
        }//if        
        //for end-stoppers
        yCube(3,20,30, 49.5,-10,-3);
        yCube(3,20,30, -49.5,-10,-3);
    }//translate
}//module assemblyAxisY 

module axisYCarriage1HeadHolder(px=0, py=0, pz=0, rx=0, ry=0, rz=0, holes=false, short=false){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])    
    {
        difference(){
            yCube(30,16,12);
            yCyl(6.2,5.4,0,-8,-0.5);
            yCyl(8.2,4,0,-8,4);
            yCyl(8.2,4,0,-8,-5);
            //for m3
            yCyl2(1.8,40,11,0,10,90);
            yCyl2(1.8,40,-11,0,10,90);    
            //for nuts
            //yCube(10,4,7,11,0,0);
            //yCube(10,4,7,-11,0,0);        
            //yCube(4,4,20,11,0,0);
            //yCube(4,4,20,-11,0,0);
            if (holes){
                yCyl2(3,30,px=6, py=-6,rx=90);
                yCyl2(3,30,px=-6, py=-6,rx=90);
            }//if holes
            if(short){
                yCube(25,8,14,11,7);
                yCube(25,8,14,-11,7);
            }//if short    
        }//dif        
        
    }//translate
}//module axisYCarriage1HeadHoles
