if (!world.HEALTH_ok and !troll) { instance_destroy(); exit; }

if (time > 0) time -= 1;
else is_eaten = true;

if (!is_eaten) {
	if (image_alpha < 1) image_alpha += 0.05;
} else {
	if (image_alpha > 0) image_alpha -= 0.1;
	else instance_destroy();
}