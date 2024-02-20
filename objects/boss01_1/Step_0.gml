if hspeed != 0 {sprite_index = sprBoss01_2; image_speed = 1/2;}
if vspeed != 0 {sprite_index = sprBoss01_3; image_speed = 1/2;}
if hspeed == 0 and vspeed == 0 {sprite_index = sprBoss01_1; image_speed = 1/5;}
if !instance_exists(player) {
    if speed != 0 {exit;}
	var i;
    for(i=0; i<3; i+=1) {alarm[i] = 0;}
    alarm[10] = 0;
    exit;
}
if ang == 1 {
    if !instance_exists(Boss01_12) {
        ang = 2;
        instance_create_depth(0, 0, -100, light);
        audio_play_sound(snd01_1, 0, false);
        alarm[1] = 1;
        with(Boss01_11) {arck = 0;}
    }
}
if ang == 3 {
    if !instance_exists(Boss01_11) {
        ang = 4;
        instance_create_depth(0, 0, -100, light);
        audio_play_sound(snd01_1, 0, false);
        alarm[1] = 1;
    }
}