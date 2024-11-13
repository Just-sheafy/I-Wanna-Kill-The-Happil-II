if (collectable && instance_exists(Hamjung01J1) && instance_exists(player) &&
    point_distance(x, y, player.x, player.y) < 96) {
    var temp;
    
    temp = -1;
    if (Hamjung01J1.items[0] == -1) temp = 0;
    else if (Hamjung01J1.items[1] == -1) temp = 1;
    
    if (temp != -1 && Hamjung01J1.holding == -1){
		if (object_index == Hamjung01J4) {
			with(world) {
				if filePlaying != 1.25 and curMusic != global.stage01B {
					audio_stop_channel(0);
		            filePlaying = 1.25;
		            curMusic = global.stage01B;
		            Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
					audio_sound_loop_start(curMusic, 18.74);
		        }
			}
		}
		
        Hamjung01J1.items[temp] = object_index;
        Hamjung01J1.items_spr[temp] = sprite_index;
        Hamjung01J1.firstTouch = false;
        Hamjung01J1.collected = true;
        with(Hamjung01J3) firstTouch = false;
        
        audio_play_sound(sndChark, 0, false, world.sound_vol);
        instance_destroy();
    }
}