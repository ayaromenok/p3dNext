include <../../lib/lib.scad>

//singleHeadV6();
//diamondHeadV6(100);
//sensorAutoLevel();

//Nozzle Kossel
module singleHeadV6(px=0, py=0, pz=0, rx=0, ry=0, rz=0, clr="darkgreen"){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    color(clr) { 
        headCooler();        
        
        yCube(20,15,11, px=5,pz=-20);
        yCyl(4,2,pz=-28, fn=2);
        yCyl(rb=0, rt=2, szz=2, pz=-30);
    }//transform
}//module

module headCooler(px=0, py=0, pz=0, rx=0, ry=0, rz=0, clr="darkgreen"){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    color(clr) { 
        yCyl(10.5,26);
        yCyl(8,7,pz=16.5);
        yCyl(6,5,pz=22.5);
        yCyl(8,3,pz=26);
        
        yCyl(2,16, pz=-20);
    }//transform
}//module


module diamondHeadV6(px=0, py=0, pz=0, rx=0, ry=0, rz=0, clr="darkgreen"){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    color(clr) { 
        headCooler(px=19,pz=17, ry=30);
        rotate([0,0,120])
            headCooler(px=19,pz=17, ry=30);
        rotate([0,0,240])
            headCooler(px=19,pz=17, ry=30);
        yCyl(15,4);
        yCyl(rt=15,rb=0,szz=20, pz=-12);
        
    }//transform
}//module

module sensorAutoLevel(px=0, py=0, pz=0, rx=0, ry=0, rz=0, clr="darkgreen"){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    color(clr) { 
        difference(){
            yCube(11,26,2.3,    0,0,-1.15);
            //holes
            yCyl(2.2,10,        0,9,0);
            yCyl(2.2,10,        0,-9,0);
        }//diff
        
        yCyl(5.5,9,         0,0,-5.65);
        yCube(13,13,27,     1,0,-22.85);
        
        //probes
        yCyl(1,47.3,        0,0,-18.15-5.5);
        yCyl(1,43,          3,0,-21.5);
    }//transform
}//module
