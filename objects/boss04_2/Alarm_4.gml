// down shoot

var temp;

if (patt == 0) {
    xx = random_range(192-32, 192+32);
    yy = random_range(288-32, 288+32);
    angle = 90 - 45;
    if (instance_exists(player)) {
        if (player.Gravity) {
            yy -= 100; angle = 90 - 45;
        } else {
            yy += 100; angle = 270 - 45;
        }
    }
    type = 0;
    patt += 1;
    alarm[4] = 50;
} else if (patt == 1) {
    pos_time = 180;
    angle_time = 0;
    type = 4;
    patt += 1;
    alarm[4] = 3;
} else if (patt <= 30) {
    temp = instance_create_depth(x, y, -1, Boss03_72);
    temp.sprite_index = sprBullet;
    temp.scale = 6;
    temp.image_speed = 0;
    if (instance_exists(player)) {
        if (player.Gravity)
            temp.direction = random_range(270-45, 270+45);
        else
            temp.direction = random_range(90-45, 90+45);
    } else temp.direction = random_range(270-45, 270+45);
    temp.speed = 8;
    audio_play_sound(sndShoot, 0, false);
    
    patt += 1;
    alarm[4] = 5;
} else if (patt == 31) {
    pos_time = 0;
    angle_time = 0;
    angle = 0;
    xx = random_range(192-32, 192+32);
    yy = random_range(288-32, 288+32);
    
    patt += 1;
    type = 0;
    alarm[4] = 50;
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
    ds_list_delete(l, 4);
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