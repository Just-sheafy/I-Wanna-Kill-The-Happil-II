var temp, zx;

depth = 10;

xx = room_width / 2;
yy = room_height / 2;
zz = 240;
zz_speed = 0;
zz_gravity = 0;

image_xscale = 5;
image_yscale = 5;
image_speed = 0;
alpha = 0;
light_obj = -1;

surf = surface_create(10*sprite_get_width(sprite_index), 10*sprite_get_height(sprite_index));
_xoffset = 5*sprite_get_width(sprite_index);
_yoffset = 5*sprite_get_height(sprite_index);

patt = 0;
rush = 0;
rush_next = false;
reverse_next = false;
back_list = ds_list_create();
ds_list_add(back_list, 0);
// 0: original, 1: the gay, 2: daazer, 3: simteve, 4: gooridian, 5: hallioni, 7: hosungryn, 8: hamjungsav

trans = false;
is_end = false;
trans_patt = 0;
next_avoidance = 0; // 1: global.contrary, 2: global.catastrophe
dead = false;

num_reverse = false; // number of reverse
num1 = choose(0, 1);
num2 = 1-num1; // "Ganji"
shell_count = 0; // counting on achievements..

if (room == Stage04Bs) {
    zx = instance_create_depth(x, y, -10, Boss04_n);
    zx.sid = id;
    zx.ox = -5;
    zx.oy = -6;
} else {
	if (world.HEALTH_ok) {
		var zx = instance_create_depth(0, 0, -49, playerHealth);
		if (world.hp_before != -1) zx.hp = min(5, world.hp_before);
		else zx.hp = 5;
		zx.hpm = 5;
		if (zx.hp < zx.hpm) {
			zx = instance_create_layer(400, (world.var_temp == 1)? 112 : 608-112, "Player", objHealthItem2);
			zx.time = 150;
		}
		world.hp_before = -1;
	}
	
    instance_create_depth(x, y, 50, Boss04_31);
    if (layer_exists("Tiles"))
	layer_set_visible(layer_get_id("Tiles"), false);
	if (layer_exists("Tiles2"))
		layer_set_visible(layer_get_id("Tiles2"), false);
	if (layer_exists("Background3"))
		layer_set_visible(layer_get_id("Background3"), false);
	if (layer_exists("Background4")) {
		layer_background_xscale(layer_background_get_id(layer_get_id("Background4")), 1.5);
		layer_background_yscale(layer_background_get_id(layer_get_id("Background4")), 1.5);
		layer_set_visible(layer_get_id("Background4"), false);
	}
	if (layer_exists("Background5"))
		layer_set_visible(layer_get_id("Background5"), false);
	if (layer_exists("Background6"))
		layer_set_visible(layer_get_id("Background6"), false);
	if (layer_exists("Background7"))
		layer_set_visible(layer_get_id("Background7"), false);
	if (layer_exists("Background8"))
		layer_set_visible(layer_get_id("Background8"), false);
    next_avoidance = 3-world.var_temp;
    if (!world.screen_effect_enable)
        instance_create_depth(0, 0, -100, dark1);
    else {
		if (world.surf_temp != -1 and surface_exists(world.surf_temp)) {
			var cam = view_camera[0];
			
		    temp = instance_create_depth(0, 0, 0, view_break);
		    temp.depth = -20;
		    if (world.var_temp == 1) temp.Gravity = false;
		    else if (world.var_temp == 2) temp.Gravity = true;
		    if (!surface_exists(temp.surf))
		        temp.surf = surface_create(camera_get_view_width(cam)/4, camera_get_view_height(cam)/4);
		    surface_copy(temp.surf, 0, 0, world.surf_temp);
		    surface_free(world.surf_temp);
		    world.surf_temp = -1;
            
		    with(temp) event_user(0);
		    zx = instance_create_depth(0, 0, 0, view_an3);
		    zx.asdf = 20;
		}
    }
}

alarm[0] = 200;