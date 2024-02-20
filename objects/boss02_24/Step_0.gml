if vspeed >= 6 {vspeed = 6;}
if x <= 64 {hspeed = abs(hspeed); x += hspeed;}
if x >= 736 {hspeed = -abs(hspeed); x += hspeed;}
if place_meeting(x, y+1, block) {y = 576; hspeed = 0; vspeed = 0; gravity = 0; image_index = 0; if ab {ab = !ab; alarm[0] = 60+floor(30);}}
else {gravity = 0.25; image_index = 1;}