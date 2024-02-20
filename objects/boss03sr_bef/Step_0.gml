if instance_exists(SavePoint2) {
    if SavePoint2.saveTimer > 0 {
		var i, zx;
		
        with(world) {
            if filePlaying != 15.5 and curMusic != global.stage03Sr1 {
                audio_stop_sound(Instance);
                filePlaying = 15.5;
                curMusic = global.stage03Sr1;
                Instance = audio_play_sound(curMusic, 10, true);
            }
            break;
        }
		
		if (world.HEALTH_ok) {
			zx = instance_create_depth(0, 0, -49, playerHealth);
			zx.hp = 2;
			zx.hpm = 2;
		}
		
        for(i=0; i<19; i+=1) {instance_create_layer(96+32*i, 544, "Player", spikeUpInstant);}
        instance_create_depth(0, 0, -5, Boss03Sr_4);
        instance_create_depth(0, 0, -100, light);
        with(StageGet) {audio_stop_sound(Instance); instance_destroy();}
        zx = instance_create_depth(800, 0, -2000, StageGet);
        zx.image_index = 50;
        zx = instance_create_depth(0, 0, 0, view_an3);
        zx.asdf = 30;
		
		if (layer_exists("Tiles2"))
			layer_set_visible(layer_get_id("Tiles2"), false);
        with(dark1) {instance_destroy();}
        with(CanS) {instance_destroy();}
        instance_destroy();
        instance_create_depth(400, 144, -2, Boss03Sr_1);
    }
}