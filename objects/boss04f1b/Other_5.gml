if (ds_exists(star_x, ds_type_list)) ds_list_destroy(star_x);
if (ds_exists(star_y, ds_type_list)) ds_list_destroy(star_y);
if (ds_exists(triangle_x, ds_type_list)) ds_list_destroy(triangle_x);
if (ds_exists(triangle_y, ds_type_list)) ds_list_destroy(triangle_y);
if (ds_exists(square_x, ds_type_list)) ds_list_destroy(square_x);
if (ds_exists(square_y, ds_type_list)) ds_list_destroy(square_y);
if (ds_exists(pentagon_x, ds_type_list)) ds_list_destroy(pentagon_x);
if (ds_exists(pentagon_y, ds_type_list)) ds_list_destroy(pentagon_y);
if (ds_exists(hexagon_x, ds_type_list)) ds_list_destroy(hexagon_x);
if (ds_exists(hexagon_y, ds_type_list)) ds_list_destroy(hexagon_y);

with(player) {
	max_hspd = 3;
	jump_height = [8.5, 7];
	grav_amount = 0.4;
}