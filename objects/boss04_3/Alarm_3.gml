// dispenser

var temp, t, l;

if (patt == 0) {
    angle = 90 + 45;
    if (instance_exists(player)) {
        if (player.Gravity) angle = 90 + 45;
        else angle = 270 + 45;
    }
    type = 0;
    patt += 1;
    alarm[3] = 50;
} else if (patt <= 5) {
    t = choose(sprBoss04_10, sprBoss04_11, sprBoss04_13);
    temp = instance_create_depth(x, y, -2, Boss04_12);
    temp.sprite_index = t;
    temp.vspeed = -16;
    if (instance_exists(player)) {
        if (player.Gravity) temp.vspeed = -16;
        else temp.vspeed = 16;
    }
    
    if (instance_exists(player)) {
        if (player.Gravity) {
            temp = instance_create_depth(random_range(64, room_width-64), (-120-45*patt)*(3+2*(t == sprBoss04_13))/3, -7, Boss04_11);
            temp.vspeed = 3+2*(t == sprBoss04_13);
        } else {
            temp = instance_create_depth(random_range(64, room_width-64), room_height+(120+45*patt)*(3+2*(t == sprBoss04_13))/3, -7, Boss04_11);
            temp.vspeed = -3-2*(t == sprBoss04_13);
            temp.image_yscale = -1;
        }
    } else {
        temp = instance_create_depth(random_range(64, room_width-64), (-120-45*patt)*(3+2*(t == sprBoss04_13))/3, -7, Boss04_11);
        temp.vspeed = 3+2*(t == sprBoss04_13);
    }
    temp.sprite_index = t;
    temp.alarm[0] = 40+15*patt;
    temp.alarm[1] = 40+15*patt+irandom_range(60, 100)*3/(3+2*(t == sprBoss04_13));
    
    audio_play_sound(snd04_14, 0, false, world.sound_vol);
    patt += 1;
    type = -1;
    alarm[3] = 15;
} else if (patt == 6) {
    angle = 0;
    xx = random_range(640-32, 640+32);
    yy = random_range(288-32, 288+32);
    type = 0;
    
    patt += 1;
    alarm[3] = 150;
} else {
    patt = 0;
    type = -1;
    
    l = ds_list_create();
    ds_list_add(l, 0);
    ds_list_add(l, 1);
    ds_list_add(l, 2);
    ds_list_add(l, 3);
    ds_list_add(l, 4);
    ds_list_add(l, 5);
    ds_list_add(l, 6);
    ds_list_delete(l, 3);
    if (!can_koopa or instance_exists(Boss02_8) or instance_exists(Boss04_6)) ds_list_delete_element(l, 1);
    if (Boss04_1.rush_next) ds_list_delete_element(l, 2);
    if (Boss04_1.reverse_next) {
        ds_list_delete_element(l, 0);
        ds_list_delete_element(l, 4);
        ds_list_delete_element(l, 6);
    }
    if (!can_thwomp) ds_list_delete_element(l, 6);
    
    ds_list_shuffle(l);
    if (instance_exists(player)) {
		if (num_thwomp >= NUM_thwomp/2 and ds_list_find_index(l, 6) != -1) {
			alarm[6] = irandom_range(50, 100);
			num_thwomp -= NUM_thwomp;
			with(Boss04_2) can_thwomp = false;
		} else {
			alarm[ds_list_find_value(l, 0)] = irandom_range(50, 100);
			if (ds_list_find_index(l, 6) != -1) num_thwomp += 1;
			if (ds_list_find_value(l, 0) == 1) {
				with(Boss04_2) can_koopa = false;
			} else if (ds_list_find_value(l, 0) == 6) {
				with(Boss04_2) can_thwomp = false;
				num_thwomp -= NUM_thwomp;
			}
		}
	}
    
	can_koopa = true;
    ds_list_destroy(l);
}