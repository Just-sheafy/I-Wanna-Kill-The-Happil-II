var i, zx;

for(i=0; i<13-c; i+=1) {
    zx = instance_create_depth(64*i+16+32*c, 0, -3, Boss02_19);
    zx.vspeed = 8;
}
c = !c;
audio_play_sound(snd02_29, 0, false, world.sound_vol);
alarm[1] = 55;