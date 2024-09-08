vspd = 0;
vspd_to = -0.5;
y_buffer = 0;
y_diff = 0;

trigger_activate = function() {
	var i, temp, temp2;
	
	active = true;
	
	for(i=0; i<5; i+=1) {
		temp = instance_create_depth(x, y-128*i, -10, Hamjung01D1);
		temp.image_xscale = 4;
		temp.image_yscale = 4;
		temp2 = instance_create_depth(x, y-128*i-640, -10, Hamjung01D1);
		temp2.image_xscale = 4;
		temp2.image_yscale = 4;
		temp.share_id = temp2;
		temp2.share_id = temp;
	}
	return;
}

ftn_step_begin = function() {
	if (active) {
		if (vspd < vspd_to) vspd = min(vspd+0.05, vspd_to);
		else if (vspd > vspd_to) vspd = max(vspd-0.05, vspd_to);
		y_buffer += vspd;
		y_diff = 0;
		while(y_buffer >= 1) { y_buffer -= 1; y_diff += 1; }
		while(y_buffer <= -1) { y_buffer += 1; y_diff -= 1; }
		
		with(block) {
			if (y >= 960) y -= 1280;
			if (y < -256) y += 1280;
			if (x >= 544 && x < 672) vspeed = inst_2B491CF0.y_diff;
		}
		with(kill_character) {
			if (y >= 960) y -= 1280;
			if (y < -256) y += 1280;
		}
		with(water) {
			if (y >= 960) y -= 1280;
			if (y < -256) y += 1280;
		}
		with(Hamjung01D1) {
			if (y >= 960) y -= 1280;
			if (y < -256) y += 1280;
		}
	}
};

ftn_step = function() {
	if (active) {
		with(kill_character) {
			if (x >= 544 && x < 672) y += inst_2B491CF0.y_diff;
		}
		with(water) {
			if (x >= 544 && x < 672) y += inst_2B491CF0.y_diff;
		}
		with(Hamjung01D1) {
			if (x >= 544 && x < 672) y += inst_2B491CF0.y_diff;
		}
	}
};