if ((gravity_direction == 270 and !place_meeting(x,y+1,block)) or (gravity_direction == 90 and !place_meeting(x,y-1,block))) {gravity = 0.5;} else {
    if (gravity_direction == 270) y = 608-32;
    else y = 32;
    gravity = 0;
    vspeed = 0;
}

if (instance_exists(player)) {
    hspeed += round((player.x-x)/50)/6;
} else {
    hspeed += round(-x/50)/6;
}
if place_meeting(x+hspeed,y,block) {
    audio_play_sound(snd04_24, 0, false);
    x -= hspeed; hspeed = hspeed * (-1.05);
}
if (hspeed > 10) hspeed = 10;
if (hspeed < -10) hspeed = -10;
if (vspeed > 8) vspeed = 8;
if (vspeed < -8) vspeed = -8;
if (asdf > 0) asdf -= 1;