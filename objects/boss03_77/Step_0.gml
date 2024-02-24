var zx;

if y < -600 and vspeed < 0 {instance_destroy();}
if !instance_exists(player) {
    for(i=0; i<2; i+=1) {
        alarm[i] = 0;
    }
    alarm[4] = 0;
    exit;
}
image_alpha = random_range(0.5, 0.8);
h += 3;
y += cos(degtorad(h)) / 2;
if press {
    with(player) {frozen = true; image_speed = 0; hspd = 0; vspd = 0; grav = 0;}
	if (instance_exists(player)) {
		player.sprite_index = spr_before;
		player.image_index = img_before;
		player.x = player_x;
		player.y = player_y;
	}
    
	
    if keyboard_check_pressed(vk_anykey) {
		if (keyboard_lastkey == key) {
	        press = 0;
	        with(Boss03_80) {instance_destroy(); instance_create_depth(x, y, -4, Boss02_71);}
	        with(Boss02_70) {instance_destroy();}
	        with(Boss03_81) {instance_destroy();}
	        with(player) {frozen = false;}
	        alarm[4] = 0;
	        alarm[5] = 200;
	        instance_create_depth(0, 0, -100, light);
	        zx = instance_create_depth(0, 0, 0, view_an3);
	        zx.asdf = 30;
	        audio_play_sound(sndExplo, 0, false, world.sound_vol);
		} else {
			alarm[4] = 0;
			event_perform(ev_alarm, 4);
		}
    }
}
if b != 0 {
    d += 5;
    oy = 30 * sin(degtorad(d));
    zx = instance_create_depth(800, 320 + oy, -3, Boss03_8);
    zx.direction = 180;
    zx.speed = 3;
	zx.out_anim = true;
    zx = instance_create_depth(800, 448 - oy, -4, Boss03_8);
    zx.direction = 180;
    zx.speed = 3;
	zx.out_anim = true;
    b += 1;
    if b > 9 {b = 1; audio_play_sound(snd03_3, 0, false, world.sound_vol);}
}
if y > room_height + 600 and !broken {
    alarm[2] = 0;
    alarm[3] = 0;
    alarm[4] = 150;
    speed = 0;
    friction = 0;
    patt = 0;
    broken = 1;
    instance_create_depth(0, 0, -100, light);
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 50;
    with(Boss03_61) {image_index = 1; angle_speed = 0;}
    with(Boss03_62) {image_index = 1; angle_speed = 0;}
    with(Boss03_63) {image_index = 1; angle_speed = 0;}
    with(Boss03_65) {
		image_index = 0; image_speed = 0;
		vspeed = -random_range(8, 10); gravity = 0.3;
		instant = false;
	}
    audio_play_sound(sndExplo2, 0, false, world.sound_vol);
}