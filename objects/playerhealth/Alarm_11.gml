var temp;

if (type == 0) {
	hp = (choose(0, 1))? irandom_range(0, 10) : irandom_range(11, 120);
	alarm[11] = 15;
} else if (type == 1) {
	temp = irandom_range(8, 12);
	hp = irandom_range(power(10, temp), power(10, temp+1)-1);
	alarm[11] = 5;
} else if (type == 2) {
	hp = (choose(0, 1))? irandom_range(0, 12) : irandom_range(13, 54);
	alarm[11] = 25;
}