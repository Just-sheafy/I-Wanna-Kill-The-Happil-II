if ang == 0 {if y >= 512 {y = 512; speed = 0; gravity = 0; ang = 1;}}
if ang == 1 {
    if !arck {
		var i, zx;
		
        for(i=0; i<10; i+=1) {
            zx = instance_create_depth(x, y, depth+1, Boss02_58);
            zx.direction = 360/10*i+random(360/10);
            zx.speed = 6;
        }
        arck = 1;
        audio_play_sound(sndShoot, 0, false, world.sound_vol);
    }
}
if y >= room_width+300 {instance_destroy(); with(Boss02_58) {ang = 0;}}