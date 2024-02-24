if !place_meeting(x, y+1, block) {gravity = 0.3;} else {
    gravity = 0;
    vspeed = 0;
    y = 32*round(y/32);
}
if place_meeting(x+hspeed, y, block) {x -= hspeed; hspeed = -hspeed;}
image_speed = 1/(2+hp*3);
if hp <= 0 {
    var zx = instance_create_depth(0, 0, 0, view_an1);
    zx.asdf = 10;
    instance_create_depth(0, 0, -100, light);
    audio_play_sound(snd02_14, 0, false, world.sound_vol);
    instance_destroy();
}