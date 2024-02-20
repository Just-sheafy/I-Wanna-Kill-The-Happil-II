image_angle += 15;
vspeed = min(vspeed, 10);
if y >= room_height+32 {instance_destroy();}
if x <= 48 {hspeed = abs(hspeed); x += hspeed;}
if x >= 752 {hspeed = -abs(hspeed); x += hspeed;}
if place_meeting(x, y+vspeed, block) {vspeed = -9; y -= 9;}