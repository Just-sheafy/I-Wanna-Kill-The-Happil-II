if (gravity != 0 and !noBlock) {
    if (gravity_direction == 270 and place_meeting(x,y+5,block)) {
        if (vspeed > 1) {vspeed *= -1/2; y += vspeed;}
        else {hspeed = 0; vspeed = 0; gravity = 0;}
    }
    if (gravity_direction == 90 and place_meeting(x,y-5,block)) {
        if (vspeed < -1) {vspeed *= -1/2; y += vspeed;}
        else {hspeed = 0; vspeed = 0; gravity = 0;}
    }
    
    image_angle += hspeed*3;
    if ((hspeed > 0 and place_meeting(x+2, y, block)) or (hspeed < 0 and place_meeting(x-2, y, block))) {
		x -= hspeed; hspeed *= -1;
	}
}