// hamjung

var temp, l;

if (patt <= 1) {
    temp = instance_create_depth(x+24, y+24, -9, Boss04_16);
    temp.gravity = 1;
    if (patt == 1) temp.rot = 1;
    
    if (room == Stage04Bs) {patt += 2; alarm[5] = 120;}
    else {patt += 1; alarm[5] = 60;}
} else if (patt == 2) {
    angle = 0;
    xx = random_range(640-32, 640+32);
    yy = random_range(288-32, 288+32);
    type = 0;
    
    patt += 1;
    alarm[5] = 50;
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
    ds_list_delete(l, 5);
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