if visible {
    if !instance_exists(Boss03Sr_11) {
		var i, zx;
		
        visible = false;
		instance_create_depth(x, y, -50, surf_ripple);
        audio_play_sound(sndBlockChange, 0, false, world.sound_vol);
        for(i=0; i<4; i+=1) {
            zx = instance_create_layer(x, y, "Player", Boss03Sr_6);
            zx.speed = 16;
            zx.direction = 90*i;
        }
    } else { with(other) kill_player(); }
    with(Boss03Sr_1) {
        alarm[2] = 150;
    }
}