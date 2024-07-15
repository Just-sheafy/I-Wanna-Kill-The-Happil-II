trigger_activate = function() {
	var temp;
	
	audio_play_sound(sndBlockChange, 0, false, world.sound_vol);
	temp = instance_create_depth(x, y, -5, Hamjung01A1);
	temp.image_alpha = 0;
	with(temp) {
	    var i;
    
	    angle = 180;
		angle_spd = -1.5;
	    number = 15;
    
	    for(i=0; i<number; i+=1) {
	        if (i >= 3) flame[i] = instance_create_depth(x, y, depth-1, Hamjung01A2);
			flame[i].image_alpha = 0;
	        flame[i].x = x + lengthdir_x(16*i, angle);
	        flame[i].y = y + lengthdir_y(16*i, angle);
	    }
	}
	
	inst_1F3BA9CB.trigger_id[0] = temp;
	
	instance_destroy();
}