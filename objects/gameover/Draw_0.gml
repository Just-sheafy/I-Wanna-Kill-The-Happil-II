if (event == 0) {
	if a {
	    draw_set_alpha(0.5);
	    draw_rectangle_color(x-h, y-d, x, y+d, c_red, c_red, c_red, c_red, 0);
	    draw_set_alpha(1);
    
	    gpu_set_blendmode_ext(bm_inv_dest_color, bm_inv_dest_color);
	    draw_rectangle_color(x+1, y-d, x+h, y+d, c_white, c_white, c_white, c_white, 0);
	    draw_set_color(c_black);
	    gpu_set_blendmode(bm_normal);
	}
	if b {
	    gpu_set_blendmode(bm_subtract);
	    draw_rectangle_color(x-600+10*c, y-304, x-400+10*c, y+304, c_white, c_black, c_black, c_white, 0);
	    draw_rectangle_color(x+400-10*c, y-304, x+600-10*c, y+304, c_black, c_white, c_white, c_black, 0);
	    gpu_set_blendmode(bm_normal);
	}
	draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
} else if (event == 1) {
	var i, j, rx, ry;
	
	for(i=0; i<608/64; i+=1) {
        for(j=0; j<800/64; j+=1) {
            rx = irandom_range(0, 31); ry = irandom_range(0, 31);
            draw_sprite_part_ext(sprBoss04_65, current_time+i+j, rx, ry, 32, 32, 64*j, 64*i, 2, 2, c_white, min(patt/80, 1));
        }
    }
}