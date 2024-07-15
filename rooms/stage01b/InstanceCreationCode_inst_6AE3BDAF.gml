trigger_activate = function() {
	var i, temp;
	
	audio_play_sound(sndBlockChange, 0, false, world.sound_vol);
	for(i=0; i<4; i+=1) {
		temp = instance_create_depth(x+32, y+32*i, 0, Hamjung01B1);
		temp.image_xscale = -2;
		temp.image_yscale = 2;
	}
};