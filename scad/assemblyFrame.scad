include <metal/M8.scad>
include <org/mendelOrg.scad>

assemblyFrame();

module assemblyFrame(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        assemblyFrameBasement();
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
        moFrameVertexFootR2off(153.5,200,0, 90,0,90);
        moFrameVertexFootL2off(153.5,-200,0,90,0,90);

        moFrameVertexFootR2off(-153.5,-200,0, 90,0,-90);
        moFrameVertexFootL2off(-153.5,200,0,90,0,-90);

        //local axis X
        m8Rod(330, py=159.7, pz=9.3, ry=90);
        m8Rod(330, py=189, pz=60, ry=90);
        m8Rod(330, py=-159.7, pz=9.3, ry=90);
        m8Rod(330, py=-189, pz=60, ry=90);

        //local axis Y
        m8Rod(370, px=160, pz=21, rx=90);
        m8Rod(370, px=-160, pz=21, rx=90);
        
        //diagonal
        m8Rod(470, pz=-8, rx=90, rz=45);
        
        //Z-asix
         moBarClamp8off(px=-152, py=-7, pz=4, ry=-90);
         moBarClamp8off(px=167, py=-7, pz=4, ry=-90);
         m8Rod(470, pz=12, rx=90, rz=90);
    }//translate
}//module  assemblyFrameBasement   

//basement
module assemblyFrameSide(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        moFrameVertex2off(px=155, pz=350, rx=90, ry=90, rz=90);        
        m8Rod(370, px=160, py=100, pz=190, rx=30);
        m8Rod(370, px=160, py=-100, pz=190, rx=-30);
        
        moFrameVertex2off(px=-165, pz=350, rx=90, ry=90, rz=90);        
        m8Rod(370, px=-160, py=100, pz=190, rx=30);
        m8Rod(370, px=-160, py=-100, pz=190, rx=-30);
    }//translate
}//module  assemblyFrameTriangle

module assemblyFrameTop(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        m8Rod(470, py=29.5, pz=340.5,ry=90);
        m8Rod(470, py=-29, pz=340.5,ry=90);
        moZMotorMount2off(px=195, pz=340.5);
        moZMotorMount2off(px=-195, pz=340.5, rz=180);
    }//translate
}//module  assemblyFrameTop
