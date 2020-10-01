include <../../lib/lib.scad>

//axisZbottomHolder();
//mirror([1,0,0])
//axisZbottomHolder(px=50);
module axisZbottomHolder(px=0, py=0, pz=0, rx=0, ry=0, rz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    {
        color("yellow")
        difference(){
            union(){
                yCube(62,28,16, 8,4);
                yCyl(8, 20, -15, pz=10);
            }//union
            yCyl(4.2, 50, -15);
            yCyl(5, 20, 15);
            yCube(6,20,50,-15,10);
            //holes for bolts
            yCyl(2.5,20, 33,0, 0);
            yCyl(2.5,20, -3,0,00);
            //holes for nuts
            yCyl(5.6,10, 33,0, -5);
            yCyl(5.6,10, -3,0, -5);
            
            yCyl(7,7, -3,0, 11.5);
            
            yCyl2(4.4, 80, px=0, py=10,pz=0, ry=90);
        }//dif               
        //assemblyBottomAxisZHolder(pz=-2, rx=180);
    }//translate
}//module assemblyBottomAxisZ
