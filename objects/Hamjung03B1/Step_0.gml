if a && instance_exists(player) && x-player.x < 32 {
    var zx;
	
	audio_play_sound(sndBreak, 0, false);
    a = false;
    zx = instance_create_depth(x, y, depth-1, Hamjung03B2);
    zx.sid = id;
	if (image_index == 2 || image_index == 3) {
		zx.image_yscale = -1;
		zx.oy = 31;
	}
}
if !a && vTo != 0 {
	if (abs(vTo) < 8) {
		y += vTo;
		vTo = 0;
	} else {
	    y += sign(vTo)*8;
	    vTo -= sign(vTo)*8;
	}
}