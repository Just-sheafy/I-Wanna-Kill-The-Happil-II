// thwomp

var zx, temp, l;

if (patt == 0) {
    angle = 45;
    yy = 160;
    if (instance_exists(player) and !player.Gravity) {
        angle = 180 + 45; yy = 448;
    }
    
    zx = instance_create_depth(x-32, y, 0, Boss01_23);
    zx.sid = id;
    zx.alarm[0] = 50;
    
    type = 6;
    patt += 1;
    alarm[6] = 50;
} else if (patt == 1) {
    type = -1;
    patt += 1;
    alarm[6] = 25;
} else if (patt == 2) {
    temp = instance_create_depth(x, y, -2, Boss04_7);
    effect_id = instance_create_depth(x, y, -3, Boss04_8);
    effect_id.tracking_obj = id;
    
    if (y <= room_height/2) {
        temp.image_angle = 270;
        effect_id.image_angle = 270;
        vspeed = 16;
    } else {
        temp.image_angle = 90;
        effect_id.image_angle = 90;
        vspeed = -16;
    }
    
    shield_id.image_alpha = max(0, shield_id.image_alpha-0.6);
    shield_id.recover = 0;
    
    audio_play_sound(snd04_10, 0, false, world.sound_vol);
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 10;
    
    patt += 1;
    alarm[6] = 21;
} else if (patt == 3) {
    vspeed = 0;
    with(effect_id) instance_destroy();
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 10;
    with(Boss04_3) can_thwomp = true;
    
    temp = instance_create_depth(x, y, 0, Boss04_26);
    temp.hspeed = 8;
    temp = instance_create_depth(x, y, 0, Boss04_26);
    temp.hspeed = -8;
    
    audio_play_sound(snd01_6, 0, false, world.sound_vol);
    patt += 1;
    alarm[6] = 80;
} else if (patt == 4) {
    angle = 0;
    xx = random_range(192-32, 192+32);
    yy = random_range(288-32, 288+32);
    
    patt += 1;
    type = 0;
    alarm[6] = 50;
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
    ds_list_delete(l, 6);
    if (!can_koopa or instance_exists(Boss02_8) or instance_exists(Boss04_6)) ds_list_delete_element(l, 1);
    if (Boss04_1.rush_next) ds_list_delete_element(l, 2);
    if (Boss04_1.reverse_next) {
        ds_list_delete_element(l, 0);
        ds_list_delete_element(l, 4);
        ds_list_delete_element(l, 6);
    }
    
    ds_list_shuffle(l);
    if (instance_exists(player)) alarm[ds_list_find_value(l, 0)] = irandom_range(50, 100);
    if (ds_list_find_value(l, 0) == 1) {
		with(Boss04_3) can_koopa = false;
	} else if (ds_list_find_value(l, 0) == 6) {
        with(Boss04_3) can_thwomp = false;
    }
    
	can_koopa = true;
    ds_list_destroy(l);
}