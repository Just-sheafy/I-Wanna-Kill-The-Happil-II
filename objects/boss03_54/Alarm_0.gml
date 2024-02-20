var i, zx;

audio_play_sound(snd02_11, 0, false);
for(i=0; i<4; i+=1) {
    zx = instance_create_depth(x, y, -3, Boss03_56);
    zx.direction = 360/4*i+random(360/4);
    zx.alarm[0] = 450;
}
zx = instance_create_depth(x, y, -5, Explo3);
zx.image_blend = c_purple;
alarm[0] = 150;