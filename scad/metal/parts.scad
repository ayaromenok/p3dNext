include <../../lib/lib.scad>

//LM8UU();
//LM8UUHolder();
//NEMA17();
//GT2_16();
//endStop();

module endStop(px=0, py=0, pz=0, rx=0, ry=0, rz=0, clr="darkgreen", length=37){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    color(clr) {
        difference(){
            yCube(39.5,16,2);
            //holes
            yCyl(1.5,3,         (39.5/2)-3.5,5);
            yCyl(1.5,3,         (39.5/2-19)-3.5,5);
        }//diff
        yCube(10,12,5,          -14,0,3);
        yCube(13,8,5,          7,4,3);
        yCyl2(1.5,4,       14,3,-8.5,  90,0,0);
    }//transform
}//module

module LM8UU(px=0, py=0, pz=0, rx=0, ry=0, rz=0, clr="darkgreen"){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    color(clr) {   
        difference(){
            yCyl(7.5,24);
            yCyl(4,25);
            difference(){
                yCyl(8,1.1,0,0,8.2);
                yCyl(7,2,0,0,8.2);
            }//diff
            difference(){
                yCyl(8,1.1,0,0,-8.2);
                yCyl(7,2,0,0,-8.2);
            }//diff
        }//diff
    }//transform
}//module

//LM8UUHolder();
module LM8UUHolder(px=0, py=0, pz=0, rx=0, ry=0, rz=0, clr="lightgreen"){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    color(clr){        
        difference(){
            yCyl(10,23);
            difference(){
                yCyl(7.9,24);                
                difference(){
                    yCyl(8,0.8,0,0,8.2);
                    yCyl(7.4,2,0,0,8.2);
                }//diff
                difference(){
                    yCyl(8,0.8,0,0,-8.2);
                    yCyl(7.4,2,0,0,-8.2);
                }//diff
            }            
            yCube(10,3,25,5);
        }//diff
        yCube(3,7,23,-10);
    }//transform
}//module

module NEMA17(px=0, py=0, pz=0, rx=0, ry=0, rz=0, clr="darkgreen", length=37){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    color(clr) {
        difference(){ 
            yCube(42.3,42.3,length);
            yCube(10,10,length+2, 22.15, 22.15,0,0,0,45);
            yCube(10,10,length+2, 22.15, -22.15,0,0,0,45);
            yCube(10,10,length+2, -22.15, 22.15,0,0,0,45);
            yCube(10,10,length+2, -22.15, -22.15,0,0,0,45);
            //holes
            yCyl(1.5,10,15.5,15.5,length/2);
            yCyl(1.5,10,15.5,-15.5,length/2);
            yCyl(1.5,10,-15.5,15.5,length/2);
            yCyl(1.5,10,-15.5,-15.5,length/2);
        }//dif
        yCyl(11,2,0,0,length/2+1);
        yCyl(2.5,24,0,0,length/2+12+2);
        
        
    }//transform
}//module

module GT2_16(px=0, py=0, pz=0, rx=0, ry=0, rz=0, clr="darkgreen", length=37){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    color(clr) {
        difference(){
            union(){
                yCyl(8,7.5);
                yCyl(6,7,pz=7);
                yCyl(8,1.5,pz=11.25);
            }//union
            yCyl(2.5,50);
        }//diff
    }//transform
}//module
