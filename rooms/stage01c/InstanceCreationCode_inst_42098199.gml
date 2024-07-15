trigger_id[1] = inst_5FFC8A92;
xx[1] = trigger_id[1].x+sprite_get_width(trigger_id[1].sprite_index)/2;
yy[1] = trigger_id[1].y+sprite_get_height(trigger_id[1].sprite_index)/2;
hspd[1] = random_range(-1, 1);
vspd[1] = random_range(-1, 1);
angle_spd[1] = random_range(-2, 2);

trigger_activate = function() {
	var i, temp;
	
	if (!trig[0] && trigger_id[0] != -1 && instance_exists(trigger_id[0])) {
		trig[0] = true;
		ftn_trigger(0);
	}
	
	audio_play_sound(sndSpikeTrap, 0, false, world.sound_vol);
	temp = instance_create_depth(0, 0, 0, view_an3);
	temp.asdf = 15;
};

ftn_trigger = function(trigger) {
	trigger_id[trigger].depth = -2;
}

ftn_step = function() {
	var i, temp;
	
	if (trig[0]) {
		if (time < 8) {
			if (time == 5) {
				audio_play_sound(sndBlockFall, 0, false, world.sound_vol);
				temp = instance_create_depth(trigger_id[1].x, trigger_id[1].y, trigger_id[1].depth, Hamjung01);
				temp.sprite_index = trigger_id[1].sprite_index;
				temp.image_index = trigger_id[1].image_index;
				temp.image_speed = 0;
				with(trigger_id[1]) instance_destroy();
				trigger_id[1] = temp;
				trig[1] = true;
			}
			with(trigger_id[0]) { image_yscale += 1; }
			time += 1;
		}
	}
	
	if (trig[1]) {
		if (trigger_id[1] != -1 && instance_exists(trigger_id[1])) {
			xx[1] += hspd[1];
			yy[1] += vspd[1];
			vspd[1] += 0.4;
			trigger_id[1].image_angle += angle_spd[1];
			trigger_id[1].image_alpha -= 0.03;
			
			trigger_id[1].x = xx[1] - lengthdir_x(sprite_get_width(trigger_id[1].sprite_index)/2, trigger_id[1].image_angle)
				+ lengthdir_y(sprite_get_height(trigger_id[1].sprite_index)/2, trigger_id[1].image_angle);
			trigger_id[1].y = yy[1] - lengthdir_x(sprite_get_height(trigger_id[1].sprite_index)/2, trigger_id[1].image_angle)
				- lengthdir_y(sprite_get_width(trigger_id[1].sprite_index)/2, trigger_id[1].image_angle);
			
			if (trigger_id[1].image_alpha <= 0) {
				with(trigger_id[1]) instance_destroy();
				trigger_id[1] = -1;
				trig[1] = false;
			}
		}
	}
};