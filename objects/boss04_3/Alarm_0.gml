// guided TNT
var temp, l;

if (patt == 0) {
    xx = x;
    yy = y;
    angle = 270 + 45;
    if (instance_exists(player)) {
        if (player.y >= room_height / 2) angle = 270 + 45;
        else angle = 90 + 45;
    }
    type = 0;
    patt += 1;
    alarm[0] = 50;
} else if (patt <= 6) {
    xx = random_range(180, room_width-180);
    yy = random_range(288-80, 288+80);
    angle = point_direction(xx, yy, 0, 0) + 45;
    if (instance_exists(player)) {
        angle = point_direction(xx, yy, player.x, player.y) + 45;
    }
    
    if (room == Stage04Bs)
        temp = instance_create_depth(x, y, -1, Boss04_4);
    else
        temp = instance_create_depth(x, y, -1, Boss04_22);
    temp.image_xscale = 0;
    temp.image_yscale = 0;
    if (instance_exists(player)) {
        temp.speed = point_distance(x, y, player.x, player.y)/100;
        temp.direction = point_direction(x, y, player.x, player.y);
        if (player.y >= room_height/2) {
            temp.gravity_direction = 270;
        } else {
            temp.gravity_direction = 90;
        }
    }
    
    patt += 1;
    alarm[0] = 55;
} else if (patt == 7) {
    angle = 0;
    xx = random_range(640-32, 640+32);
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
    if (instance_exists(Boss02_8)) ds_list_delete_element(l, 1);
    if (Boss04_1.reverse_next) {
        ds_list_delete_element(l, 0);
        ds_list_delete_element(l, 4);
        ds_list_delete_element(l, 6);
    }
    if (!can_thwomp or (instance_exists(Boss04_h) and Boss04_h2.hp < Boss04_h.hp)) ds_list_delete_element(l, 6);
    
    ds_list_shuffle(l);
    if (instance_exists(player)) alarm[ds_list_find_value(l, 0)] = irandom_range(50, 100);
    if (ds_list_find_value(l, 0) == 6) {
        with(Boss04_2) can_thwomp = false;
    }
    
    ds_list_destroy(l);
}