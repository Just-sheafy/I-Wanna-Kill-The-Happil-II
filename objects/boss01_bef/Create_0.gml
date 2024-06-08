if (layer_exists("Tiles3"))
	layer_set_visible(layer_get_id("Tiles3"), false);

// Practice
if (global.practice >= 0) {
	with(SavePoint2) instance_destroy();
	with(StageGet) instance_destroy();
    with(dark1) instance_destroy();
	alarm[11] = 1;
}