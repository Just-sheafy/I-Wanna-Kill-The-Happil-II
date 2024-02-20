if (instance_exists(player)) {
    with(player) {
        if ((Gravity and place_meeting(x, y+1, block)) or (!Gravity and place_meeting(x, y-1, block)))
            Boss04_1.shell_count = 0;
    }
    if (shell_count >= 8 and !world.achieve[40])
        world.achieve[40] = true;
}

if (alarm[0] > 120 and instance_exists(player) and !instance_exists(Boss04_2) and !instance_exists(Boss04_3)) {
        patt = 8;
        var zx = instance_create_depth(0, 0, 0, soundEx2);
        zx.Vol = 0; zx.ang = 0;
        zx.M1 = audio_play_sound(global.Silent, 10, true);
        zx.M2 = world.Instance;
        world.filePlaying = -1;
		world.Instance = zx.M1;
        alarm[0] = 0;
        alarm[3] = 100;
        exit;
    }

if (!trans) {
    if (instance_exists(player) and (patt <= 3 or patt == 7)) {
        if (xx > player.x+10) xx -= 0.5;
        if (xx < player.x-10) xx += 0.5;
        if (yy > player.y+10) yy -= 0.5;
        if (yy < player.y-10) yy += 0.5;
    }
    
    zz_speed += zz_gravity;
    zz += zz_speed;
    if (zz < -100) zz = -100;
    
    if (patt == 3 or patt == 4 or patt == 5) image_angle += 8*zz_speed;
    if (patt == 5) {
        if (yy >= room_height/2) yy += 16;
        else yy -= 16;
    } else if (patt == 6) {
        yy += floor((room_height/2-yy)/20);
    } else if (patt >= 8) {
        xx += round((room_width/2-xx)/10)/2;
        yy += round((room_height/2-yy)/10)/2;
    }
} else {
    xx += round((room_width/2-xx)/10)/2;
    yy += round((room_height/2-yy)/10)/2;
}

x = xx;
y = yy;
if (!dead) depth = clamp(floor(zz/2), -10, 10);
else depth = -10;