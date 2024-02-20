var i, temp, zx, xxx, yyy;

if (patt == 0) {
    image_speed = 0.5;
    if (room == Stage04Bs and Boss04_h.hp <= Boss04_h.hpm/2 and Boss04_h2.hp <= Boss04_h2.hpm/2) {
        trans = true;
        with(Boss04_31) active = false;
        alarm[2] = 30;
        exit;
    }
    if (instance_exists(player) and !instance_exists(Boss04_2) and !instance_exists(Boss04_3)) {
        patt = 8;
        zx = instance_create_depth(0, 0, 0, soundEx2);
        zx.Vol = 0; zx.ang = 0;
        zx.M1 = audio_play_sound(global.Silent, 10, true);
        zx.M2 = world.Instance;
        world.filePlaying = -1;
		world.Instance = zx.M1;
        with(Boss04_31) active = false;
        alarm[3] = 150;
        exit;
    }
    
    patt += 1;
    alarm[0] = 30;
} else if (patt == 1) {
    audio_play_sound(snd04_3, 0, false);
    
    xxx = xx - room_width/2;
    yyy = yy - room_height/2;
    instance_create_depth(room_width/2 + xxx*125/(zz+sqrt(xxx*xxx+yyy*yyy)/8+125),
        room_height/2 + yyy*125/(zz+sqrt(xxx*xxx+yyy*yyy)/8+125), -10, Boss04_21);
    
    if (!reverse_next) {
        patt += 1;
        with(Boss04_31) move = false;
        alarm[0] = 20;
    } else {
		num_reverse += 1;
        patt = 8;
        // with(Boss04_31) active = false;
        alarm[1] = 50;
    }
} else if (patt == 2) {
    rush += 1;
    zz_speed = 40/24;
    zz_gravity = -5/96;
    patt += 1;
    alarm[0] = 60;
} else if (patt == 3) {
    audio_play_sound(snd04_4, 0, false);
    patt += 1;
    alarm[0] = 90;
} else if (patt == 4) {
    for(i=0; i<12; i+=1) {
        if (yy >= room_height/2) {
            temp = instance_create_layer(random_range(max(100, xx-150), min(room_width-100, xx+150)),
                random_range(yy-100, min(room_height-100, yy)), "Player", Boss03_6);
            temp.vspeed = random_range(-5, -2);
            temp.gravity_direction = 270;
        } else {
            temp = instance_create_layer(random_range(max(100, xx-150), min(room_width-100, xx+150)),
                random_range(max(100, yy), yy+100), "Player", Boss03_6);
            temp.vspeed = random_range(2, 5);
            temp.gravity_direction = 90;
        }
        temp.hspeed = random_range(-4, 4);
        temp.gravity = 0.5;
    }
    
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 20;
    zz_gravity = 0;
    patt += 1;
    alarm[0] = 100;
} else if (patt == 5) {
    xx = room_width/2;
    yy = sign(yy-room_height/2)*room_height*5;
    zz = 240;
    zz_speed = 0;
    image_index = 0;
    image_angle = 0;
    patt += 1;
    
    if (instance_exists(player) and !instance_exists(Boss04_2) and !instance_exists(Boss04_3)) {
        patt = 8;
        zx = instance_create_depth(0, 0, 0, soundEx2);
        zx.Vol = 0; zx.ang = 0;
        zx.M1 = audio_play_sound(global.Silent, 10, true);
        zx.M2 = world.Instance;
        world.filePlaying = -1;
		world.Instance = zx.M1;
        alarm[3] = 150;
        exit;
    }
    alarm[0] = 150;
} else if (patt == 6) {
    reverse_next = !((rush == 0) or (rush == 1 and choose(0, 1)));
	if (room != Stage04Bs) {
		if (num_reverse == 0) {
			if (num1 > 0) { reverse_next = false; num1 -= 1; }
			else { reverse_next = true; }
		} else if (num_reverse == 1) {
			if (num2 > 0) { reverse_next = false; num2 -= 1; }
			else if (num2 == 0) { reverse_next = true; num2 -= 1; }
		}
	}
    patt = 0;
    with(Boss04_31) move = true;
    
    if (instance_exists(player) and !instance_exists(Boss04_2) and !instance_exists(Boss04_3)) {
        patt = 8;
        zx = instance_create_depth(0, 0, 0, soundEx2);
        zx.Vol = 0; zx.ang = 0;
        zx.M1 = audio_play_sound(global.Silent, 10, true);
        zx.M2 = world.Instance;
        world.filePlaying = -1;
		world.Instance = zx.M1;
        alarm[3] = 150;
        exit;
    }
    if (instance_exists(player)) alarm[0] = 250;
}