event_inherited();

function trigger_activate() {
	var i;
	
	if (active) {
		for(i=0; i<total; i+=1) {
			with(trigger_id[i]) {
				instance_destroy();
			    var temp = instance_create_layer(x, y, "Player", disappearingBlock);
			    temp.sprite_index = sprite_index;
			    temp.image_index = image_index;
			    temp.visible = true;
			}
		}
		instance_destroy();
	}
}