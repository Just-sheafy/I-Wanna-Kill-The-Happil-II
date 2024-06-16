if (!world.kill) {
    image_blend = c_fuchsia;
} else if (world.IJ) {
    image_blend = c_blue;
} else {
    image_blend = c_white;
}

var draw_x = x, draw_y = y;

if (sprite_index != sprPlayer2 and !GravityH and !Gravity) {
    draw_y++;
} else if (GravityH and !Gravity) {
	draw_x++;
}

draw_sprite_ext(sprite_index, image_index, draw_x, draw_y, image_xscale * xscale, image_yscale * (2*Gravity-1), image_angle, image_blend, image_alpha);
if (world.show_mask)
	draw_sprite_ext(mask_index, 0, x, y, image_xscale, image_yscale, image_angle, c_white, 0.5);

/*
var cam = view_camera[0];

draw_set_color(c_red);
draw_set_font(pauseFont12);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(camera_get_view_x(cam), camera_get_view_y(cam),
	"mouse_x: " + string(mouse_x) + "\n" + "mouse_y: " + string(mouse_y) +
	"\n" + "x: " + string(x) + "\n" + "y: " + string(y));