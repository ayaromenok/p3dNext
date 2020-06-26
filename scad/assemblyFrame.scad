include <metal/M8.scad>
include <org/mendelOrg.scad>

assemblyFrame();

module assemblyFrame(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        assemblyFrameBasement();
        assemblyFrameBasementNuts();
        assemblyFrameSide();
        assemblyFrameTop();
        //mendelOrg();
        //m8();        
    }//translate
}//module        

//basement
module assemblyFrameBasement(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        moFrameVertexFootR2off(147.5,200,0, 90,0,90);
        moFrameVertexFootL2off(147.5,-200,0,90,0,90);

        moFrameVertexFootR2off(-147.5,-200,0, 90,0,-90);
        moFrameVertexFootL2off(-147.5,200,0,90,0,-90);

        //local axis X
        m8Rod(330, py=159.7, pz=9.3, ry=90);
        m8Rod(330, py=189, pz=60, ry=90);
        m8Rod(330, py=-159.7, pz=9.3, ry=90);
        m8Rod(330, py=-189, pz=60, ry=90);
        
        //local axis Y
        m8Rod(370, px=154, pz=21, rx=90);
        m8Rod(370, px=-154, pz=21, rx=90);
        
        //diagonal
        m8Rod(470, pz=-8, rx=90, rz=45);
        
        //Z-asix
        translate([0,10,0]){
            moBarClamp8off(px=-163, py=-7, pz=37.7, ry=90);
            moBarClamp8off(px=146, py=-7, pz=37.7, ry=90);
            m8Rod(500, pz=31, rx=90, rz=90);
         
            moBarClamp8off(px=-218, py=-17, pz=23, rz=90);
            moBarClamp8off(px=232, py=-17, pz=23, rz=90);
            
            m8SmoothRod(px=225, py=-10, pz=185);
            m8SmoothRod(px=-225, py=-10, pz=185);
        }        
    }//translate
}//module  assemblyFrameBasement   

//basement
module assemblyFrameSide(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        moFrameVertex2off(px=147, pz=350, rx=90, ry=90, rz=90);        
        m8Rod(370, px=154, py=100, pz=190, rx=30);
        m8Rod(370, px=154, py=-100, pz=190, rx=-30);
        
        moFrameVertex2off(px=-161, pz=350, rx=90, ry=90, rz=90);        
        m8Rod(370, px=-154, py=100, pz=190, rx=30);
        m8Rod(370, px=-154, py=-100, pz=190, rx=-30);
    }//translate
}//module  assemblyFrameTriangle

module assemblyFrameTop(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        m8Rod(500, py=29.5, pz=340.5,ry=90);
        m8Rod(500, py=-29, pz=340.5,ry=90);
        moZMotorMount2off(px=195, pz=340.5);
        moZMotorMount2off(px=-195, pz=340.5, rz=180);
    }//translate
}//module  assemblyFrameTop

module assemblyFrameBasementNuts(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        //nuts - local axis X
        m8NutWasher(px=160, py=159.7, pz=9.3,ry=90);
        m8NutWasher(px=160, py=189, pz=60,ry=90);
        m8NutWasher(px=160, py=-159.7, pz=9.3,ry=90);
        m8NutWasher(px=160, py=-189, pz=60,ry=90);
        
        m8NutWasher(px=147.5, py=159.7, pz=9.3,ry=-90);
        m8NutWasher(px=147.5, py=189, pz=60,ry=-90);
        m8NutWasher(px=147.5, py=-159.7, pz=9.3,ry=-90);
        m8NutWasher(px=147.5, py=-189, pz=60,ry=-90);
        
        m8NutWasher(px=-160, py=159.7, pz=9.3,ry=-90);
        m8NutWasher(px=-160, py=189, pz=60,ry=-90);
        m8NutWasher(px=-160, py=-159.7, pz=9.3,ry=-90);
        m8NutWasher(px=-160, py=-189, pz=60,ry=-90);
        
        m8NutWasher(px=-147.5, py=159.7, pz=9.3,ry=90);
        m8NutWasher(px=-147.5, py=189, pz=60,ry=90);
        m8NutWasher(px=-147.5, py=-159.7, pz=9.3,ry=90);
        m8NutWasher(px=-147.5, py=-189, pz=60,ry=90);
        
        //nuts local axix Y
        m8NutWasher(px=154, py=175, pz=21,rx=-90);
        m8NutWasher(px=154, py=145, pz=21,rx=90);        
        m8NutWasher(px=154, py=-175, pz=21,rx=90);
        m8NutWasher(px=154, py=-145, pz=21,rx=-90);
        
        m8NutWasher(px=-154, py=175, pz=21,rx=-90);
        m8NutWasher(px=-154, py=145, pz=21,rx=90);        
        m8NutWasher(px=-154, py=-175, pz=21,rx=90);
        m8NutWasher(px=-154, py=-145, pz=21,rx=-90);
        
        m8NutWasher(px=154, py=17.5, pz=21,rx=-90);
        m8NutWasher(px=154, py=2, pz=21,rx=90);        
        
        m8NutWasher(px=-154, py=17.5, pz=21,rx=-90);
        m8NutWasher(px=-154, py=2, pz=21,rx=90);        
        
        //support Z 
        m8NutWasher(px=162, py=9, pz=31.5,ry=90);
        m8NutWasher(px=146, py=9, pz=31.5,ry=-90);        
        m8NutWasher(px=232, py=9, pz=31.5,ry=90);
        m8NutWasher(px=217.5, py=9, pz=31.5,ry=-90);
        
        m8NutWasher(px=-162, py=9, pz=31.5,ry=-90);
        m8NutWasher(px=-146, py=9, pz=31.5,ry=90);        
        m8NutWasher(px=-232, py=9, pz=31.5,ry=-90);
        m8NutWasher(px=-217.5, py=9, pz=31.5,ry=90);        
    }//translate
}//module  assemblyFrameBasementNuts        