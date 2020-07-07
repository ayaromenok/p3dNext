include <../metal/M8.scad>
include <../metal/parts.scad>
include <../metal/heads.scad>


axisYCarriageDiamondHead(showMetal=true);
//axisYCarriageDiamondHead();
//axisYCarriageDiamondHead(ry=-90);

module axisYCarriageDiamondHead(px=0, py=0, pz=0, rx=0, ry=0, rz=0, showMetal=false){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    mirror([1,0,0])
    {
        difference(){
            yCube(87,5,48, 0,0,-12);
            //connector
            yCyl2(1.8,30,px=6, py=8,rx=90);
            yCyl2(1.8,30,px=-6, py=8,rx=90);
            yCyl2(1.8,30,px=40, py=-33,rx=90);
            yCyl2(1.8,30,px=6, py=-33,rx=90);
            yCyl2(1.8,30,px=-6, py=-33,rx=90);
            yCyl2(1.8,30,px=-40, py=-33,rx=90);
        }//diff
        
        if (showMetal){                        
                diamondHeadV6(py=-30, pz=-37,rz=30);
                translate([0,-30,12])
                rotate([180,0,-90])
                color("lightblue")
                import("../../stl/3rd/diamond.stl");
            
        }//if        
    }//translate
}//module assemblyAxisY 