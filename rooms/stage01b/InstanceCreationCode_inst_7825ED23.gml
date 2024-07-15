trigger_activate = function() {
	var temp;
	
	audio_play_sound(sndBlockChange, 0, false, world.sound_vol);
	temp = instance_create_depth(x, y, 0, Hamjung01B1);
	temp.image_xscale = 2;
	temp.image_yscale = 2;
};