instance_destroy();
if a {
    var zx = instance_create_depth(x, y, -5, Explo1);
    zx.image_xscale = 1/2;
    zx.image_yscale = 1/2;
    zx = instance_create_depth(0, 0, 0, view_an1);
    zx.asdf = 5;
	if (x <= room_width/2 and y >= room_height/2)
		audio_play_sound(snd02_26, 0, false);
}