/// @description *Previous Room
// You can write your code in this editor

if (room != initRoom and room != beforeRoom and room != startRoom and room != loadRoom and
	room != beginning and room != Stage01A) {
    with(player) {instance_destroy();}
	warn = 0;
	hp_before = -1;
    var_temp = 0;
    audio_stop_channel(1);
    audio_stop_channel(2);
    music_speed = 1;
    music_sp = 1;
	audio_resume_sound(Instance);
    room_goto_previous();
}