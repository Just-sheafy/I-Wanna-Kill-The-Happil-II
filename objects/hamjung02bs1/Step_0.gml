a += 5;
if (room == Stage04Bs or room == Stage04Bs4) {
	if (layer_exists("Background6"))
		layer_background_alpha(layer_background_get_id(layer_get_id("Background6")),
			0.5+0.5*sin(degtorad(a)));
} else {
	if (layer_exists("Background3"))
		layer_background_alpha(layer_background_get_id(layer_get_id("Background3")),
			0.5+0.5*sin(degtorad(a)));
}