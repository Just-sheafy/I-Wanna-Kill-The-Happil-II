if y > room_height+32 {instance_destroy();}
image_xscale = -sign(hspeed)*abs(image_xscale);
if x <= 48 {hspeed = abs(hspeed); exit;}
if x >= 752 {hspeed = -abs(hspeed); exit;}
if !place_meeting(x, y+vspeed, block) {gravity = 0.2;} else {
    vspeed = -6;
}