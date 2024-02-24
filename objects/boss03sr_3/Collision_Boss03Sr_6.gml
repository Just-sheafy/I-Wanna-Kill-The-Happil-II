if a {
	var zx;
	
    audio_stop_sound(sndExplo);
    if other.a == 0 {
        audio_play_sound(sndExplo, 0, false, world.sound_vol);
        zx = instance_create_depth(x+16, y+16, -5, Explo2);
        zx.image_xscale = 1/3;
        zx.image_yscale = 1/3;
        zx.image_angle = random(360);
        instance_create_layer(x, y, "Player", Boss03Sr_8);
    } else if other.a == 1 {
        audio_play_sound(sndExplo, 0, false, world.sound_vol);
        zx = instance_create_depth(x+16, y+16, -5, Explo2);
        zx.image_xscale = 1/3;
        zx.image_yscale = 1/3;
        zx.image_angle = random(360);
        instance_create_layer(x, y, "Player", Boss03Sr_10);
    } else {
        audio_play_sound(sndExplo, 0, false, world.sound_vol);
        zx = instance_create_depth(x+16, y+16, -5, Explo2);
        zx.image_xscale = 1/3;
        zx.image_yscale = 1/3;
        zx.image_angle = random(360);
        instance_create_layer(x, y, "Player", Boss03Sr_14);
    }
    a = 0;
    alarm[0] = 50;
}