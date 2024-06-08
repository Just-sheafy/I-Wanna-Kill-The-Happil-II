if (!nothit && (!canhit || !other.canhit)) exit;

var i, temp, l = ds_list_create();

if (!nothit) audio_play_sound(sndSr01_2, 0, false, world.sound_vol);
with(Boss01Sr_h) hp -= 10;

if ((global.practice == 1 && Boss01Sr_h.hp <= 30)
	|| (global.practice == 2 && Boss01Sr_h.hp <= 10)
	|| (global.practice == 3 && Boss01Sr_h.hp <= 0)) {
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
	room_goto(Stage01Sr);
	exit;
}

if (!nothit && Boss01Sr_h.hp == 10) {
	with(playerHealth) {
		if (hp < hpm) {
			var zx = instance_create_layer(400, 304, "Player", objHealthItem2);
			zx.time = 250;
		}
	}
}

with(Boss01Sr_1) {
	AIM += 1; prob = 1-10/(3*AIM);
	if (AIM == 8) NUM_gen = 2.5;
	else if (AIM == 9) prob = 2/3;
	else if (AIM == 10) { AIM += 1; prob = 3/4; NUM_gen = 3; }
}
if (Boss01Sr_1.AIM == 8) bounce_num = 2;

if (!nothit) {
	with(other) {
		if (!dis) {
			var temp = instance_create_depth(x, y, -50, surf_ripple);
			temp.radius_max = 400;
			dis = true;
			speed = 0;
			gravity = 0;
		}
	}
}

for(i=0; i<6; i+=1) {
	if (!pattern[i]) ds_list_add(l, i);
}

if (ds_list_size(l) > 0) {
	if (ds_list_size(l) >= 2) ds_list_delete_element(l, 5);
	if (ds_list_size(l) >= 5) ds_list_delete_element(l, 1);
	if (ds_list_size(l) >= 3) ds_list_delete_element(l, 3);
	ds_list_shuffle(l);
	
	temp = ds_list_find_value(l, 0);
	pattern[temp] = true;
	
	if (temp == 5) {
		with(Boss01Sr_1) {
			var i, j, __scale = 20/32, __width = 64*__scale, __height = 64*__scale, __round = 2;
			
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_set_font(fnt_achievements);
			
			surf_back = surface_create(200, 200);
			
			surface_set_target(surf_back);
			
			draw_set_color(make_color_rgb(166, 149, 129));
			draw_roundrect_ext(100-__width*COLUMN/2-__round, 100-__height*ROW/2-__round,
				100+__width*COLUMN/2+__round, 100+__height*ROW/2+__round, __round*2, __round*2, false);
			
			for(i=0; i<COLUMN; i+=1) {
				for(j=0; j<ROW; j+=1) {
					if (number[i, j] <= -1) continue;
					draw_set_color(col[0]);
					draw_roundrect_ext(100+__width*(-COLUMN/2+i)+__round, 100+__height*(-ROW/2+j)+__round,
						100+__width*(-COLUMN/2+i+1)-__round, 100+__height*(-ROW/2+j+1)-__round,
						__round, __round, false);
				}
			}
			
			surface_reset_target();
			
			
			mode = 1;
			ROW = 5;
			COLUMN = 5;
			for(i=0; i<COLUMN; i+=1) {
				for(j=0; j<ROW; j+=1) {
					number[i, j] = 0; // -1: empty space, 0: space, 0.5: locked
					number_changed[i, j] = 0; // 0: no change, 1: generated, 2: combined, 3: changed
					if (i < 4 && j < 4 && surface_exists(surf[i, j]))
						surface_free(surf[i, j]);
					surf[i, j] = -1;
				}
			}
			
			number[0, 3] = -1;
			number[0, 4] = -1;
			number[1, 4] = -1;
			number[3, 0] = -1;
			number[4, 0] = -1;
			number[4, 1] = -1;
			
			generate(prob, NUM_gen);
			generate(prob, NUM_gen);
		}
	}
}

ds_list_destroy(l);

if (!nothit) {
	canhit = false;
	alarm[11] = 50;
}