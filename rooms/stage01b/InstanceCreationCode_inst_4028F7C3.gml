trigger_activate = function() {
	var i, temp;
	
	audio_play_sound(sndBlockChange, 0, false, world.sound_vol);
	layer_background_blend(layer_background_get_id(layer_get_id("Background")), c_black);
	temp = instance_create_depth(0, 0, -100, Hamjung01B2);
	inst_1D83E959.trigger_id[0] = temp;
	for(i=0; i<4; i+=1) {
		temp = instance_create_depth(x+32*i, y, 0, Hamjung01B1);
		temp.image_xscale = 2;
		temp.image_yscale = 2;
	}
};