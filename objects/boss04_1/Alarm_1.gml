var temp, zx, num, l;

if (instance_exists(player) and !instance_exists(Boss04_2) and !instance_exists(Boss04_3)) {
    with(Boss04_18) but_recover = true;
    
    patt = 8;
    zx = instance_create_depth(0, 0, 0, soundEx2);
    zx.Vol = 0; zx.ang = 0;
    zx.M1 = audio_play_sound(global.Silent, 10, true, world.music_vol);
    zx.M2 = world.Instance;
    world.filePlaying = -1;
	world.Instance = zx.M1;
    with(Boss04_31) active = false;
    alarm[3] = 150;
    exit;
}

if (patt == 8) {
    audio_play_sound(snd04_23, 0, false, world.sound_vol);
    temp = instance_create_depth(0, 0, -100, Boss04_18);
    temp.alarm[0] = 150;
    temp = instance_create_depth(0, 0, 0, view_an1);
    temp.asdf = 150;
    
    patt += 1;
    alarm[1] = 50;
} else if (patt == 9) {
    temp = instance_create_depth(0, 0, 0, view_an1);
    temp.asdf = 50;
    
    patt += 1;
    alarm[1] = 50;
} else if (patt == 10) {
    temp = instance_create_depth(0, 0, 0, view_an1);
    temp.asdf = 50;
    temp = instance_create_depth(0, 0, 0, view_an1);
    temp.asdf = 50;
    
    patt += 1;
    if (instance_exists(player)) alarm[1] = 50;
} else {
    with(player) {
        flip_grav();
		reset_jumps();
    }
    
    with(Boss04_4) instance_destroy();
    with(Boss04_5) instance_destroy();
    with(Boss02_8) instance_destroy();
    with(Boss04_6) instance_destroy();
    with(Boss04_9) {if (image_alpha == 1) instance_destroy();}
    with(Boss03_72) instance_destroy();
    with(Boss04_10) instance_destroy();
    with(Boss04_11) instance_destroy();
    with(Boss04_12) instance_destroy();
    with(Boss04_13) {trig = false; instance_destroy();}
    with(Boss04_14) instance_destroy();
    with(Boss04_15) instance_destroy();
    with(Boss04_16) {
        if (instance_exists(spike1)) {with(spike1) instance_destroy();}
        if (instance_exists(spike2)) {with(spike2) instance_destroy();}
        if (instance_exists(spike3)) {with(spike3) instance_destroy();}
        if (instance_exists(spike4)) {with(spike4) instance_destroy();}
        instance_destroy();
    }
    
    with(Boss04_17) {
        recover = 0; image_alpha = 0;
    }
    
    image_index = 0;
    with(Boss04_h) yy = room_height - yy;
    with(Boss04_h2) yy = room_height - yy;
    with(Boss04_22) instance_destroy();
    with(Boss04_23) instance_destroy();
    with(Boss04_24) instance_destroy();
    
    l = ds_list_create();
    ds_list_add(l, 0); ds_list_add(l, 1); ds_list_add(l, 2);
    ds_list_add(l, 4); ds_list_add(l, 5); // ds_list_add(l, 3);
    if (ds_list_size(back_list) < ds_list_size(l)) {
        for(i=0; i<ds_list_size(back_list); i+=1) {
            ds_list_delete_element(l, ds_list_find_value(back_list, i));
        }
    } else {
        ds_list_delete_element(l, ds_list_find_value(back_list, ds_list_size(back_list)-1));
        ds_list_clear(back_list);
    }
    
    ds_list_shuffle(l);
    num = ds_list_find_value(l, 0);
    ds_list_add(back_list, num);
    ds_list_destroy(l);
    
    // change background
	for(i=2; i<=8; i+=1) {
		if (layer_exists("Background" + string(i)))
			layer_set_visible(layer_get_id("Background" + string(i)), false);
	}
	if (layer_exists("Tiles"))
		layer_set_visible(layer_get_id("Tiles"), false);
	if (layer_exists("Tiles2"))
		layer_set_visible(layer_get_id("Tiles2"), false);
    with(object666) visible = false;
    with(Hamjung02Bs1) instance_destroy();
    with(Hamjung02Bs2) instance_destroy();
    with(Hamjung04Bs1) instance_destroy();
    with(Hamjung04Bs2) instance_destroy();
    with(Hamjung04Bs3) instance_destroy();
    with(Hamjung04Bs4) instance_destroy();
    
    if (num == 0) {
		if (layer_exists("Background2"))
			layer_set_visible(layer_get_id("Background2"), true);
        with(object666) visible = true;
    } else if (num == 1) {
		if (layer_exists("Background3"))
			layer_set_visible(layer_get_id("Background3"), true);
		if (layer_exists("Tiles"))
			layer_set_visible(layer_get_id("Tiles"), true);
		if (layer_exists("Tiles2"))
			layer_set_visible(layer_get_id("Tiles2"), true);
    } else if (num == 2) {
		if (layer_exists("Background5"))
			layer_set_visible(layer_get_id("Background5"), true);
		if (layer_exists("Background6"))
			layer_set_visible(layer_get_id("Background6"), true);
        instance_create_depth(0, 0, 0, Hamjung02Bs1);
    } else if (num == 4) {
        instance_create_depth(0, 0, 0, Hamjung04Bs3);
    } else if (num == 5) {
        if (room == Stage04Bs) {
			if (layer_exists("Background4"))
				layer_set_visible(layer_get_id("Background4"), true);
		} else {
			if (layer_exists("Background4"))
				layer_set_visible(layer_get_id("Background4"), true);
			if (layer_exists("Background7"))
				layer_set_visible(layer_get_id("Background7"), true);
			if (layer_exists("Background8"))
				layer_set_visible(layer_get_id("Background8"), true);
        }
    }
    
    // change blocks
    with(block) {
        image_index = 0; image_alpha = 1;
    }
    if (num == 0) {
        with(block) {
            sprite_index = block04Bs1;
            if (x < 384) image_index = 0;
            else if (x > 384) image_index = 1;
            else image_index = 2;
        }
    } else if (num == 1) {
        with(block) {
            sprite_index = block04Bs2;
            image_index = 1;
            if !place_meeting(x, y-16, block){
                image_index = 0;
            }
        }
    } else if (num == 2) {
        with(block) sprite_index = block02Bs;
    } else if (num == 3) {
        with(block) sprite_index = maskBlock;
    } else if (num == 4) {
        with(block) sprite_index = block04Bs3;
    } else if (num == 5) {
        if (room == Stage04Bs) {
            with(block) {
                sprite_index = block04Bs4;
                image_index = 0;
                if (y == 0) image_index = 1;
                if (place_meeting(x, y-16, block) or place_meeting(x, y+16, block)) {
                    image_index = 2;
                }
            }
        } else {
            with(block) sprite_index = block04Bs5;
        }
    }
    
    audio_play_sound(sndBarrel, 0, false, world.sound_vol);
    instance_create_depth(0, 0, -100, light);
    
    patt = 0;
    rush = 0;
    reverse_next = false;
    with(Boss04_31) { active = true; t = 0; tt = 0; }
    if (num == 0 or num == 1) { with(Boss04_31) phase = 0; }
    else if (num == 2 or num == 4) { with(Boss04_31) phase = 1; }
    else { with(Boss04_31) phase = 2; }
    if (instance_exists(player)) alarm[0] = 500;
}