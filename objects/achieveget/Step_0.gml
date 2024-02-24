var i, cam = view_camera[0];

if patt == 0 {
    ox += 6;
    if ox >= 240 {patt = 1; ox = 240;}
} else if patt < 152 {
    patt += 1;
} else if patt == 152 {
    if image_alpha > 0 {image_alpha -= 0.05;} else {ox = 0; image_alpha = 1; visible = 0; image_index = 0; patt += 1;}
}
for(i = 0; i < 72; i += 1) {
    if achieve[i] != world.achieve[i] and !visible {
        achieve[i] = world.achieve[i];
        audio_play_sound(sndAchieve, 0, false, world.sound_vol);
        patt = 0;
        visible = true;
        index = i;
        with(world) {saveDeaths();}
        
        oy = 0;
        if (instance_exists(player) and player.y < camera_get_view_y(cam)+camera_get_view_height(cam)/2)
			oy = camera_get_view_height(cam);
    }
}
x = camera_get_view_x(cam)+ox;
y = camera_get_view_y(cam)+oy;