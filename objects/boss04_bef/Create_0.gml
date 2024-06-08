if (layer_exists("Tiles"))
	layer_set_visible(layer_get_id("Tiles"), false);
if (layer_exists("Tiles2"))
	layer_set_visible(layer_get_id("Tiles2"), false);
if (layer_exists("Background3"))
	layer_set_visible(layer_get_id("Background3"), false);
if (layer_exists("Background4"))
	layer_set_visible(layer_get_id("Background4"), false);
if (layer_exists("Background5"))
	layer_set_visible(layer_get_id("Background5"), false);
if (layer_exists("Background6"))
	layer_set_visible(layer_get_id("Background6"), false);

// Practice
if (global.practice >= 0) {
	with(SavePoint2) instance_destroy();
	with(StageGet) instance_destroy();
    with(dark1) instance_destroy();
	alarm[11] = 1;
}