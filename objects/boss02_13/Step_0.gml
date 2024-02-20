if y > room_height+32 {instance_destroy();}
if !place_meeting(x, y+vspeed, block) {gravity = 0.5;} else {
    gravity = 0;
    vspeed = 0;
    y = 32*floor(y/32);
}
if place_meeting(x+hspeed, y, block) {x -= hspeed; hspeed = -hspeed;}
image_xscale = -sign(hspeed)*abs(image_xscale);