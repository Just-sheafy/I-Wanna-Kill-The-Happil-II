if instance_exists(SavePoint2) {
    if SavePoint2.saveTimer > 0 {
        if (world.achieve[38]) {
	        with(world) {
	            if filePlaying != 18 and curMusic != global.stage04Bs1 {
	                audio_stop_sound(Instance);
	                filePlaying = 18;
	                curMusic = global.stage04Bs1;
	                Instance = audio_play_sound(curMusic, 10, true);
	            }
	            break;
	        }
			
			if (world.HEALTH_ok) {
				var zx = instance_create_depth(0, 0, -49, playerHealth);
				zx.hp = 3;
				zx.hpm = 3;
			}
			
	        instance_create_depth(0, 0, -100, light);
	        with(StageGet) {audio_stop_sound(Instance); instance_destroy();}
	        var zx = instance_create_depth(800, 0, -2000, StageGet);
	        zx.image_index = 64;
	        with(dark1) {instance_destroy();}
	        instance_destroy();
        
	        instance_create_depth(room_width/2, room_height/2, 10, Boss04_1);
	        var temp = instance_create_depth(-192, 288, -5, Boss04_2);
	        temp.xx = 192; temp.type = 0;
	        temp = instance_create_depth(1024, 288, -5, Boss04_3);
	        temp.xx = 640; temp.type = 0;
		} else {
			with(world) {
		        if filePlaying != -1 and curMusic != global.Silent {
			        audio_stop_sound(Instance);
			        filePlaying = -1;
			        curMusic = global.Silent;
			        Instance = audio_play_sound(curMusic, 10, true);
			    }
		    }
            
            instance_destroy();
            with(object666) {patt = 1; event_perform(ev_alarm, 0);}
		}
    }
}