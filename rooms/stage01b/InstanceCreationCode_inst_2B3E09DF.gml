trigger_activate = function() {
	var i, temp;
	
	audio_play_sound(sndBlockChange, 0, false, world.sound_vol);
	for(i=0; i<3; i+=1) {
		temp = instance_create_depth(x, y+32*i, 0, Hamjung01B1);
		temp.image_xscale = 2;
		temp.image_yscale = 2;
		inst_62973C8A.trigger_id[i] = temp;
		temp = instance_create_depth(x+160+192*2, y+32*i, 0, Hamjung01B1);
		temp.image_xscale = -2;
		temp.image_yscale = 2;
		inst_2502810.trigger_id[i] = temp;
	}
	for(i=0; i<3; i+=1) {
		temp = instance_create_depth(x+192*i, y+96, 0, Hamjung01B1);
		temp.image_xscale = 2;
		temp.image_yscale = 2;
		if (i == 0) inst_62973C8A.trigger_id[3] = temp;
		temp = instance_create_depth(x+160+192*i, y+96, 0, Hamjung01B1);
		temp.image_xscale = -2;
		temp.image_yscale = 2;
		if (i == 2) inst_2502810.trigger_id[3] = temp;
	}
};