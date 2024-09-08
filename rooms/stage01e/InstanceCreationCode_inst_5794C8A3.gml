trigger_activate = function() {
	var i, temp;
	
	active = true;
	instance_create_layer(x+32, y, "Player", block);
	instance_create_layer(x+32, y+32, "Player", block);
	instance_create_layer(x+96, y, "Player", block);
	instance_create_layer(x+96, y+32, "Player", block);
	instance_create_layer(x, y+96, "Player", block);
	instance_create_layer(x+128, y+96, "Player", block);
	instance_create_layer(x+32, y+128, "Player", block);
	temp = instance_create_layer(x+64, y+128, "Player", block);
	temp.image_index = 1;
	instance_create_layer(x+96, y+128, "Player", block);
	return;
}