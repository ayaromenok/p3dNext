include <metal/M8.scad>
include <assemblyFrame.scad>

//assemblyFrame();
assemblyAxisY();

module assemblyAxisY(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){        
        assemblySmoothRodAxisY();
        
    }//translate
}//module assemblyAxisY 


module assemblySmoothRodAxisY(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){        
        m8NutWasher(px=45,py=189, pz=60, ry=90, rz=180 );
        moBarClamp8off(px=59, py=181, pz=77 ,ry=90, rz=90);
        m8NutWasher(px=58,py=189, pz=60,ry=90 );
        
        m8NutWasher(px=-58,py=189, pz=60, ry=90, rz=180 );
        moBarClamp8off(px=-45, py=181,pz=77,ry=90, rz=90);
        m8NutWasher(px=-45,py=189, pz=60,ry=90 );
        
        m8NutWasher(px=45,py=-189, pz=60, ry=90, rz=180 );
        moBarClamp8off(px=59, py=-197, pz=77 ,ry=90, rz=90);
        m8NutWasher(px=58,py=-189, pz=60,ry=90 );
        
        m8NutWasher(px=-58,py=-189, pz=60, ry=90, rz=180 );
        moBarClamp8off(px=-45, py=-197,pz=77,ry=90, rz=90);
        m8NutWasher(px=-45,py=-189, pz=60,ry=90 );

        
        m8SmoothRod(length=400, px=52, py=0, pz=70, rx=90);
        m8SmoothRod(length=400, px=-52, py=0, pz=70, rx=90);
    }//translate
}//module        
        