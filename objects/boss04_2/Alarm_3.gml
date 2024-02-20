// knife boomerang

var temp, l;

if (patt == 0) {
    temp = instance_create_depth(x-24, y+24, -2, Boss04_9);
    temp.image_alpha = 0.5;
    temp.sid = id;
    temp.order = 0;
    
    temp = instance_create_depth(x-24, y+24, -2, Boss04_9);
    temp.image_alpha = 0.5;
    temp.sid = id;
    temp.dir = 120;
    temp.order = 1;
    
    temp = instance_create_depth(x-24, y+24, -2, Boss04_9);
    temp.image_alpha = 0.5;
    temp.sid = id;
    temp.dir = 240;
    temp.order = 2;
    
    angle = 0;
    if (instance_exists(player)) {
        if (player.x <= 400) {
            xx = room_width - xx;
            with(Boss04_9) {
                dir_sp *= -1;
                if (order != 0) order = 3-order;
            }
        }
    }
    
    patt += 1;
    type = 0;
    
    alarm[3] = 30;
} else if (patt == 1) {
    patt += 1;
    type = 3;
    
    alarm[3] = 45;
} else if (patt <= 4) {
    with(Boss04_9) {
        if (order == Boss04_2.patt-2) Boss04_2.temp_id = id;
    }
	temp = temp_id;
	temp_id = -1;
	
	if (temp != -1 and instance_exists(temp)) {
	    temp.image_alpha = 1;
	    temp.patt = 1;
	    temp.speed = 15;
	    temp.gravity = 1.5;
	    if (instance_exists(player)) {
	        temp.direction = point_direction(temp.x, temp.y, player.x, player.y)+180;
	        temp.gravity_direction = point_direction(temp.x, temp.y, player.x, player.y);
	        if (!player.Gravity) temp.image_angle = 90;
	    } else {
	        temp.direction = point_direction(temp.x, temp.y, 0, 0)+180;
	        temp.gravity_direction = point_direction(temp.x, temp.y, 0, 0);
	    }
	}
    
    if (patt < 4) audio_play_sound(snd04_12, 0, false);
    else audio_play_sound(snd04_13, 0, false);
    patt += 1;
    alarm[3] = 25;
} else if (patt == 5) {
    angle = 0;
    xx = random_range(192-32, 192+32);
    yy = random_range(288-32, 288+32);
    
    patt += 1;
    type = 0;
    alarm[3] = 50;
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
    if (instance_exists(Boss04_6)) ds_list_delete_element(l, 1);
    if (Boss04_1.reverse_next) {
        ds_list_delete_element(l, 0);
        ds_list_delete_element(l, 4);
        ds_list_delete_element(l, 6);
    }
    if (!can_thwomp or (instance_exists(Boss04_h2) and Boss04_h.hp < Boss04_h2.hp)) ds_list_delete_element(l, 6);
    
    ds_list_shuffle(l);
    if (instance_exists(player)) alarm[ds_list_find_value(l, 0)] = irandom_range(50, 100);
    if (ds_list_find_value(l, 0) == 6) {
        with(Boss04_3) can_thwomp = false;
    }
    
    ds_list_destroy(l);
}