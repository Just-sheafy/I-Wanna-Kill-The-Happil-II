if a < 5 {
    if image_alpha < 1 {image_alpha += 0.2;}
    if a == 0 {Instance = audio_play_sound(global.Clear, 10, false, world.music_vol);}
    a += 1;
    alarm[0] = 18;
} else if a == 5 {
    a += 1;
    alarm[0] = 80;
} else if a == 6 {
    var zx = instance_create_depth(400, 240, -16, objCl1);
    zx.image_index = c-1;
    instance_create_depth(400, 304, -15, objCl3);
    a += 1;
    alarm[0] = 55;
} else if a == 7 {
    instance_create_depth(400, 368, -16, objCl2);
    a += 1;
    alarm[0] = 25;
} else if a == 8 {
    switch(room) {
        case Stage01Bs3: world.achieve[15] = 1;
                        break;
        case Stage02Bs5: world.achieve[22] = 1;
                        break;
        case Stage03Bs5: world.achieve[30] = 1;
                        break;
        case Stage04Bs: world.achieve[38] = 1;
                        break;
    }
    a += 1;
    alarm[0] = 100;
} else if a == 9 {
	if (!instance_exists(player)) exit;
    switch(room) {
        case Stage01Bs3: room_goto(Stage02A);
                        player.x = 752;
                        player.y = 272;
                        break;
        case Stage02Bs5: room_goto(Stage03A);
                        player.x = 96;
                        player.y = 512;
                        break;
        case Stage03Bs5: room_goto(Stage04A);
                        player.x = 32;
                        player.y = 416;
                        break;
    }
}