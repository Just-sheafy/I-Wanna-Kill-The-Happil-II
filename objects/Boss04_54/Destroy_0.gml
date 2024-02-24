var bsq, cam = view_camera[0];

with(world) {music_speed = 0;}
with(soundEx) {if (world.Instance != M1) audio_stop_sound(M1); if (world.Instance != M2) audio_stop_sound(M2);}
with(soundEx2) {if (world.Instance != M1) audio_stop_sound(M1); if (world.Instance != M2) audio_stop_sound(M2);}

world.Kill = audio_play_sound(global.Sdeath, 5, false, world.sound_vol); audio_play_sound(sndDeath, 0, false, world.sound_vol);
world.filePlaying = -1; //For music purposes

bsq = instance_create_layer(x, y, "Player", bloodSquirt);
bsq.xx = x;
bsq.yy = y;
bsq.Gravity = Gravity;
bsq.GravityH = GravityH;

with(Boss04_49) { not_recover = false; }
with(surf_lens) { not_recover = false; }

instance_create_depth(camera_get_view_x(cam)+camera_get_view_width(cam)/2,
	camera_get_view_y(cam)+camera_get_view_height(cam)/2, -1000, GAMEOVER);