var i;

for(i=0; i<total; i+=1) {
	if (instance_exists(array_trigger[i])) {
		array_trigger[i].active = true;
		with(array_trigger[i]) event_user(0);
	}
}
instance_destroy();