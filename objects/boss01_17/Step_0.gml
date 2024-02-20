if hspeed != 0 {sprite_index = sprBoss01_16; image_speed = 1/2;}
if vspeed != 0 {sprite_index = sprBoss01_17; image_speed = 1/2;}
if hspeed == 0 and vspeed == 0 {sprite_index = sprBoss01_15; image_speed = 1/5;}
if !instance_exists(player) {
    if speed != 0 {exit;}
    alarm[0] = 0; alarm[10] = 0;
    exit;
}