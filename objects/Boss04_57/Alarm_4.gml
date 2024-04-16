var temp;

if (patt == 0) {
	if (instance_exists(player)) {
		audio_play_sound(snd04_47, 0, false, world.sound_vol);
		temp = instance_create_depth((player.x >= 400)? 935:-135, 304, -5, Boss04_67);
		temp.image_index = 3;
		temp.image_xscale = 608/68;
		temp.image_yscale = 608/68;
		temp.alarm[3] = 74;
		temp.theta = 90;
	}
	image_index = 0;
	
	patt += 1;
	alarm[4] = 50;
} else if (patt == 1) {
	with(Boss04_75) instance_destroy();
	patt += 1;
	if (instance_exists(player)) alarm[4] = 1124;
} else if (patt == 2) {	
	if (!instance_exists(player)) exit;
	temp = instance_create_depth(0, -916, -2, Boss04_78);
	if (instance_exists(Boss04_55)) {
		temp.x = Boss04_55.x;
		temp.y = Boss04_55.y - 916;
	}
	temp.vspeed = 32;
	temp.gravity = 32/50;
	temp.gravity_direction = 90;
	
	patt += 1;
	alarm[4] = 50;
} else if (patt == 3) {
	if (!instance_exists(player)) exit;
	if (world.screen_effect_enable) {
		zx = instance_create_depth(0, 0, 0, view_an4);
		zx.asdf = 1;
		zx.a = 0;
		zx.noise = 30;
		zx.noise_dec = 0.3;
		audio_play_sound(snd04_55, 0, false, world.sound_vol);
	}
	
	zx = instance_create_depth(0, 0, -100, dark1);
	zx.alpha_dec = 0.02;
	
	with(Boss04_56) {
		t_spd = 5;
		t2_spd = 5;
		number = 100;
		
		col[0] = 0.27;
		col[1] = 0.27;
		col[2] = 0.27;
		col2[0] = 0.37;
		col2[1] = 0.37;
		col2[2] = 0.37;
		col3[0] = 0.52;
		col3[1] = 0.52;
		col3[2] = 0.52;
	}
	
	with(Boss04_67) instance_destroy();
	with(Boss04_77) instance_destroy();
	with(objEndCredit) error = true;
	
	image_index = 0;
	scale = 4;
	xx = room_width / 2;
	yy = room_height / 2;
	zz = 20;
	CX = room_width / 2;
	CY = room_height / 2;
	mode = 9;
	mode_time = 0;
	
	// natural camera walking
	xx1_from = CX-400;
    yy1_from = CY;
    xx1_to = random_range(CX-400-64, CX-400+64);
    yy1_to = random_range(CY-64, CY+64);
    t1 = 0;
    t1_max = irandom_range(150, 200);
	
	xx2_from = CX+400;
    yy2_from = CY;
    xx2_to = random_range(CX+400-64, CX+400+64);
    yy2_to = random_range(CY-64, CY+64);
    t2 = 0;
    t2_max = irandom_range(150, 200);
	
	// infinite chasing
	temp = instance_create_layer(32, 576, "Player", Boss04_41);
	temp.image_index = 8;
	temp = instance_create_layer(768, 576, "Player", Boss04_41);
	temp.image_index = 9;
	temp = instance_create_layer(768, 32, "Player", Boss04_41);
	temp.image_index = 10;
	temp = instance_create_layer(32, 32, "Player", Boss04_41);
	temp.image_index = 11;
	with(Boss04_41) visible = false;
	temp = instance_create_layer(464, 304, "Player", Boss04_62);
	temp.back_effect = id;
	instance_create_layer(160, 256, "Player", Boss04_64);
	
	patt += 1;
	alarm[4] = 800;
} else if (patt == 4) {
	if (!instance_exists(player)) exit;
	
	mode = 10;
	mode_time = 0;
	
	temp = instance_create_depth(0, 0, -100, light);
	temp.error = true;
	
	with(Boss04_40) instance_destroy();
	with(Boss04_41) instance_destroy();
	with(Boss04_62) instance_destroy();
	with(Boss04_63) instance_destroy();
	with(Boss04_64) instance_destroy();
	with(Boss04_79) instance_destroy();
	with(objEndCredit) error = false;
	
	if (key_time <= 0) {
		key_time = 200;
		audio_play_sound(snd04_44, 0, false, world.sound_vol);
		audio_play_sound(snd04_45, 0, false, world.sound_vol);
	
		if (world.items[3]) instance_create_depth(400, room_height + 300, -50, Boss04_58);
	
		key_scale = 2;
		defence_scale = 2;
		t_spd_scale = 2;
	
		if (attack < 8) {
			attack_scale = 2;
			attack = min(8, attack+1);
			t_spd += 1;
		} else t_spd += 2;
		defence += 5;
		objEndCredit.t_spd = t_spd;
	}
	
	patt = 0;
	alarm[0] = 50;
}