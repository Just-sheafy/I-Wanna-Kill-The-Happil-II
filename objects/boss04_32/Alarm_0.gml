var zx;

if (patt == 0) {
    death = false;
    patt += 1;
    alarm[0] = 150;
} else if (patt == 1) {
    with(player) {depth = -16;}
    with(Boss04_33) {depth = -17;}
    zx = instance_create_depth(0, 0, -10, dark4);
    zx.alarm[0] = 50;
    zx.c = 4;
    patt += 1;
    alarm[0] = 325;
} else if (patt == 2) {
    with(objCl1) a = 2;
    with(objCl2) a = 2;
    with(objCl3) stop = true;
    Instance = audio_play_sound(snd04_1, 0, false);
    
    if (instance_exists(player)) {
        player.frozen = true;
        player_x = player.x;
        player_y = player.y;
        spr_before = player.sprite_index;
        img_before = player.image_index;
		player.hspd = 0;
		player.vspd = 0;
		player.grav = 0;
    }
    
    num = 0;
    patt += 1;
    alarm[0] = 80;
} else if (patt == 3) {
    audio_stop_sound(Instance);
    Instance = audio_play_sound(snd04_2, 0, true);
    
    patt += 1;
    alarm[0] = 150;
} else {
    if (!instance_exists(player)) exit;
    
    instance_destroy();
    with(Boss04_33) instance_destroy();
    with(dark4) instance_destroy();
    with(objCl1) instance_destroy();
    with(objCl2) instance_destroy();
    with(objCl3) instance_destroy();
    with(player) { depth = -2; frozen = false; }
    instance_create_depth(400, 304, 100, object666);
    
    with(world) {
        if filePlaying != 18 and curMusic != global.stage04Bs1 {
			audio_stop_sound(Instance);
            filePlaying = 18;
            curMusic = global.stage04Bs1;
            Instance = audio_play_sound(curMusic, 10, true);
        }
    }
	
	if (world.HEALTH_ok) {
		var zx = instance_create_depth(0, 0, -49, playerHealth);
		zx.hp = 3;
		zx.hpm = 3;
	}
	
    instance_create_depth(0, 0, -100, light);
    zx = instance_create_depth(800, 0, -2000, StageGet);
    zx.image_index = 64;
    
    instance_create_depth(room_width/2, room_height/2, 10, Boss04_1);
    var temp = instance_create_depth(-192, 288, -5, Boss04_2);
    temp.xx = 192; temp.type = 0;
    temp = instance_create_depth(1024, 288, -5, Boss04_3);
    temp.xx = 640; temp.type = 0;
    
    if (!instance_exists(MouseC)) instance_create_layer(0, 0, "Player", MouseC);
}