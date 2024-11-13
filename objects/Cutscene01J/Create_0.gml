patt = -50;
alpha = 0;
surf = -1;

back_col = make_color_rgb(0, 100, 184);
back_col1 = make_color_rgb(152, 228, 224);
back_col2 = make_color_rgb(248, 252, 248);
back_bomb = false;
back_bomb_time = 0;

castle_x = 152;
castle_y = 96;
castle_sink = false;
castle_sink_time = 0;

line_x = 60;
line_y = 96;
line_xscale = 5.5;
line_fire = 0;
fire_index = 0;

door_x = 148;
door_y = 96;
door_bomb = false;
door_bomb_time = -6;
door_sink = false;
door_sink_time = 0;
dust_y = door_y;

egg_x = 110;
egg_y = 80;
egg_bounce = false;
egg_bounce_time = 0;
egg_oy = 0;
egg_message = false;

mario_sprite = sprCutscene1J5;
mario_index = 0;
mario_xscale = 1;
mario_x = 120;
mario_y = 98;

bomb_index = 0;

// world.Stage01JSkip = 1;
if (world.Stage01JSkip == 0) {
	depth = -500;
	with(player) instance_destroy();
	with(Hamjung01J2) collectable = false;
} else {
	instance_create_layer(0, 0, "Player", dark1);
	instance_create_layer(0, 0, "Player", dark5);
	instance_create_layer(0, 0, "Player", Warned);
	
	instance_create_depth(3200, 0, -2000, StageGet);
	
	instance_create_layer(64, 2720, "Player", playerSpawn);
	instance_create_layer(64, 2720, "Player", viewSlide);
	instance_create_layer(0, 0, "Player", Hamjung01J1);
	
	instance_destroy();
}