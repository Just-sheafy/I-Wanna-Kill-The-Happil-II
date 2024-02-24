if (canhit_warp && other.y == 384 && other.x >= 128 && other.x <= 672) {
	var temp;
	
	audio_play_sound(sndExplo, 0, false, world.sound_vol);
	temp = instance_create_depth(x, y, -5, Explo1);
	temp.image_xscale = 1/2;
	temp.image_yscale = 1/2;
	instance_destroy();
}