var i, back_id;

if (surface_exists(blur_1X)) surface_free(blur_1X);
if (surface_exists(blur_2X)) surface_free(blur_2X);
if (sprite_exists(spr__ppp)) sprite_delete(spr__ppp);
instance_activate_all();
application_surface_enable(true);

if (audio_is_paused(world.Instance))
	audio_resume_sound(world.Instance);
audio_play_sound(sndPaused, 0, false, world.sound_vol);