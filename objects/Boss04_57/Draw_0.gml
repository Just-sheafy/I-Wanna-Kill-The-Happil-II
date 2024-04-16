var i, j, ii, jj, __w, __h, xxx, yyy;
var len, __attack, __c, __c2;

if (!surface_exists(surf))
	surf = surface_create(6*sprite_get_width(sprite_index), 6*sprite_get_height(sprite_index));

__w = surface_get_width(surf);
__h = surface_get_height(surf);

if (mode == 5 or mode == 6 or mode == 7 or mode == 8) {
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