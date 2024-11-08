patt = 0;
pat = 0;
qwer = 0;
hammer_left = 0;
hammer_right = 0;
Instance = -1;
depth = 2;
instance_create_depth(x, y, 2, Boss02_2);
instance_create_depth(0, 0, 0, objGoombaController);

pokey_count = 4;
pokey_spawn_time = 30;
pokey_spd = array_create_ext(pokey_count, function() {
	return choose(-2, 2);
});