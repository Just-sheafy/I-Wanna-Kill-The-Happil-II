if y > room_height+32 {instance_destroy();}
if !place_meeting(x, y+vspeed, block) {gravity = 0.5;} else {
    gravity = 0;
    vspeed = 0;
    y = 32*round(y/32);
}
if x <= 48 {hspeed = abs(hspeed);}
if x >= 752 {hspeed = -abs(hspeed);}
image_xscale = -sign(hspeed)*abs(image_xscale);