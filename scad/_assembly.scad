include <../lib/lib.scad>
mendelOrg();

module mendelOrg(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
      
        moBarClamp8off();
        
    }//translate
}//module


module moBarClamp8off(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        import("../stl/mendel/bar-clamp-8off.stl");
    }//translate
}//module


module moBarClamp8off(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        import("../stl/mendel/bar-clamp-8off.stl");
    }//translate
}//module

module moBarClamp8off(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        import("../stl/mendel/bar-clamp-8off.stl");
    }//translate
}//module


module moBarClamp8off(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        import("../stl/mendel/bar-clamp-8off.stl");
    }//translate
}//module

module moBarClamp8off(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        import("../stl/mendel/bar-clamp-8off.stl");
    }//translate
}//module

module moBarClamp8off(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz]){
        import("../stl/mendel/bar-clamp-8off.stl");
    }//translate
}//module
import("../stl/mendel/frame-vertex-foot-l-2off.stl");
        import("../stl/mendel/x-end-idler-1off.stl");
        import("../stl/mendel/frame-vertex-2off.stl");
        import("../stl/mendel/frame-vertex-foot-r-2off.stl");
        import("../stl/mendel/x-carriage-1off.stl");
        import("../stl/mendel/x-end-motor-1off.stl");