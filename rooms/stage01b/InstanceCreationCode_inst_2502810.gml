trigger_activate = function() {
	var i, temp;
	
	audio_play_sound(sndBlockChange, 0, false, world.sound_vol);
	
	for(i=0; i<total; i+=1) {
		if (!trig[i] && trigger_id[i] != -1 && instance_exists(trigger_id[i])) {
			trig[i] = true;
			ftn_trigger(i);
		}
	}
	
	temp = instance_create_depth(x, y, -2, fruit);
	temp.sprite_index = sprFruitGr;
	temp.image_xscale = 6;
	temp.image_yscale = 6;
	inst_6186B7CE.trigger_id[0] = temp;
	
	instance_create_depth(1408, 448, 0, block);
	instance_create_depth(1536, 480, 0, block);
	
	return;
};

ftn_trigger = function(trigger) {
	if (trigger >= 0 && trigger <= 3) {
		if (trig[trigger] && trigger_id[trigger] != -1 && instance_exists(trigger_id[trigger])) {
			with(trigger_id[trigger]) instance_destroy();
		}
	}
}