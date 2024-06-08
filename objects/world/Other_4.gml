//set room speed, so it stays constant throughout the game
room_speed = global.ROOM_SPEED;
//caption - change to whatever you want it to be
room_caption="I Wanna Kill The Happil II";

if room != initRoom and room != beforeRoom and room != startRoom {
    room_caption += " Deaths : " + string(deaths[0]) + " Time : " + string(h) + ":" + string(m) + ":" + string(s);
}

if (!instance_exists(AchieveGet)) instance_create_depth(0, 0, -2000, AchieveGet);

musicFunctions();
audio_stop_channel(1);
audio_stop_channel(2);
music_speed = 1;
music_sp = 1;

// when loaded

var i, back_id;

if (room == room_before) {
    for(i=0; i<8; i+=1) {
		if (i > 0) {
			if (!layer_exists("Background" + string(i))) continue;
			back_id = layer_get_id("Background" + string(i));
		} else back_id = layer_get_id("Background");
        layer_x(back_id, back_x_before[i]);
        layer_y(back_id, back_y_before[i]);
    }
    
    i = 0;
    for(i=0; i<min(ds_list_size(list_obj_before), ds_list_size(list_objx_before), ds_list_size(list_objy_before)); i+=1) {
        temp = instance_create_layer(ds_list_find_value(list_objx_before, i), ds_list_find_value(list_objy_before, i),
            "Instances", ds_list_find_value(list_obj_before, i));
		if (room == Stage02Bs3 or room = Stage02Bs4) {
			temp.image_angle = irandom_range(0, 35)*10;
			temp.image_alpha = random(1);
		} else if (room == Stage03C) {
            temp.direction = 225; temp.speed = choose(5, 6);
            temp.alarm[0] = 0; temp.visible = true;
        } else if (room == Stage03D) {
            temp.vspeed = irandom_range(10, 14);
            temp.alarm[0] = 0; temp.visible = true;
        }
    }
}

room_before = noone;
for(i=0; i<8; i+=1) {
    back_x_before[i] = 0;
    back_y_before[i] = 0;
}
ds_list_clear(list_obj_before);
ds_list_clear(list_objx_before);
ds_list_clear(list_objy_before);


//// Create Instances

if (room == beforeRoom) instance_create_depth(400, 304, -101, obj_intro_just);
if (room == startRoom) instance_create_depth(0, 0, -500, obj_main_menu);
if (room !=  initRoom and room != beforeRoom and room != startRoom and room != loadRoom and
	room != beginning and room != roomTemplate) {
	if !instance_exists(camera) {
	    instance_create_layer(0, 0, "Player", camera);
	}
	if (!instance_exists(MouseC) && room != Stage04Bs6) {
	    instance_create_layer(0, 0, "Player", MouseC);
	}
	if (!instance_exists(StageGet) and room != Stage04Bs6) {
		instance_create_depth(3200, 0, -2000, StageGet);
	}
}