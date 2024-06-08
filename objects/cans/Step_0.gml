if instance_exists(player) {
    image_alpha = random_range(0.5, 0.8);
    if instance_exists(SavePoint) {sp1 = instance_nearest(x, y, SavePoint);}
    if instance_exists(SavePoint2) {sp2 = instance_nearest(x, y, SavePoint2);}
    if (sp1 != 0 and instance_exists(sp1) and point_distance(player.x, player.y, sp1.x+16, sp1.y+16) < 64) or
		(sp2 != 0 and instance_exists(sp2) and point_distance(player.x, player.y, sp2.x, sp2.y) < 128) {
        if image_yscale < 1 {image_yscale += 0.1;}
    } else {
        if image_yscale > 0 {image_yscale -= 0.1;}
    }
    if (!global.console && keyboard_check_pressed(world.skipKey)) {
        if (!player.Gravity or player.GravityH) {
            player.GravityH = false;
            player.Gravity = true;
            audio_play_sound(sndVJump, 0, false, world.sound_vol);
        }
        switch(room) {
            case Stage01Hd: room_goto(Stage01J);
                            player.x = 48;
                            player.y = 2752;
                            break;
            case Stage02Hd: room_goto(Stage02G);
                            player.x = 64;
                            player.y = 128;
                            break;
            case Stage03Hd: room_goto(Stage03E);
                            player.x = 64;
                            player.y = 512;
                            break;
            case Stage04Hd: room_goto(Stage04K);
                            player.x = 736;
                            player.y = 544;
                            break;
            case Stage01Sr: room_goto(Stage01H);
		                    player.x = 16;
		                    player.y = 64;
		                    break;
            case Stage02Sr: room_goto(Stage02K);
                            player.x = 320;
                            player.y = 544;
                            break;
            case Stage03Sr: room_goto(Stage03K);
	                        player.x = 64;
	                        player.y = 64;
                            break;
        }
    }
}