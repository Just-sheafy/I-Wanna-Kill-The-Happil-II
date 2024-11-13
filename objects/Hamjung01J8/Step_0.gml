var i, temp, triggered, triggered_obj;

ftn_step();

triggered = false;
triggered_obj = -1;
if (trigger_id != -1) {
    if (instance_exists(trigger_id)) {
		trigger_id.collectable = !is_action;
        triggered_obj = trigger_id.object_index;
        triggered = true;
    } else trigger_id = -1;
}

ftn_trigger(triggered, triggered_obj);