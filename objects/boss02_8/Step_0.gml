if ((gravity_direction == 270 and !place_meeting(x, y+vspeed, block)) or
	(gravity_direction == 90 and !place_meeting(x, y+vspeed, block))) {gravity = 0.5;} else {
    if (gravity_direction == 270) y = 608-32;
    else y = 32;
    gravity = 0;
    vspeed = 0;
}
if place_meeting(x+hspeed, y, block) {
    if (room == Stage04Bs) audio_play_sound(snd04_24, 0, false);
    x -= hspeed; hspeed = -hspeed;
}
if (vspeed > 8) vspeed = 8;
if (vspeed < -8) vspeed = -8;
if (asdf > 0) asdf -= 1;