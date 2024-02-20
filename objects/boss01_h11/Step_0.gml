if image_alpha < 1 {image_alpha += 0.05;}
a = 0;
if hp > shp {
    shp += min(ceil((hp - shp) / 10), 2);
} else if hp < shp {
    shp += max(floor((hp - shp) / 10), -2);
    a = 1;
}

if hp > hpm {hp = hpm;}
if hp <= 0 {
    instance_destroy();
    instance_create_depth(0, 0, -100, light);
	with(player) frozen = false;
    with(Boss01_h12) {instance_destroy();}
    with(Boss01_D) {instance_destroy();}
    with(Boss01_D2) {instance_destroy();}
    with(Boss01_29) {var zx = instance_create_depth(x, y, depth, Boss01_dead2);
			zx.image_xscale = image_xscale; instance_destroy();}
    with(kill_character) {if (object_index != Boss01_dead2) instance_destroy();}
    with(Boss01_35) {instance_destroy();}
    with(Boss01_38) {instance_destroy();}
    with(world) {
        audio_stop_sound(Instance);
        filePlaying = -1;
        curMusic = global.Silent;
        Instance = audio_play_sound(curMusic, 10, true);
    }
	if (layer_exists("Background"))
		layer_hspeed(layer_get_id("Background"), 0);
    room_speed = 50;
    var zx = instance_create_depth(x, y, depth, Boss_h);
    zx.sprite_index = sprite_index;
}