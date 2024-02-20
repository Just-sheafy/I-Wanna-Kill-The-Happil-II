if (!instance_exists(player)) {
    alarm[0] = 0; alarm[1] = 0; alpha = 0; radius = 1200; exit;
}

patt += 1;
if (patt >= 250 and patt <= 550) {
    if (patt == 250) {
		Instance = audio_play_sound(global.Clear2, 10, false);
		player.depth = depth - 1;
		alarm[0] = 18;
	}
	if (patt == 438) alarm[1] = 18;
    radius = 1200 - 3.5*(patt-250);
} else if (patt >= 650 and patt <= 700) {
    if (patt == 650) Instance = audio_play_sound(sndClear, 0, false);
    radius = 150 - 3*(patt-650);
} else if (patt == 750) {
    switch(room) {
        case Stage01Sr: room_goto(Stage01H);
	                    player.x = 16;
	                    player.y = 64;
                        world.achieve[16] = 1;
                        break;
        case Stage03Sr: room_goto(Stage03K);
                        player.x = 64;
                        player.y = 64;
                        world.achieve[31] = 1;
                        break;
    }
}