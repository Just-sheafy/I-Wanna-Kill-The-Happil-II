global.practice -= 100;

if (global.practice != 8) {
	// Phase 2
	if !instance_exists(player) or !world.re_nodie {exit;}
	player.x = 369;
	world.re_nodie = false;
	saveControls();
	with(world) {
	    saveEncrypt();
	    saveDeaths();
	}
}