var temp;

if (instance_exists(player) and (player.x >= x-96 and player.x <= x+265+96
	and player.y >= y-15-96 and player.y <= y+15+96)) {
	image_alpha = max(image_alpha - 0.02, 0.5);
} else image_alpha = min(image_alpha + 0.02, 1);

if sshp > shp {
    shp += min(ceil((sshp - shp)/4), 4);
} else if sshp < shp {
    shp += max(floor((sshp - shp)/4), -4);
}

count += 1;
if (index + count - 1 > string_length(text[text_index])) {
	text_index = (text_index >= 89)? 0 : text_index + 1;
	index = 1;
	count = 1;
} else {
	draw_set_font(global.fontBoss04);
	temp = string_copy(text[text_index], index, count);
	if (string_width(temp) + 4*string_count(temp, " ") > 240) {
		index = index + count - 1;
		count = 1;
	}
}

if (instance_exists(player) and hp <= 0) {
	with(player) instance_destroy();
	world.achieve[39] = 1;
	world.var_temp = 1;
	room_goto(Stage04Bs8);
}