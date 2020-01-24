//w = 50;
//h = 40;
//d = 5;
//
//hw = 6;
//hw_gap  =1;
//count = w/(hw + hw_gap);
//
//difference(){
//    cube([w,h,d]);
//    for(i = [1:count-1]){
//        color("red")
//        translate([i *(hw+hw_gap),5,-1])
//        cube([hw,h-10,d+2]);
//    }
//}

x = 70;
y = 70;
z = 5;

fen_x = 12; 
fen_y = 12; 
fen_size = 4.5; 


fen_size_x = fen_size * x / 100;
fen_size_y = fen_size * y / 100;


strut_x = (x - fen_x * fen_size_x) / (fen_x + 1);
//strut_x = 3;
strut_y = (y - fen_y * fen_size_y) / (fen_y + 1);

difference() {
    cube(size=[x, y, z]); 
    for (i = [0:fen_x - 1]) {
        translate([i * (fen_size_x + strut_x) + strut_x, 0, 0])
        for (i = [0:fen_y - 1]) {
            translate([0, i * (fen_size_y + strut_y) + strut_x, -1])
            cube([fen_size_x, fen_size_y, z+2]); 
            }
        }
    }

