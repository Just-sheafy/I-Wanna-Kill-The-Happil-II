audio_play_sound(sndBossB, 0, false, world.sound_vol);
image_speed = 1/2;
sid = -1;
ox = 0;
oy = 0;

t = 0;
length = 22;

if (world.shader_supported) {
	uTime = shader_get_uniform(shdShield, "time");
	uCoords = shader_get_uniform(shdShield, "coords");
}

rad = 21;
col = make_color_rgb(49, 255, 229);