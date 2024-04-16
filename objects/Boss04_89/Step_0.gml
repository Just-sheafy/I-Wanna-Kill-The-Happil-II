var temp;

if (num > 0) {
	repeat(40){
	      temp = instance_create_depth(192+17, 544+23, -3, Boss04_33);
	      temp.speed = random_range(2, 12);
	      temp.direction = random_range(90, 180);
	}
	num -= 1;
	if (num <= 0) {
		with(player) { frozen = false; }
		instance_destroy();
	}
}