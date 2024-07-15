var i;

active = true;
total = 16;
for(i=0; i<total; i+=1) {
	trigger_id[i] = -1;
}

function trigger_activate() {
	active = true;
	return;
}