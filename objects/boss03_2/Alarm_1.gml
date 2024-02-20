var zx;

if c < 10 {
    if c == 0 {
		audio_play_sound(snd03_22, 0, false);
		zx = instance_create_depth(0, 0, 0, view_an3);
		zx.asdf = 20;
	}
    nothit = 1;
    if image_xscale > 0 {image_xscale -= 0.1;} else {image_xscale += 0.1;}
    image_yscale += 0.1;
    image_alpha -= 0.1;
    c += 1;
    alarm[1] = 1;
} else if c == 10 {
    if x == ox {x = 800-ox;} else {x = ox;}
    c += 1;
    alarm[1] = 1;
} else if c < 20 {
    if image_xscale > 0 {image_xscale += 0.1;} else {image_xscale -= 0.1;}
    image_yscale -= 0.1;
    image_alpha += 0.1;
    c += 1;
    alarm[1] = 1;
} else {
    nothit = 0;
    image_xscale = 1;
    image_yscale = 1;
    image_alpha = 1;
    c = 0;
    alarm[1] = irandom_range(120, 280);
}