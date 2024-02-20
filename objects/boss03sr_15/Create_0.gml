image_speed = 8/50;
speed = 8;
arrow_id = -1;

l = ds_list_create();
ds_list_add(l, 0); ds_list_add(l, 90); ds_list_add(l, 180); ds_list_add(l, 270);

if (place_meeting(x+16, y, block)) ds_list_delete_element(l, 0);
if (place_meeting(x, y-16, block)) ds_list_delete_element(l, 90);
if (place_meeting(x-16, y, block)) ds_list_delete_element(l, 180);
if (place_meeting(x, y+16, block)) ds_list_delete_element(l, 270);

ds_list_shuffle(l);
direction = ds_list_find_value(l, 0);
ds_list_destroy(l);

alarm[0] = 4;
alarm[1] = 150;

hp = 3;
nodie = 1;