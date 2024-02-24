var l;

if (hp < 0) hp = 3;

if hp > 0 {

image_speed = 8/50;
l = ds_list_create();

ds_list_add(l, 0); ds_list_add(l, 90);
ds_list_add(l, 180); ds_list_add(l, 270);
ds_list_shuffle(l);

if Boss03Sr_1.crazy {speed = 8;} else {speed = 4;}
if (random(1) < 0.125) {direction = ds_list_find_value(l, 0);}
if ((direction == 0 and place_meeting(x+32, y, block)) or (direction == 90 and place_meeting(x, y-32, block)) or
    (direction == 180 and place_meeting(x-32, y, block)) or (direction == 270 and place_meeting(x, y+32, block))) {
    for(i=0; i<4; i+=1) {
        if (place_meeting(x+lengthdir_x(32, 90*i), y+lengthdir_y(32, 90*i), block))
            ds_list_delete_element(l, 90*i);
    }
    direction = ds_list_find_value(l, 0);
}

ds_list_destroy(l);

if Boss03Sr_1.crazy {alarm[0] = 4;} else {alarm[0] = 8;}

} else {

image_speed = 0;
image_index = 0;
speed = 0;
hp = -1;
alarm[0] = 150 - Boss03Sr_1.crazy * 50;
audio_play_sound(sndSr03_1, 0, false, world.sound_vol);

}