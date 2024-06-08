if image_alpha < 1 {image_alpha += 0.05;}
a = 0;
if hp > shp {
    shp += min(ceil((hp - shp) / 10), 5);
} else if hp < shp {
    shp += max(floor((hp - shp) / 10), -5);
    a = 1;
}

if hp <= 0 {
	if (global.practice != -1) {
		with(player) { instance_destroy(); }
		with(world) {
			warn = 0;
			hp_before = -1;
			var_temp = 0;
			audio_stop_channel(1);
			audio_stop_channel(2);
			music_speed = 1;
			music_sp = 1;
			audio_resume_sound(Instance);
		}
		room_goto(Stage01Bs);
		exit;
	}
	
    instance_destroy();
    instance_create_depth(0, 0, -100, light);
    with(Boss01_h2) {instance_destroy();}
    with(Boss01_1) {instance_destroy(); instance_create_depth(x, y-64, -2, Boss01_dead1);}
    with(Boss01_10) {instance_destroy();}
    with(Boss01_14) {instance_destroy();}
    with(world) {audio_stop_sound(Instance); Instance = -1;}
    zx = instance_create_depth(x, y, -8, Boss_h);
    zx.sprite_index = sprite_index;
}