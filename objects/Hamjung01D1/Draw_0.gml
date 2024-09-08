if (share_id != -1) {
	draw_set_color(c_black);
	draw_set_alpha(1-timer/50);
	draw_rectangle(x, y, x+32*image_xscale, y+32*image_yscale, false);
	draw_rectangle(share_id.x, share_id.y, share_id.x+32*image_xscale, share_id.y+32*image_yscale, false);
	draw_set_color(c_white);
	draw_set_alpha(1);
} else {
	draw_set_color(c_black);
	draw_set_alpha(timer/50);
	draw_rectangle(x, y, x+32*image_xscale, y+32*image_yscale, false);
	draw_set_color(c_white);
	draw_set_alpha(1);
}