practice = false;
index = 0;

// Practice
if (global.practice >= 0) {
	with(CanS) {instance_destroy();}
	with(SavePoint2) instance_destroy();
	with(StageGet) instance_destroy();
    with(dark1) instance_destroy();
	alarm[11] = 1;
}