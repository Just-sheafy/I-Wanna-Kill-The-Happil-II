// fixed koopa
var temp, zx, l;

if (patt == 0) {
    xx = room_width/2+50;
    yy = room_height/2;
    angle = 90 + 45;
    if (instance_exists(player)) {
        if (player.Gravity) angle = 90 + 45;
        else angle = 270 + 45;
    }
    type = 1;
    patt += 1;
    alarm[1] = 50;
} else if (patt <= 2) {
    temp = instance_create_depth(x, y, -1, Boss02_8);
    temp.sprite_index = sprBoss04_20;
    temp.image_speed = 2/5;
    temp.alarm[0] = irandom_range(450, 550);
    temp.vspeed = -4;
    temp.gravity_direction = 270;
    if (instance_exists(player)) {
        if (!player.Gravity) {temp.vspeed = 4; temp.gravity_direction = 90; temp.image_angle = 180;}
    }
    audio_play_sound(snd02_2, 0, false, world.sound_vol);
    
    zx = instance_create_depth(0, 0, 0, view_an2);
    zx.asdf = 8;
    
    if (room == Stage04Bs) {patt += 2; alarm[1] = 80;}
    else {patt += 1; if (patt == 2) {temp.hspeed = -abs(temp.hspeed); alarm[1] = 15;}
        else {temp.hspeed = abs(temp.hspeed); alarm[1] = 65;}}
} else if (patt == 3) {
    angle = 0;
    xx = random_range(640-32, 640+32);
    yy = random_range(288-32, 288+32);
    
    patt += 1;
    alarm[1] = 50;
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
    ds_list_delete(l, 1);
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
			alarm[ds_list_find_value(l, 0)] = irandom_range(50, 100) + time_delay;
			time_delay = 0;
			if (ds_list_find_index(l, 6) != -1) num_thwomp += 1;
			if (ds_list_find_value(l, 0) == 6) {
				with(Boss04_2) can_thwomp = false;
				num_thwomp -= NUM_thwomp;
			}
		}
	}
    
    ds_list_destroy(l);
}