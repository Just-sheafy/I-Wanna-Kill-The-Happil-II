global.practice -= 200;
if (global.practice == 10) {
	// Avoidance first part
} else if (global.practice == 11) {
	// Avoidance second part
	with(player) { x = 384 + 17; y = 320 + 23; }
	
	patt = 1600;
	with(objTime1) time -= 1600;
	alarm[0] = 0;
	event_perform(ev_alarm, 0);
}