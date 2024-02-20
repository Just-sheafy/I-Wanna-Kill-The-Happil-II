exponent = 0.49;
d_exp = 0;
zz = -55;
d_z = 0;
t = 0;
t_inc = true;

// for blackhole effect
sid = -1;
ox = 0;
oy = 0;
radius = 150;
twist = 1;
but_recover = true;
not_recover = false;

// for assault effect
assault = false;
t2 = 0;
vis = false;
alpha = 0.4;
width = 0;

alarm[0] = 1450;

function pos3Dx(xxx, yyy, z, expon) {
	return room_width/2 + xxx*125/(z+power(xxx*xxx+yyy*yyy, expon)/5+125);
}
function pos3Dy(xxx, yyy, z, expon) {
	return room_height/2 + yyy*125/(z+power(xxx*xxx+yyy*yyy, expon)/5+125);
}


if (!world.screen_effect_enable) { surface = -1; exit; }

var cam = view_camera[0];

surface = surface_create(camera_get_view_width(cam), camera_get_view_height(cam));

surface_set_target(surface);
draw_clear_alpha(c_black, 0);
surface_reset_target();