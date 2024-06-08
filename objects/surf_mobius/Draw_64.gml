var i, j, NUM, NUM2, arg, xx, xx2, xxx, xxx2, yy, yy2;

if (world.shader_supported && shader_is_compiled(shdMobius)) {
	shader_set(shdMobius);
	shader_set_uniform_f(_time, t);
	shader_set_uniform_f(_time_init, t_init);
	shader_set_uniform_f_array(_resolution, resol);
	shader_set_uniform_f(_width, WIDTH);
	
	if (surface_exists(surface)) draw_surface(surface, 0, 0);
	shader_reset();
} else {
	NUM = 25;
	NUM2 = 6;

	draw_clear_alpha(c_black, 0);
	draw_primitive_begin_texture(pr_trianglelist, surface_get_texture(surface));

	arg = room_width/WIDTH;
	for(i=0; i<NUM; i+=1) {
	    xx = i/NUM; xx2 = (i+1)/NUM;
	    xxx = (xx - t/room_width)*arg/(2*arg);
	    xxx2 = (xx2 - t/room_width)*arg/(2*arg);
	    xxx = (xxx-floor(xxx))*(2*arg); xxx2 = (xxx2-floor(xxx2))*(2*arg);
	    for(j=0; j<NUM2; j+=1) {
	        yy = j/NUM2; yy2 = (j+1)/NUM2;
	        draw_vertex_texture(room_width*xx, room_height*yy + (1-2*yy)*(1+scr_ease_cos(xxx, arg-1))*t_init/2, xx, yy);
	        draw_vertex_texture(room_width*xx2, room_height*yy + (1-2*yy)*(1+scr_ease_cos(xxx2, arg-1))*t_init/2, xx2, yy);
	        draw_vertex_texture(room_width*xx, room_height*yy2 + (1-2*yy2)*(1+scr_ease_cos(xxx, arg-1))*t_init/2, xx, yy2);
	        draw_vertex_texture(room_width*xx2, room_height*yy + (1-2*yy)*(1+scr_ease_cos(xxx2, arg-1))*t_init/2, xx2, yy);
	        draw_vertex_texture(room_width*xx, room_height*yy2 + (1-2*yy2)*(1+scr_ease_cos(xxx, arg-1))*t_init/2, xx, yy2);
	        draw_vertex_texture(room_width*xx2, room_height*yy2 + (1-2*yy2)*(1+scr_ease_cos(xxx2, arg-1))*t_init/2, xx2, yy2);
	    }
	}

	draw_primitive_end();
}

// exceptional
if (world.items[0] and world.BH_ok) { with(Boss04_h3) event_perform(ev_draw, ev_draw_normal); }
with(Boss04_51) draw_self();