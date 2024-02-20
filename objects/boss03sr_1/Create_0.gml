image_speed = 8/50;
audio_play_sound(sndSr03_1, 0, false);
instance_create_depth(0, 0, -8, Boss03Sr_h);
speed = 4;
direction = choose(0, 90, 180, 270);
arrow_id = instance_create_depth(x, y, -5, Boss03Sr_17);
arrow_id.visible = false;
arrow_id.sid = id;

alarm[0] = 8;
alarm[1] = 300;
alarm[2] = 450;
alarm[3] = 500;

a1 = 1;
a1_1 = 12;
a2 = 0;
a2_1 = 0;
a4 = 0;
a11 = 0;
active = false;
crazy = false;
num_zombie = 0;