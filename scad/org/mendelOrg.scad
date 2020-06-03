module mendelOrg(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
      
        moBarClamp8off();        
        moFrameVertex2off(100);
        moFrameVertexFootL2off(180);
        moFrameVertexFootR2off(320);
        //axis X
        moXEndIdler1off(0,100);
        moXCarriage1off(100,100);
        moXEndMotor1off(200,100);
        
    }//translate
}//module

//frame
module moBarClamp8off(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        import("../stl/mendel/bar-clamp-8off.stl");
    }//translate
}//module

module moFrameVertexFootL2off(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){        
        import("../stl/mendel/frame-vertex-foot-l-2off.stl");
    }//translate
}//module

module moFrameVertex2off(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        translate([-30,-17,0])
        rotate([0,00,-30])
        import("../stl/mendel/frame-vertex-2off.stl");
    }//translate
}//module

module moFrameVertexFootR2off(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        import("../stl/mendel/frame-vertex-foot-r-2off.stl");
    }//translate
}//module

//axis X
module moXEndIdler1off(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        import("../stl/mendel/x-end-idler-1off.stl");
    }//translate
}//module

module moXCarriage1off(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        import("../stl/mendel/x-carriage-1off.stl");
    }//translate
}//module

module moXEndMotor1off(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        import("../stl/mendel/x-end-motor-1off.stl");
    }//translate
}//module
        