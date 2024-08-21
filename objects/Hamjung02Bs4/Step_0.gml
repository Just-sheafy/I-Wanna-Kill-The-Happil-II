if (appear_time > 0) {
	appear_time -= 1;
	
	if (appear_time <= 0) {
		visible = true;
		var temp = instance_create_layer(x-16, y-16, "Player", block);
		temp.image_index = 9;
		temp.visible = false;
		block_id = temp;
	}
}

if (visible) {
	image_alpha = min(image_alpha+0.1, 1);
	if (block_id == -1 || !instance_exists(block_id)) {
		block_id = -1;
		appear_time = 150;
		visible = false;
		image_alpha = 0;
	}
}

patt += 1;
if (patt >= 300) patt -= 300;

if (patt > 100) {
    if (patt <= 110) {
        image_angle -= 9;
        scale += 0.04;
    } else if (patt <= 120) {
        image_angle -= 9;
        scale -= 0.04;
    }
}
if (patt > 135) {
    if (patt <= 145) {
        image_angle -= 9;
        scale += 0.04;
    } else if (patt <= 155) {
        image_angle -= 9;
        scale -= 0.04;
    }
}