var temp;

if (mode == 0 && other.y == 384 && y >= 384) {
	temp = instance_create_depth(other.x, other.y, other.depth, Boss01Sr_4);
	temp.index = other.image_index;
	temp.alarm[0] = 400;
	with(temp) event_perform(ev_step, ev_step_end);
	with(other) instance_destroy();
	instance_destroy();
}