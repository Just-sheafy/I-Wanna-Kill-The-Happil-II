trigger_id[0] = inst_BE40417;

hspd = 0;
vspd = 0;
grav = 0.15;
patt = 0;

trigger_activate = function() {
	var i, temp, temp2;
	
	if (!active) {
		audio_play_sound(sndBlockChange, 0, false, world.sound_vol);
		instance_create_depth(0, 0, -2, Hamjung01E4);
		for(i=0; i<53; i+=1) {
			instance_create_depth(256+32*i, 544, 10, Hamjung01E3);
		}
		active = true;
	} else if (patt == 1) {
		audio_play_sound(sndBlockChange, 0, false, world.sound_vol);
		hspd = 0.4;
		patt = 2;
	} else if (patt == 2) {
		audio_play_sound(sndBlockChange, 0, false, world.sound_vol);
		hspd = 0.3;
		patt = 3;
	} else if (patt == 3) {
		audio_play_sound(sndBlockChange, 0, false, world.sound_vol);
		hspd = 0.5;
		patt = 4;
	}
	return;
}

ftn_step = function() {
	if (active) {
		if (trigger_id[0] != -1 && instance_exists(trigger_id[0])) {
			trigger_id[0].x = min(trigger_id[0].x+hspd, 1920);
			trigger_id[0].y += vspd;
			vspd += grav;
			if (trigger_id[0].hit && trigger_id[0].y >= room_height-(16-3)*image_yscale) {
				vspd = -11;
				trigger_id[0].hit = false;
				if (patt == 0) {
					hspd = 1.2;
					patt = 1;
				}
			}
		}
	}
};