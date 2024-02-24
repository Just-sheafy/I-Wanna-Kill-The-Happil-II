var i, zx;

for(i=0; i<5; i+=1) {
    zx = instance_create_depth(x, y, depth+1, Boss02_58);
    zx.direction = 360/5*i+random(360/5);
    zx.speed = 6;
}
audio_play_sound(sndShoot, 0, false, world.sound_vol);