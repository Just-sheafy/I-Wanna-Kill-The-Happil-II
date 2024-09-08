trigger_activate = function() {
	var temp;
	
	active = true;
	temp = instance_create_depth(x, y, -10, Hamjung01D1);
	temp.image_xscale = 4;
	temp.image_yscale = 8;
	temp.timer = 0;
	with(temp) {
		block_id = instance_create_depth(x, y, 0, block);
		block_id.visible = false;
		block_id.image_xscale = image_xscale;
		block_id.image_yscale = image_yscale;
	}
	inst_3BB4D1DA.trigger_id[0] = temp;
	return;
}