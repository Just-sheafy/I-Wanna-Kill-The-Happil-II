instance_create_depth(x+220, y-226, 0, Boss01_23);
a = 1;
with(player) {
    instance_destroy();
	var zx = instance_create_depth(x, y, -2, Boss02_60);
    zx.direction = point_direction(x, y, Boss01_27.x+220, Boss01_27.y-226);
	zx.speed = point_distance(x, y, Boss01_27.x+220, Boss01_27.y-226)/92;
}
with(playerHealth) {not_check = true;}
alarm[2] = 52;
sprite_index = sprBoss01_25;