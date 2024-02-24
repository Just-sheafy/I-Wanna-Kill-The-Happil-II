// fixed TNT

var temp, l;

if (patt == 0) {
    xx = x;
    yy = y;
    angle = 270 - 45;
    if (instance_exists(player)) {
        if (player.y >= room_height / 2) angle = 270 - 45;
        else angle = 90 - 45;
    }
    type = 0;
    patt += 1;
    alarm[0] = 50;
} else if (patt <= 8) {
    xx = random_range(180, room_width-180);
    yy = random_range(288-80, 288+80);
    angle = random_range(180, 270);
    if (instance_exists(player)) {
        if (player.y >= room_height / 2) angle = random_range(180, 270);
        else angle = random_range(0, 90);
    }
    
    if (room == Stage04Bs)
        temp = instance_create_depth(x, y, -1, Boss04_4);
    else
        temp = instance_create_depth(x, y, -1, Boss04_22);
    temp.image_xscale = 0;
    temp.image_yscale = 0;
    temp.hspeed = random_range(-3, 3);
    if (instance_exists(player)) {
        if (player.y >= room_height/2) {
            temp.vspeed = random_range(-10, -5);
            temp.gravity_direction = 270;
        } else {
            temp.vspeed = random_range(5, 10);
            temp.gravity_direction = 90;
        }
    }
    
    patt += 1;
    alarm[0] = 35;
} else if (patt == 9) {
    angle = 0;
    xx = random_range(192-32, 192+32);
    yy = random_range(288-32, 288+32);
    
    patt += 1;
    alarm[0] = 50;
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
    ds_list_delete(l, 0);
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
			with(Boss04_3) can_thwomp = false;
		} else {
			alarm[ds_list_find_value(l, 0)] = irandom_range(50, 100);
			if (ds_list_find_index(l, 6) != -1) num_thwomp += 1;
			if (ds_list_find_value(l, 0) == 1) {
				with(Boss04_3) can_koopa = false;
			} else if (ds_list_find_value(l, 0) == 6) {
				with(Boss04_3) can_thwomp = false;
				num_thwomp -= NUM_thwomp;
			}
		}
	}
    
	can_koopa = true;
    ds_list_destroy(l);
}