/// @description Title
// You can write your code in this editor

if instance_exists(objPause) {exit;}

var i;

if room == initRoom or room == beforeRoom or room == startRoom or room == loadRoom or room == beginning {exit;}
room_goto(startRoom);
with(player) {instance_destroy();}
for(i=0; i<3; i+=1) audio_stop_channel(i);
warn = 0;
if !achieve[10] {achieve[10] = 1;}

music_speed = 1;
music_sp = 1;

b = 0;
c = 0;
hp_before = -1;
var_temp = 0;
if (surf_temp != -1 and surface_exists(surf_temp)) {
    surface_free(surf_temp);
    surf_temp = -1;
}
if (spr_temp != -1 and sprite_exists(spr_temp)) {
	sprite_delete(spr_temp);
	spr_temp = -1;
}

secretBoss1Skip = 0;