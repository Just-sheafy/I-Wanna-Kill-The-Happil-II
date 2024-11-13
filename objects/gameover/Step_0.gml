var cam = view_camera[0];

if (mode == 0) {
	if (event == 0) {
		if image_alpha < 1 {image_alpha += 1/30;}
		if a {if d < camera_get_view_height(cam)/2 {d += 8;}}
		if b {if c < 20 {c += 1;}}
		if d == camera_get_view_height(cam)/2 {if h < camera_get_view_width(cam)/2 {h += 8;}}
		x = camera_get_view_x(cam)+camera_get_view_width(cam)/2;
		y = camera_get_view_y(cam)+camera_get_view_height(cam)/2;
	} else if (event == 1) {
		patt += 1;
		vol = min(vol+1/80, 1);
		audio_sound_gain(Instance, vol*world.sound_vol, 0);
		if (patt == 150) {
			audio_stop_sound(Instance);
			room_restart();
		}
	}
} else {
	x = camera_get_view_x(cam)+camera_get_view_width(cam)/2;
	y = camera_get_view_y(cam)+camera_get_view_height(cam)/2;
}