if (layer_exists("Background")) {
	xx = layer_get_x(layer_get_id("Background"))+610;
	if (num == -1) {
		num_init = floor(xx/room_width);
		num_before = num_init;
		num = num_init;
	} else num = floor(xx/room_width);
	xx -= room_width*num_before;
	
	if (num_before < num) {
		var i, l = ds_list_create();
		
		xx -= room_width*(num-num_before);
		num_before = num;
		index_before = index;
		index = index_after;
		
		for(i=1; i<10; i+=1) ds_list_add(l, i);
		if (hint_appeared || num_before < 5) {
			ds_list_delete_element(l, 9);
		}
		ds_list_delete_element(l, index_before);
		ds_list_delete_element(l, index);
		ds_list_shuffle(l);
		
		index_after = ds_list_find_value(l, 0);
		if (index_after == 9) hint_appeared = true;
		
		ds_list_destroy(l);
	}
}