global.practice -= 400;

if (global.practice == 4) {
	// Catastrophe first part
} else if (global.practice == 5) {
	// Catastrophe second part
	with(player) { x = 224 + 17; y = 256 + 23; max_hspd = 6; }
	
	patt = 1005;
	with(objTime1) time -= 1005;
	alarm[2] = 0;
	alarm[3] -= 1005;
	event_perform(ev_alarm, 2);
}