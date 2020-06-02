include <metal/M8.scad>
include <org/mendelOrg.scad>


module assemblyFrame(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        assemblyFrameBasement();
        //mendelOrg();
        //m8();
    }//translate
}//module        

//basement
module assemblyFrameBasement(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        moFrameVertexFootR2off(143.5,180,0, 90,0,90);
        moFrameVertexFootL2off(143.5,-180,0,90,0,90);

        moFrameVertexFootR2off(-143.5,-180,0, 90,0,-90);
        moFrameVertexFootL2off(-143.5,180,0,90,0,-90);

        //local axis X
        m8Rod(370, py=139.7, pz=9.3, ry=90);
        m8Rod(370, py=169, pz=60, ry=90);
        m8Rod(370, py=-139.7, pz=9.3, ry=90);
        m8Rod(370, py=-169, pz=60, ry=90);

        //local axis Y
        m8Rod(370, px=160, pz=21, rx=90);
        m8Rod(370, px=-160, pz=21, rx=90);

        m8Rod(470, pz=-8, rx=90, rz=45);
    }//translate
}//module  assemblyFrameBasement              