var temp;

a = 0;
if hp > shp {
    shp += min(ceil((hp - shp) / 5), 1);
} else if hp < shp {
    shp += max(floor((hp - shp) / 5), -1);
    a = 1;
}

if (armor > 0) {
	armor_alpha = min(1, armor_alpha + 0.05);
} else {
	armor_alpha = max(0, armor_alpha - 0.1);
}
if (mode == 0) armor_alpha2 = min(1, armor_alpha2+0.1);
else armor_alpha2 = max(0, armor_alpha2-0.1);

if (b > 0) {
	b -= 1;
	cx = random_range(-3, 3);
	cy = random_range(-3, 3);
} else {
	b = 0;
	cx = 0;
	cy = 0;
}

if (mode == 0) {
	mode_t = max(mode_t-1, 0);
	ix = 480 + 2/25*sqr(mode_t);
	x = ix;
	y = iy;
	
	if (instance_exists(player) and (player.x >= x-96 and player.x <= x+265+96
		and player.y >= y-15-96 and player.y <= y+15+96)) {
		image_alpha = max(image_alpha - 0.02, 0.5);
	} else image_alpha = min(image_alpha + 0.02, 1);
} else if (mode == 4) {
	if (min(yy1, yy2) >= room_height + 300) {
		mode = 0;
		mode_t = 100;
		
		ix = 880;
		iy = 64;
		x = 880;
		y = 64;
		vspeed = 0;
		gravity = 0;
		kill_block.kill = false;
	}
}

if hp <= 0 {
	if (global.practice >= 0) {
		with(player) { instance_destroy(); }
		with(world) {
			warn = 0;
			hp_before = -1;
			var_temp = 0;
			audio_stop_channel(1);
			audio_stop_channel(2);
			music_speed = 1;
			music_sp = 1;
			audio_resume_sound(Instance);
		}
		room_goto(Stage04Bs);
		exit;
	}
	
	instance_destroy();
    temp = instance_create_depth(0, 0, -100, light);
	temp.error = true;
	with(world) {audio_stop_channel(1); audio_stop_sound(Instance); Instance = -1;}
	audio_play_sound(sndBossHit, 0, false, world.sound_vol);
	
	instance_create_depth(400, 304, 2, Boss04_81);
	
	with(Boss04_56) {
		t_spd = 1;
		t2_spd = 1;
		number = 2;
		
		col[0] = 0.52;
		col[1] = 0.2;
		col[2] = 0.1;
		col2[0] = 0.0;
		col2[1] = 0.2;
		col2[2] = 0.9;
		col3[0] = 0.2;
		col3[1] = 0.9;
		col3[2] = 0.45;
	}
	
	with(Boss04_55) instance_destroy();
	with(player) {
		frozen = true; is_riding = true;
		x = 400; y = 364; xscale = 1;
		hspd = 0; vspd = 0; grav = 0;
	}
	with(MouseC) instance_destroy();
	temp = instance_create_depth(400, 384, -1, Boss04_55);
	temp.is_riding = true;
	temp.frozen = true;
	
	with(Boss04_57) instance_destroy();
	with(objHealthItem2) instance_destroy();
	with(objEndCredit) { dead = true; error = true; }
	
	with(Boss04_58) instance_destroy();
	with(Boss04_65) instance_destroy();
	with(Boss03_22) instance_destroy();
	with(Boss04_66) instance_destroy();
	with(Boss04_67) instance_destroy();
	with(Boss04_21) instance_destroy();
	with(Boss03_6) instance_destroy();
	with(Boss03_7) instance_destroy();
	
	with(surf_mobius) instance_destroy();
	with(Boss04_68) instance_destroy();
	with(Boss04_69) instance_destroy();
	with(Boss04_70) instance_destroy();
	with(Boss04_71) instance_destroy();
	with(Boss04_72) instance_destroy();
	with(Boss04_73) instance_destroy();
	
	with(Boss04_74) instance_destroy();
	with(Boss04_75) instance_destroy();
	with(Boss04_76) instance_destroy();
	with(Boss04_77) instance_destroy();
	with(Boss04_78) instance_destroy();
	
	with(Boss04_40) instance_destroy();
	with(Boss04_41) instance_destroy();
	with(Boss04_62) instance_destroy();
	with(Boss04_63) instance_destroy();
	with(Boss04_64) instance_destroy();
	with(Boss04_79) instance_destroy();
}