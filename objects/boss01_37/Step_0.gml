a = 0;
if instance_exists(Boss01_34) {if Boss01_34.b == -1 {a = 1;}}
if instance_exists(Boss01_21) {if Boss01_21.b == 0 {a = 2;}}
if a == 0 {angle -= (0.1+0.3*image_index)*(1+(room_speed < 50));}
else if a == 1 {angle += (0.1+0.3*image_index)*(1+(room_speed < 50));}
angle = (angle mod 360);