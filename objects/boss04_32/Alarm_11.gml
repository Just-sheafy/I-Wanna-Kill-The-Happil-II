if (sprite_index == sprPlayerIdle or sprite_index == sprPlayerRunning) {
	alpha = min(1, alpha+0.2);
	alarm[11] = 20;
} else {
	alpha = max(0, alpha-0.25);
	alarm[11] = 20;
}
