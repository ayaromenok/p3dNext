include <../../lib/lib.scad>

//LM8UU();
//LM8UUHolder();
//NEMA17();

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
        yCube(3,7,23,-9);
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

