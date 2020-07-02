include <../../lib/lib.scad>

singleHeadV6();

//Nozzle Kossel
module singleHeadV6(px=0, py=0, pz=0, rx=0, ry=0, rz=0, clr="darkgreen"){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    color(clr) { 
        headCooler();
        
        yCyl(2,16, pz=-20);
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
    }//transform
}//module