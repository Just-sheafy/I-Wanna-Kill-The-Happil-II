if (visible) Instance = audio_play_sound(sndStage, 0, false, world.sound_vol);
if instance_exists(player) {
	var cam = view_camera[0];
    if (player.y-camera_get_view_y(cam) <= camera_get_view_height(cam)/2)
		oy = camera_get_view_height(cam)-sprite_get_height(sprite_index);
}