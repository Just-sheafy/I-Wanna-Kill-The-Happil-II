var i, j, ii, jj, __w, __h, xxx, yyy;

if (!surface_exists(surf))
	surf = surface_create(4*sprite_get_width(sprite_index), 4*sprite_get_height(sprite_index));

__w = surface_get_width(surf);
__h = surface_get_height(surf);

if (mode == 0) {
	draw_surface_ext(surf, xx-_xoffset, yy-_yoffset, 1, 1, 0, c_white, 1);
} else {
	draw_set_color(c_white);
	draw_primitive_begin_texture(pr_trianglelist, surface_get_texture(surf));

	for(i=0; i<=3; i+=1) {
		for(j=0; j<=3; j+=1) {
		    ii = i; jj = j;
		    xxx = xx - CX + (ii-2)*__w/4;
		    yyy = yy - CY + (jj-2)*__h/4;
		    draw_vertex_texture((1-lambda)*(xx-_xoffset+__w*ii/4) + lambda*(CX+xxx*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125)),
		        (1-lambda)*(yy-_yoffset+__h*jj/4) + lambda*(CY+yyy*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125)), ii/4, jj/4);
        
		    ii = i+1; jj = j;
		    xxx = xx - CX + (ii-2)*__w/4;
		    yyy = yy - CY + (jj-2)*__h/4;
		    draw_vertex_texture((1-lambda)*(xx-_xoffset+__w*ii/4) + lambda*(CX+xxx*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125)),
		        (1-lambda)*(yy-_yoffset+__h*jj/4) + lambda*(CY+yyy*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125)), ii/4, jj/4);
        
		    ii = i; jj = j+1;
		    xxx = xx - CX + (ii-2)*__w/4;
		    yyy = yy - CY + (jj-2)*__h/4;
		    draw_vertex_texture((1-lambda)*(xx-_xoffset+__w*ii/4) + lambda*(CX+xxx*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125)),
		        (1-lambda)*(yy-_yoffset+__h*jj/4) + lambda*(CY+yyy*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125)), ii/4, jj/4);
		}
	}

	for(i=0; i<=3; i+=1) {
		for(j=0; j<=3; j+=1) {        
		    ii = i+1; jj = j+1;
		    xxx = xx - CX + (ii-2)*__w/4;
		    yyy = yy - CY + (jj-2)*__h/4;
		    draw_vertex_texture((1-lambda)*(xx-_xoffset+__w*ii/4) + lambda*(CX+xxx*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125)),
		        (1-lambda)*(yy-_yoffset+__h*jj/4) + lambda*(CY+yyy*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125)), ii/4, jj/4);
        
		    ii = i; jj = j+1;
		    xxx = xx - CX + (ii-2)*__w/4;
		    yyy = yy - CY + (jj-2)*__h/4;
		    draw_vertex_texture((1-lambda)*(xx-_xoffset+__w*ii/4) + lambda*(CX+xxx*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125)),
		        (1-lambda)*(yy-_yoffset+__h*jj/4) + lambda*(CY+yyy*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125)), ii/4, jj/4);
        
		    ii = i+1; jj = j;
		    xxx = xx - CX + (ii-2)*__w/4;
		    yyy = yy - CY + (jj-2)*__h/4;
		    draw_vertex_texture((1-lambda)*(xx-_xoffset+__w*ii/4) + lambda*(CX+xxx*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125)),
		        (1-lambda)*(yy-_yoffset+__h*jj/4) + lambda*(CY+yyy*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125)), ii/4, jj/4);
		}
	}

	draw_primitive_end();
}