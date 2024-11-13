if (!firstTouch) {
    var i, j, ind, cam = view_camera[0];
    
    for(i=0; i<NUM_ITEM; i+=1) {
        draw_primitive_begin(pr_trianglefan);
        draw_vertex_colour(camera_get_view_x(cam) + 96 + 112*i, camera_get_view_y(cam) + 528, c_gray, 0.5);
        for(j=0; j<25; j+=1) {
            draw_vertex_colour(camera_get_view_x(cam) + 96 + 112*i + lengthdir_x(48, 15*j),
                camera_get_view_y(cam) + 528 + lengthdir_y(48, 15*j), c_white, 0);
        }
        draw_primitive_end();
        if (items[i] != -1) {
            ind = 0;
            if (items_spr[i] == sprFruit) ind = (cherry_index < 15);
            if (holding != i) draw_sprite(items_spr[i], ind, camera_get_view_x(cam) + 96 + 112*i, camera_get_view_y(cam) + 528);
            else draw_sprite(items_spr[i], ind, mouse_x, mouse_y);
        }
    }
	
	if (text_show != "") {
	    draw_primitive_begin(pr_trianglefan);
	    draw_vertex_colour(camera_get_view_x(cam) + 528, camera_get_view_y(cam) + 528, c_gray, 0.8);
	    for(j=0; j<25; j+=1) {
	        draw_vertex_colour(camera_get_view_x(cam) + 528 + lengthdir_x(240, 15*j),
	            camera_get_view_y(cam) + 528 + lengthdir_y(48, 15*j), c_white, 0);
	    }
	    draw_primitive_end();
		
		draw_set_font(pauseFont24);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_color(c_black);
		for(i=-2; i<=2; i+=1) {
			for(j=-2; j<=2; j+=1) {
				draw_text_transformed(camera_get_view_x(cam) + 528 + i, camera_get_view_y(cam) + 528 + j, text_show, 0.8, 0.8, 0);
			}
		}
		draw_set_color(c_white);
		draw_text_transformed(camera_get_view_x(cam) + 528, camera_get_view_y(cam) + 528, text_show, 0.8, 0.8, 0);
	}
}