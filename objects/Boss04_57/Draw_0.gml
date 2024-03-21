var i, j, ii, jj, __w, __h, xxx, yyy;
var len, __attack, __c, __c2;

__w = surface_get_width(surf);
__h = surface_get_height(surf);

if (mode == 5 or mode == 6) {
	draw_surface_ext(surf, xx-_xoffset, yy-_yoffset, 1, 1, 0, c_white, 1);
} else {
	draw_set_color(c_white);
	draw_primitive_begin_texture(pr_trianglelist, surface_get_texture(surf));

	for(i=0; i<=7; i+=1) {
	    for(j=0; j<=7; j+=1) {
	        ii = i; jj = j;
	        xxx = xx - CX + (ii-4)*__w/8;
	        yyy = yy - CY + (jj-4)*__h/8;
	        draw_vertex_texture(CX + xxx*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125),
	            CY + yyy*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125), ii/8, jj/8);
        
	        ii = i+1; jj = j;
	        xxx = xx - CX + (ii-4)*__w/8;
	        yyy = yy - CY + (jj-4)*__h/8;
	        draw_vertex_texture(CX + xxx*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125),
	            CY + yyy*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125), ii/8, jj/8);
        
	        ii = i; jj = j+1;
	        xxx = xx - CX + (ii-4)*__w/8;
	        yyy = yy - CY + (jj-4)*__h/8;
	        draw_vertex_texture(CX + xxx*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125),
	            CY + yyy*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125), ii/8, jj/8);
	    }
	}

	for(i=0; i<=7; i+=1) {
	    for(j=0; j<=7; j+=1) {        
	        ii = i+1; jj = j+1;
	        xxx = xx - CX + (ii-4)*__w/8;
	        yyy = yy - CY + (jj-4)*__h/8;
	        draw_vertex_texture(CX + xxx*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125),
	            CY + yyy*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125), ii/8, jj/8);
        
	        ii = i; jj = j+1;
	        xxx = xx - CX + (ii-4)*__w/8;
	        yyy = yy - CY + (jj-4)*__h/8;
	        draw_vertex_texture(CX + xxx*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125),
	            CY + yyy*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125), ii/8, jj/8);
        
	        ii = i+1; jj = j;
	        xxx = xx - CX + (ii-4)*__w/8;
	        yyy = yy - CY + (jj-4)*__h/8;
	        draw_vertex_texture(CX + xxx*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125),
	            CY + yyy*125/(zz+sqrt(xxx*xxx+yyy*yyy)/5+125), ii/8, jj/8);
	    }
	}

	draw_primitive_end();
}


/*
if (!surface_exists(surf_room)) {
	surf_room = surface_create(room_width, room_height);
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

surface_set_target(surf_room);

draw_clear_alpha(c_black, 0);

// shader
if (world.shader_supported && shader_is_compiled(shdTornado)) {
	shader_set(shdTornado);
	shader_set_uniform_f(__time, _t);
	shader_set_uniform_f_array(__resolution, _resol);
	shader_set_uniform_f_array(__col, _col);
	shader_set_uniform_f(__rot, _rot);
	
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

draw_surface_ext(surf_room, x-sprite_get_xoffset(sprBoss04_15)*scale, y-sprite_get_yoffset(sprBoss04_15)*scale,
	sprite_get_width(sprBoss04_15)*scale/room_width, sprite_get_height(sprBoss04_15)*scale/room_height, 0, c_white, 1);
*/


/*
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
	
	if (attack < 8) { __c = c_grey; __c2 = c_black; }
	else { __c = c_red; __c2 = c_maroon; }
	draw_sprite_ext(sprBoss04_56, (attack <= 2)? 0 : ((attack >= 8)? 2 : 1),
		x+(-len/2+42+string_width(string(key_restricted))+__attack/2)*scale/4, y+208*scale/4,
		attack_scale*(0.6+0.24*(attack <= 2))*scale/4, attack_scale*(0.6+0.24*(attack <= 2))*scale/4, 0, c_white, alpha);
	draw_text_transformed_color(x+(-len/2+42+string_width(string(key_restricted))+__attack+4)*scale/4,
		y+208*scale/4, attack, scale/4, scale/4, 0,
		__c, __c, __c2, __c2, alpha);
	
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