// left rush
var temp, zx, l;

if (patt == 0) {
    angle = 180+45;
    type = 0;
    zx = instance_create_depth(x-32, y, 0, Boss01_23);
    zx.sid = id;
    zx.alarm[0] = 50;
    
    patt += 1;
    alarm[2] = 60;
} else if (patt == 1) {
    hspeed = -16;
    temp = instance_create_depth(x, y, -2, Boss04_7);
    temp.image_xscale *= -1;
    effect_id = instance_create_depth(x, y, -3, Boss04_8);
    effect_id.image_xscale *= -1;
    effect_id.tracking_obj = id;
    
    audio_play_sound(snd04_10, 0, false, world.sound_vol);
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 10;
    
    type = -1;
    patt += 1;
    alarm[2] = 80;
} else if (patt == 2) {
    x = -120;
    if (instance_exists(player)) y = player.y;
    else y = room_height/2;
    hspeed = 5;
	gravity = 0.3;
	gravity_direction = 0;
    image_angle = 360+45;
    angle = 360+45;
    effect_id.image_xscale *= -1;
    
    audio_play_sound(snd04_11, 0, false, world.sound_vol);
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 10;
    
    patt += 2;
    alarm[2] = 24;
} else if (patt <= 7) {
    if (y >= room_height/2) {
        temp = instance_create_depth(x, y-32, 0, Boss03_6);
        temp.vspeed = random_range(-5, -2);
        temp.gravity_direction = 270;
    } else {
        temp = instance_create_depth(x, y+32, 0, Boss03_6);
        temp.vspeed = random_range(2, 5);
        temp.gravity_direction = 90;
    }
    temp.hspeed = random_range(-2, 2);
    temp.gravity = 0.5;
    
    patt += 1;
    alarm[2] = 10;
} else if (patt == 8) {
    patt += 1;
    alarm[2] = 76;
} else if (patt == 9) {
    hspeed = 0; gravity = 0; x = room_width+100; y = 288;
    if (effect_id != -1) {
        with(effect_id) instance_destroy();
    }
    
    angle = 0;
    xx = random_range(640-32, 640+32);
    yy = random_range(288-32, 288+32);
    
    type = 0;
    patt += 1;
    alarm[2] = 50;
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
    ds_list_delete(l, 2);
    if !can_koopa or (instance_exists(Boss02_8) or instance_exists(Boss04_6)) ds_list_delete_element(l, 1);
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