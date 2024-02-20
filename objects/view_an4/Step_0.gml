if (!world.screen_effect_enable) {
    instance_destroy(); exit;
}

if instance_exists(player) {
	if (noise > 0) noise -= noise_dec;
	else instance_destroy();
	
    if (asdf > 0) asdf -= a;
    else instance_destroy();
} else {
    instance_destroy();
}