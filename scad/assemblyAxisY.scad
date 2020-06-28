include <metal/M8.scad>
include <metal/hotbed.scad>
include <metal/parts.scad>

include <new/hotbedHolder.scad>

include <assemblyFrame.scad>


assemblyFrame();
assemblyAxisY();

module assemblyAxisY(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){        
        assemblySmoothRodAxisY();
        assemblyDriveAxisY();
        assemblyHotBed(0,0,90,0,0,-90);        
    }//translate
}//module assemblyAxisY 


module assemblySmoothRodAxisY(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
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

module assemblyDriveAxisY(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){        
        m8NutWasher(px=-5, py=189, pz=60, ry=90, rz=180 );
        m8BallBearing(px=0, py=189, pz=60, ry=90);
        m8Washer(px=5, py=189, pz=60, ry=90, rz=0 );
        
        m8NutWasher(px=-5, py=-189, pz=60, ry=90, rz=180 );
        m8BallBearing(px=0, py=-189, pz=60, ry=90);
        m8NutWasher(px=5, py=-189, pz=60, ry=90, rz=0 );
        
        moYEndMotor(px=16, py=187, pz=30, rx=90, ry=0, rz=-90);
        m8NutWasher(px=16,py=189, pz=60,ry=90 );
        
        m8NutWasher(px=6, py=160, pz=9, ry=90, rz=180 );
        m8NutWasher(px=16,py=160, pz=9,ry=90 );
    }//translate
}//module        

module assemblyHotBed(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){        
        hotBed150x150();
        hotBedHolder150x150();
    }//translate
}//module        
