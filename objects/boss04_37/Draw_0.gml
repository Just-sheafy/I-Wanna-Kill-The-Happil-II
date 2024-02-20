var r1, r2, shp, hpm, NUM;

draw_self();

if (alpha > 0 && world.items[0] && world.BH_ok) {
	if (!surface_exists(surf)) surf = surface_create(sprite_get_width(sprBoss04_h5), sprite_get_height(sprBoss04_h5));
	
	surface_set_target(surf);
	
	draw_clear_alpha(c_white, 0);
	
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_font(global.fontBoss04);
	draw_set_valign(fa_top);
	
	draw_sprite(sprBoss04_h5, 0, sprite_get_xoffset(sprBoss04_h5), sprite_get_yoffset(sprBoss04_h5));
	if (index == 0) {
		draw_set_halign(fa_left);
		draw_text(0, 0, name);
	} else {
		draw_set_halign(fa_right);
		draw_text(sprite_get_width(sprBoss04_h5), 0, name);
	}
	
	surface_reset_target();
	
	draw_set_alpha(alpha);
	draw_set_color(c_white);
	draw_primitive_begin_texture(pr_trianglelist, surface_get_texture(surf));

	NUM = 30;
	r1 = 64; r2 = 106;
	for(i=0; i<NUM; i+=1) {
	    draw_vertex_texture(x-r2*cos(degtorad(-30-image_angle+i*240/NUM)), y-r2*sin(degtorad(-30-image_angle+i*240/NUM)), i/NUM, 0);
	    draw_vertex_texture(x-r2*cos(degtorad(-30-image_angle+(i+1)*240/NUM)), y-r2*sin(degtorad(-30-image_angle+(i+1)*240/NUM)), (i+1)/NUM, 0);
	    draw_vertex_texture(x-r1*cos(degtorad(-30-image_angle+i*240/NUM)), y-r1*sin(degtorad(-30-image_angle+i*240/NUM)), i/NUM, 1);
	    draw_vertex_texture(x-r2*cos(degtorad(-30-image_angle+(i+1)*240/NUM)), y-r2*sin(degtorad(-30-image_angle+(i+1)*240/NUM)), (i+1)/NUM, 0);
	    draw_vertex_texture(x-r1*cos(degtorad(-30-image_angle+(i+1)*240/NUM)), y-r1*sin(degtorad(-30-image_angle+(i+1)*240/NUM)), (i+1)/NUM, 1);
	    draw_vertex_texture(x-r1*cos(degtorad(-30-image_angle+i*240/NUM)), y-r1*sin(degtorad(-30-image_angle+i*240/NUM)), i/NUM, 1);
	}

	draw_primitive_end();
	draw_primitive_begin_texture(pr_trianglelist, sprite_get_texture(sprBoss01_h4, 0));

	NUM = 60;
	r1 = 70; r2 = 88;
	shp = (index == 0)? Boss04_36.hp0 : Boss04_36.hp1;
	hpm = (index == 0)? Boss04_36.hpm0 : Boss04_36.hpm1;
	for(i=1; i<NUM-1; i+=1) {
	    if (shp/hpm > (i-1)/(NUM-2)) {
	        draw_vertex_texture(x-r2*cos(degtorad(-30-image_angle+i*240/NUM)), y-r2*sin(degtorad(-30-image_angle+i*240/NUM)), i/NUM, 0);
	        draw_vertex_texture(x-r2*cos(degtorad(-30-image_angle+(i+1)*240/NUM)), y-r2*sin(degtorad(-30-image_angle+(i+1)*240/NUM)), (i+1)/NUM, 0);
	        draw_vertex_texture(x-r1*cos(degtorad(-30-image_angle+i*240/NUM)), y-r1*sin(degtorad(-30-image_angle+i*240/NUM)), i/NUM, 1);
	        draw_vertex_texture(x-r2*cos(degtorad(-30-image_angle+(i+1)*240/NUM)), y-r2*sin(degtorad(-30-image_angle+(i+1)*240/NUM)), (i+1)/NUM, 0);
	        draw_vertex_texture(x-r1*cos(degtorad(-30-image_angle+(i+1)*240/NUM)), y-r1*sin(degtorad(-30-image_angle+(i+1)*240/NUM)), (i+1)/NUM, 1);
	        draw_vertex_texture(x-r1*cos(degtorad(-30-image_angle+i*240/NUM)), y-r1*sin(degtorad(-30-image_angle+i*240/NUM)), i/NUM, 1);
	    }
	}

	draw_primitive_end();
	draw_set_alpha(1);
}