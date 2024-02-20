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