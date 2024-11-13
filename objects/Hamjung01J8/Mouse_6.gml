var i, text = "";

if (trigger_id != -1 && instance_exists(trigger_id)) {
	text = "trigger_id: " + object_get_name(trigger_id.object_index) + "\n";
} else text = "trigger_id: noone\n"

for(i=0; i<total; i+=1) {
	if (exists_action_obj(i)) {
		text += "action_obj[" + string(i) + "]: " + object_get_name(action_obj[i].object_index) + "\n";
	}
}

show_message(text);