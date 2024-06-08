global.practice -= 400;

if (global.practice == 2) {
	// Contrary first part
} else if (global.practice == 3) {
	// Contrary second part
	with(player) { x = 224 + 17; y = 320 + 8; }
	
	patt = 734;
	with(objTime1) time -= 734;
	alarm[0] = 0;
	alarm[1] -= 734;
	event_perform(ev_alarm, 0);
}