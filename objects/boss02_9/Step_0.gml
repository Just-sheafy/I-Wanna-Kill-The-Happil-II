if y > room_height+32 {
	objGoombaController.onGoombaDestroy(id);
	instance_destroy();
}
if !asdf {
    if !place_meeting(x, y+vspeed, block) {gravity = 0.5;} else {
        gravity = 0;
        vspeed = 0;
        y = 32*floor(y/32);
    }
    if place_meeting(x+hspeed, y, block) {x -= hspeed; hspeed = -hspeed;}
}