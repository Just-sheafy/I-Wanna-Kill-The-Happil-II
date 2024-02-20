if patt < 80 {
	var i, zx;
    for(i=0; i<5; i+=1) {
        zx = instance_create_depth(x, y, 0, Boss03_76);
        zx.direction = 360/5*i+random(360/5);
        zx.speed = random_range(1, 3);
    }
    audio_play_sound(snd03_32, 0, false);
    patt += 1;
    alarm[0] = 5;
}