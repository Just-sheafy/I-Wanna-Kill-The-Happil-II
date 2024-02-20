var zx;

if (patt <= 5) {
	audio_play_sound(sndSwitch, 0, false);
    patt += 1;
    alarm[0] = 12;
} else if (patt <= 13) {
    if (patt == 6) {
        image_angle = 0; image_speed = 1/4;
        speed = 0; gravity = 0; gravity_direction = 270;
    }
	audio_play_sound(sndSwitch, 0, false);
    patt += 1;
    alarm[0] = 4;
} else if (patt == 14) {
    visible = false;
    
    if (rot == 0) {
        spike1 = instance_create_depth(x-800-32, y, -10, kill_character);
        spike1.sprite_index = sprBoss01_6;
        spike1.hspeed = 50;
        spike1.gravity = 25/16;
        spike1.gravity_direction = 180;
        
        spike2 = instance_create_depth(x+800+32, y, -10, kill_character);
        spike2.sprite_index = sprBoss01_6;
        spike2.image_angle = 180;
        spike2.hspeed = -50;
        spike2.gravity = 25/16;
        spike2.gravity_direction = 0;
        
        spike3 = instance_create_depth(x, y-800-32, -10, kill_character);
        spike3.sprite_index = sprBoss01_6;
        spike3.image_angle = 270;
        spike3.vspeed = 50;
        spike3.gravity = 25/16;
        spike3.gravity_direction = 90;
        
        spike4 = instance_create_depth(x, y+800+32, -10, kill_character);
        spike4.sprite_index = sprBoss01_6;
        spike4.image_angle = 90;
        spike4.vspeed = -50;
        spike4.gravity = 25/16;
        spike4.gravity_direction = 270;
    } else {
        spike1 = instance_create_depth(x-(800+32)*cos(degtorad(45)), y+(800+32)*sin(degtorad(45)), -10, kill_character);
        spike1.sprite_index = sprBoss01_6;
        spike1.image_angle = 45;
        spike1.speed = 50;
        spike1.direction = 45;
        spike1.gravity = 25/16;
        spike1.gravity_direction = 45+180;
        
        spike2 = instance_create_depth(x-(800+32)*cos(degtorad(135)), y+(800+32)*sin(degtorad(135)), -10, kill_character);
        spike2.sprite_index = sprBoss01_6;
        spike2.image_angle = 135;
        spike2.speed = 50;
        spike2.direction = 135;
        spike2.gravity = 25/16;
        spike2.gravity_direction = 135+180;
        
        spike3 = instance_create_depth(x-(800+32)*cos(degtorad(225)), y+(800+32)*sin(degtorad(225)), -10, kill_character);
        spike3.sprite_index = sprBoss01_6;
        spike3.image_angle = 225;
        spike3.speed = 50;
        spike3.direction = 225;
        spike3.gravity = 25/16;
        spike3.gravity_direction = 225+180;
        
        spike4 = instance_create_depth(x-(800+32)*cos(degtorad(315)), y+(800+32)*sin(degtorad(315)), -10, kill_character);
        spike4.sprite_index = sprBoss01_6;
        spike4.image_angle = 315;
        spike4.speed = 50;
        spike4.direction = 315;
        spike4.gravity = 25/16;
        spike4.gravity_direction = 315+180;
    }
    
	audio_play_sound(sndSpikeTrap, 0, false);
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 15;
    
    patt += 1;
    alarm[0] = 100;
} else {
    if (instance_exists(spike1)) {with(spike1) instance_destroy();}
    if (instance_exists(spike2)) {with(spike2) instance_destroy();}
    if (instance_exists(spike3)) {with(spike3) instance_destroy();}
    if (instance_exists(spike4)) {with(spike4) instance_destroy();}
    instance_destroy();
}