var temp;

instance_destroy();
temp = instance_create_depth(x, y, depth, block);
temp.visible = true;
temp.image_speed = 0;
temp.image_index = index;