include <../../lib/lib.scad>
//translate([-7,-7.2,-8])
//import ("../../stl/mendel/bar-clamp-8off.stl");


difference(){
    union(){
        yCyl(7,16);
        yCube(20,14,16, px=10);
    }
    yCyl(4.4,22);
    yCube(22,5,22, px=10);
    yCyl2(4.4, 20, px=10, rx=90);
    yCube(10,22,12, px=22, pz=7, ry=-30);
    yCube(10,22,12, px=22, pz=-7, ry=30);
}

