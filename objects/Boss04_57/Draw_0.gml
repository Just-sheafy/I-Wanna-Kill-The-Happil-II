var len, __attack, __col, __col2;

if (!surface_exists(surf)) {
	surf = surface_create(room_width, room_height);
}
if (!surface_exists(mask_surf)) {
	mask_surf = surface_create(w, h);
	
	surface_set_target(mask_surf);
	draw_clear(c_black);
	gpu_set_blendmode(bm_subtract);
	draw_sprite(sprBoss04_62, 0, 0, 0);
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
}

surface_set_target(surf);

draw_clear_alpha(c_black, 0);

// shader
if (world.shader_supported && shader_is_compiled(shdTornado)) {
	shader_set(shdTornado);
	shader_set_uniform_f(_time, t);
	shader_set_uniform_f_array(_resolution, resol);
	shader_set_uniform_f_array(_col, col);
	shader_set_uniform_f(_rot, rot);
	
	draw_set_color(c_white);
	draw_rectangle(0, 0, room_width, room_height, false);

	shader_reset();
}

// draw screen
with(Boss04_40) event_perform(ev_draw, ev_draw_normal);
with(Boss04_41) event_perform(ev_draw, ev_draw_normal);
with(Boss04_39) event_perform(ev_draw, ev_draw_normal);
with(Boss04_62) draw_self();
with(Boss04_63) draw_self();
with(Boss04_64) event_perform(ev_draw, ev_draw_normal);

// masking
gpu_set_blendmode(bm_subtract);
draw_surface_ext(mask_surf, 0, 0, room_width/w, room_height/h, 0, c_white, 1);
gpu_set_blendmode(bm_normal);

draw_sprite_ext(sprBoss04_62, 1, 0, 0, room_width/w, room_height/h, 0, c_white, 1);
draw_sprite_ext(sprBoss04_62, 2, 0, 0, room_width/w, room_height/h, 0, c_white, 1);

surface_reset_target();

draw_surface_ext(surf, x-sprite_get_xoffset(sprBoss04_15)*scale, y-sprite_get_yoffset(sprBoss04_15)*scale,
	sprite_get_width(sprBoss04_15)*scale/room_width, sprite_get_height(sprBoss04_15)*scale/room_height, 0, c_white, 1);


// info
draw_set_font(creditFont);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_white);

if (world.items[3]) {
	__attack = 34 + 4*(attack <= 2 || attack >= 8);
	len = 30 + 12 + string_width(string(key_restricted)) +
		__attack + 12 + string_width(string(attack)) +
		33 + 12 + string_width(string(defence)) +
		42 + 4 + string_width(string(t_spd));
	draw_sprite_ext(sprTime1, 0, x+(-len/2+15)*scale/4, y+208*scale/4,
		key_scale*scale/4, key_scale*scale/4, 0, c_white, alpha);
	draw_text_transformed_color(x+(-len/2+34)*scale/4, y+208*scale/4, key_restricted, scale/4, scale/4, 0,
		c_grey, c_grey, c_black, c_black, alpha);
	
	if (attack < 8) { __col = c_grey; __col2 = c_black; }
	else { __col = c_red; __col2 = c_maroon; }
	draw_sprite_ext(sprBoss04_56, (attack <= 2)? 0 : ((attack >= 8)? 2 : 1),
		x+(-len/2+42+string_width(string(key_restricted))+__attack/2)*scale/4, y+208*scale/4,
		attack_scale*(0.6+0.24*(attack <= 2))*scale/4, attack_scale*(0.6+0.24*(attack <= 2))*scale/4, 0, c_white, alpha);
	draw_text_transformed_color(x+(-len/2+42+string_width(string(key_restricted))+__attack+4)*scale/4,
		y+208*scale/4, attack, scale/4, scale/4, 0,
		__col, __col, __col2, __col2, alpha);
	
	draw_sprite_ext(sprBoss04_57, 0,
		x+(-len/2+42+string_width(string(key_restricted))+__attack+12+string_width(string(attack))+16)*scale/4,
		y+208*scale/4, defence_scale*0.78*scale/4, defence_scale*0.78*scale/4, 0, c_white, alpha);
	draw_text_transformed_color(x+(-len/2+42+string_width(string(key_restricted))+
		__attack+12+string_width(string(attack))+37)*scale/4,
		y+208*scale/4, defence, scale/4, scale/4, 0,
		c_grey, c_grey, c_black, c_black, alpha);
	
	draw_sprite_ext(sprBoss04_58, 0,
		x+(-len/2+42+string_width(string(key_restricted))+
		__attack+12+string_width(string(attack))+
		45+string_width(string(defence))+21)*scale/4,
		y+208*scale/4, t_spd_scale*0.47*scale/4, t_spd_scale*0.47*scale/4, 0, c_white, alpha);
	draw_text_transformed_color(x+(-len/2+42+string_width(string(key_restricted))+
		__attack+12+string_width(string(attack))+
		45+string_width(string(defence))+46)*scale/4,
		y+208*scale/4, t_spd, scale/4, scale/4, 0,
		c_grey, c_grey, c_black, c_black, alpha);
}