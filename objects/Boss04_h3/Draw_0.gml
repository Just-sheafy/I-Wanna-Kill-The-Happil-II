draw_sprite_ext(sprBoss04_h7, -1, x, y, 1, 1, 0, c_white, armor_alpha);
draw_self();
draw_sprite_ext(sprBoss01_h4, -1, x, y, shp/hpm, 1, 0, c_white, image_alpha);
if (armor > 0) {
	draw_sprite_ext(sprBoss04_57, -1, x+cx-4, y+cy-20*(1-armor_alpha), 1, 1, 0, c_white, armor_alpha);
	draw_set_font(fnt_achievements);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
	draw_text_color(x+cx-4, y+cy, armor, c_gray, c_gray, c_black, c_black, armor_alpha);
} else
	draw_sprite_ext(sprBoss04_57, -1, x-4, y+20*armor_alpha, 1, 1, 0, c_white, armor_alpha);