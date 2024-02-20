instance_create_depth(400, 384, -1, Boss04_55);
instance_create_depth(400, 364, -2, player);
with(Boss04_55) { frozen = true; visible = false; }
with(player) { frozen = true; visible = false; }

with(world) {
	if (!credit_loaded) {
		credit_loaded = true;
		sprite_prefetch(spr_credit_screen);
	}
}