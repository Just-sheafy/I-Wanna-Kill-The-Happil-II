var i;

if !instance_exists(player) {exit;}
instance_create_depth(0, 0, -100, light);
if (layer_exists("Tiles3"))
	layer_set_visible(layer_get_id("Tiles3"), false);
instance_destroy();
with(vineL) {instance_destroy();}
with(vineR) {instance_destroy();}
for(i=0; i<10; i+=1) {
    instance_create_layer(0, 64+32*i, "Player", vineR);
    instance_create_layer(768, 64+32*i, "Player", vineL);
}
with(world) {
    if filePlaying != 3.5 and curMusic != global.stage01Bs2 {
        audio_stop_sound(Instance);
        filePlaying = 3.5;
        curMusic = global.stage01Bs2;
        Instance = audio_play_sound(curMusic, 10, true);
    }
    break;
}
instance_create_depth(320, 0, -2, Boss01_17);
with(playerHealth) {
	if (hp < hpm) {
		var zx = instance_create_layer(48, 96, "Player", objHealthItem2);
		zx.time = 380;
	}
}