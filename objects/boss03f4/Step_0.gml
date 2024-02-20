image_alpha = random_range(0, 0.6);
if (!instance_exists(player)) {
    alarm[1] = 0; alarm[2] = 0; exit;
}

var zx;

patt += 1;

if (patt == 65) {
    instance_create_depth(400, 304, -2, Boss03F3);
} else if (patt == 165) {
	if (layer_exists("Tiles")) {
		layer_set_visible(layer_get_id("Tiles"), false);
	}
	depth = 1;
	with(Boss03F5) visible = true;
    with(block) {if (x >= 0 and x < 800) instance_destroy();}
    instance_create_depth(lx, ly, -2, Boss03F2);
    instance_create_depth(rx, ry, -2, Boss03F2);
    instance_create_depth(0, 0, -100, light);
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 25;
} else if (patt == 190) {
    instance_create_depth(lx, ly, -2, Boss03F2);
} else if (patt == 215) {
    instance_create_depth(lx, ly, -2, Boss03F2);
    instance_create_depth(rx, ry, -2, Boss03F2);
} else if (patt == 240) {
    instance_create_depth(lx, ly, -2, Boss03F2);
    instance_create_depth(400, -32, -2, Boss03F2);
    instance_create_depth(400, 640, -2, Boss03F2);
} else if (patt == 265) {
    instance_create_depth(lx, ly, -2, Boss03F2);
    instance_create_depth(400, -32, -2, Boss03F2);
    instance_create_depth(400, 640, -2, Boss03F2);
} else if (patt == 290) {
    instance_create_depth(lx, ly, -2, Boss03F2);
} else if (patt == 315) {
    instance_create_depth(lx, ly, -2, Boss03F2);
    instance_create_depth(rx, ry, -2, Boss03F2);
} else if (patt == 340) {
    instance_create_depth(lx, ly, -2, Boss03F2);
    instance_create_depth(400, -32, -2, Boss03F2);
    instance_create_depth(400, 640, -2, Boss03F2);
} else if (patt == 365) {
    instance_create_depth(lx, ly, -2, Boss03F2);
    instance_create_depth(rx, ry, -2, Boss03F2);
} else if (patt == 390) {
    instance_create_depth(lx, ly, -2, Boss03F2);
} else if (patt == 415) {
    instance_create_depth(lx, ly, -2, Boss03F2);
    instance_create_depth(rx, ry, -2, Boss03F2);
} else if (patt == 440) {
    instance_create_depth(lx, ly, -2, Boss03F2);
} else if (patt == 465) {
    instance_create_depth(lx, ly, -2, Boss03F2);
    instance_create_depth(rx, ry, -2, Boss03F2);
} else if (patt == 490) {
    instance_create_depth(lx, ly, -2, Boss03F2);
} else if (patt == 515) {
    instance_create_depth(lx, ly, -2, Boss03F2);
    instance_create_depth(rx, ry, -2, Boss03F2);
} else if (patt == 540) {
    with(fruit) {
        direction = point_direction(x, y, Boss03F4.lx, Boss03F4.ly);
    }
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 25;
} else if (patt == 565) {
    instance_create_depth(lx, ly, -2, Boss03F2);
    instance_create_depth(400, -32, -2, Boss03F2);
    instance_create_depth(400, 640, -2, Boss03F2);
} else if (patt == 590) {
    instance_create_depth(lx, ly, -2, Boss03F2);
} else if (patt == 615) {
    instance_create_depth(lx, ly, -2, Boss03F2);
    instance_create_depth(rx, ry, -2, Boss03F2);
} else if (patt == 640) {
    instance_create_depth(lx, ly, -2, Boss03F2);
} else if (patt == 665) {
    instance_create_depth(lx, ly, -2, Boss03F2);
    instance_create_depth(rx, ry, -2, Boss03F2);
} else if (patt == 690) {
    instance_create_depth(lx, ly, -2, Boss03F2);
} else if (patt == 715) {
    instance_create_depth(lx, ly, -2, Boss03F2);
    instance_create_depth(rx, ry, -2, Boss03F2);
} else if (patt == 740) {
    instance_create_depth(lx, ly, -2, Boss03F2);
    instance_create_depth(400, -32, -2, Boss03F2);
    instance_create_depth(400, 640, -2, Boss03F2);
} else if (patt == 765) {
    instance_create_depth(lx, ly, -2, Boss03F2);
    instance_create_depth(rx, ry, -2, Boss03F2);
} else if (patt == 790) {
    instance_create_depth(lx, ly, -2, Boss03F2);
    with(fruit) {
        direction = point_direction(x, y, 800, 0);
        speed = 1;
    }
} else if (patt == 990) {
    with(fruit) {
        direction = point_direction(x, y, player.x, player.y);
        speed = 6;
    }
}

if (world.curMusic = global.mental
	and abs(audio_sound_get_track_position(world.Instance)-1.6-patt/50) > 0.1) {
	audio_sound_set_track_position(world.Instance, 1.6+patt/50);
}