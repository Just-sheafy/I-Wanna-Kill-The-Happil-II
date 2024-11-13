var i, back_id;

if (surface_exists(blur_1X)) surface_free(blur_1X);
if (surface_exists(blur_2X)) surface_free(blur_2X);
if (sprite_exists(spr__ppp)) sprite_delete(spr__ppp);
instance_activate_all();
// application_surface_enable(true);

world.pause_time = 25;
if (audio_is_paused(world.Instance))
	audio_resume_sound(world.Instance);

for(i=0; i<8; i+=1) {
	if (i > 0) {
		if (!layer_exists("Background" + string(i))) continue;
		back_id = layer_get_id("Background" + string(i));
	} else back_id = layer_get_id("Background");
	
	layer_hspeed(back_id, back_hspeed[i]);
	layer_vspeed(back_id, back_vspeed[i]);
}
audio_play_sound(sndPaused, 0, false, world.sound_vol);