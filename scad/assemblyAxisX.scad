include <metal/M8.scad>
include <metal/hotbed.scad>
include <metal/parts.scad>

include <new/hotbedHolder.scad>

include <assemblyFrame.scad>


//assemblyFrame();
//assemblyAxisX();

module assemblyAxisX(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){        
        assemblySmoothRodAxisX();
        assemblyDriveAxisX();
        assemblyHotBed(0,0,90,0,0,-90);        
    }//translate
}//module assemblyAxisY 


module assemblySmoothRodAxisX(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){        
        m8NutWasher(px=55,py=189, pz=60, ry=90, rz=180 );
        moBarClamp8off(px=69, py=181, pz=77 ,ry=90, rz=90);
        m8NutWasher(px=68,py=189, pz=60,ry=90 );
        
        m8NutWasher(px=-68,py=189, pz=60, ry=90, rz=180 );
        moBarClamp8off(px=-55, py=181,pz=77,ry=90, rz=90);
        m8NutWasher(px=-55,py=189, pz=60,ry=90 );
        
        m8NutWasher(px=45,py=-189, pz=60, ry=90, rz=180 );
        moBarClamp8off(px=69, py=-197, pz=77 ,ry=90, rz=90);
        m8NutWasher(px=68,py=-189, pz=60,ry=90 );
        
        m8NutWasher(px=-68,py=-189, pz=60, ry=90, rz=180 );
        moBarClamp8off(px=-55, py=-197,pz=77,ry=90, rz=90);
        m8NutWasher(px=-55,py=-189, pz=60,ry=90 );

        
        m8SmoothRod(length=400, px=62, py=0, pz=70, rx=90);
        m8SmoothRod(length=400, px=-62, py=0, pz=70, rx=90);
    }//translate
}//module        

module assemblyDriveAxisX(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){        
        m8NutWasher(px=-5, py=189, pz=60, ry=90, rz=180 );
        m8BallBearing(px=0, py=189, pz=60, ry=90);
        m8Washer(px=5, py=189, pz=60, ry=90, rz=0 );
        
        m8NutWasher(px=-5, py=-189, pz=60, ry=90, rz=180 );
        m8BallBearing(px=0, py=-189, pz=60, ry=90);
        m8NutWasher(px=5, py=-189, pz=60, ry=90, rz=0 );
        
        moYEndMotor(px=16, py=187, pz=30, rx=90, ry=0, rz=-90);
        NEMA17(px=34.5, py=211, pz=28.5, rx=90, ry=-22, rz=-90);
        m8NutWasher(px=16,py=189, pz=60,ry=90 );
        
        m8NutWasher(px=6, py=160, pz=9, ry=90, rz=180 );
        m8NutWasher(px=16,py=160, pz=9,ry=90 );
    }//translate
}//module        

module assemblyHotBed(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){        
        hotBed150x150(pz=2);
        hotBedHolder150x150(pz=2, showMetal=true);
    }//translate
}//module        
