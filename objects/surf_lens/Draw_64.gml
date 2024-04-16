if (!world.screen_effect_enable or !surface_exists(surface)) exit;

var tt, i, j, ii, jj, w, h, xx, yy, rr, xxx, yyy, _ox, _oy;
var cam_x, cam_y, cam = view_camera[0];

cam_x = camera_get_view_x(cam);
cam_y = camera_get_view_y(cam);

w = surface_get_width(surface);
h = surface_get_height(surface);
_ox = w/2; _oy = h/2;
if (sid != -1 && instance_exists(sid)) {
	_ox = sid.x + ox;
	_oy = sid.y + oy;
}

draw_clear(c_black);
draw_set_color(c_white);
if (t <= 450 && twist == 1) {
	draw_surface(surface, 0, 0);
} else {
	draw_primitive_begin_texture(pr_trianglelist, surface_get_texture(surface));
	tt = (t > 450)? scr_ease_cubic((t-450)/100) : 0;

	for(i=0; i<8; i+=1) {
	    for(j=0; j<8; j+=1) {
	        ii = i; jj = j;
			if (twist < 1) {
		        xx = ii*w/8-_ox; yy = jj*h/8-_oy; rr = sqrt(xx*xx+yy*yy);
		        if (rr > radius) {
					xxx = xx+_ox+cam_x-w/2; yyy = yy+_oy+cam_y-h/2;
		        } else {
		            xxx = _ox + cam_x - w/2 + xx*power(rr/radius, 1-twist);
		            yyy = _oy + cam_y - h/2 + yy*power(rr/radius, 1-twist);
		        }
			} else { xxx = ii*w/8-w/2; yyy = jj*h/8-h/2; }
	        draw_vertex_texture(lerp(room_width/2+xxx, pos3Dx(xxx, yyy, zz, exponent), tt),
	            lerp(room_height/2+yyy, pos3Dy(xxx, yyy, zz, exponent), tt), ii/8, jj/8);
        
	        ii = i+1; jj = j;
			if (twist < 1) {
		        xx = ii*w/8-_ox; yy = jj*h/8-_oy; rr = sqrt(xx*xx+yy*yy);
		        if (rr > radius) {
					xxx = xx+_ox+cam_x-w/2; yyy = yy+_oy+cam_y-h/2;
		        } else {
		            xxx = _ox + cam_x - w/2 + xx*power(rr/radius, 1-twist);
		            yyy = _oy + cam_y - h/2 + yy*power(rr/radius, 1-twist);
		        }
			} else { xxx = ii*w/8-w/2; yyy = jj*h/8-h/2; }
	        draw_vertex_texture(lerp(room_width/2+xxx, pos3Dx(xxx, yyy, zz, exponent), tt),
	            lerp(room_height/2+yyy, pos3Dy(xxx, yyy, zz, exponent), tt), ii/8, jj/8);
        
	        ii = i; jj = j+1;
			if (twist < 1) {
		        xx = ii*w/8-_ox; yy = jj*h/8-_oy; rr = sqrt(xx*xx+yy*yy);
		        if (rr > radius) {
					xxx = xx+_ox+cam_x-w/2; yyy = yy+_oy+cam_y-h/2;
		        } else {
		            xxx = _ox + cam_x - w/2 + xx*power(rr/radius, 1-twist);
		            yyy = _oy + cam_y - h/2 + yy*power(rr/radius, 1-twist);
		        }
			} else { xxx = ii*w/8-w/2; yyy = jj*h/8-h/2; }
	        draw_vertex_texture(lerp(room_width/2+xxx, pos3Dx(xxx, yyy, zz, exponent), tt),
	            lerp(room_height/2+yyy, pos3Dy(xxx, yyy, zz, exponent), tt), ii/8, jj/8);
	    }
	}

	for(i=0; i<8; i+=1) {
	    for(j=0; j<8; j+=1) {        
	        ii = i+1; jj = j+1;
			if (twist < 1) {
		        xx = ii*w/8-_ox; yy = jj*h/8-_oy; rr = sqrt(xx*xx+yy*yy);
		        if (rr > radius) {
					xxx = xx+_ox+cam_x-w/2; yyy = yy+_oy+cam_y-h/2;
		        } else {
		            xxx = _ox + cam_x - w/2 + xx*power(rr/radius, 1-twist);
		            yyy = _oy + cam_y - h/2 + yy*power(rr/radius, 1-twist);
		        }
			} else { xxx = ii*w/8-w/2; yyy = jj*h/8-h/2; }
	        draw_vertex_texture(lerp(room_width/2+xxx, pos3Dx(xxx, yyy, zz, exponent), tt),
	            lerp(room_height/2+yyy, pos3Dy(xxx, yyy, zz, exponent), tt), ii/8, jj/8);
        
	        ii = i; jj = j+1;
			if (twist < 1) {
		        xx = ii*w/8-_ox; yy = jj*h/8-_oy; rr = sqrt(xx*xx+yy*yy);
		        if (rr > radius) {
					xxx = xx+_ox+cam_x-w/2; yyy = yy+_oy+cam_y-h/2;
		        } else {
		            xxx = _ox + cam_x - w/2 + xx*power(rr/radius, 1-twist);
		            yyy = _oy + cam_y - h/2 + yy*power(rr/radius, 1-twist);
		        }
			} else { xxx = ii*w/8-w/2; yyy = jj*h/8-h/2; }
	        draw_vertex_texture(lerp(room_width/2+xxx, pos3Dx(xxx, yyy, zz, exponent), tt),
	            lerp(room_height/2+yyy, pos3Dy(xxx, yyy, zz, exponent), tt), ii/8, jj/8);
        
	        ii = i+1; jj = j;
			if (twist < 1) {
		        xx = ii*w/8-_ox; yy = jj*h/8-_oy; rr = sqrt(xx*xx+yy*yy);
		        if (rr > radius) {
					xxx = xx+_ox+cam_x-w/2; yyy = yy+_oy+cam_y-h/2;
		        } else {
		            xxx = _ox + cam_x - w/2 + xx*power(rr/radius, 1-twist);
		            yyy = _oy + cam_y - h/2 + yy*power(rr/radius, 1-twist);
		        }
			} else { xxx = ii*w/8-w/2; yyy = jj*h/8-h/2; }
	        draw_vertex_texture(lerp(room_width/2+xxx, pos3Dx(xxx, yyy, zz, exponent), tt),
	            lerp(room_height/2+yyy, pos3Dy(xxx, yyy, zz, exponent), tt), ii/8, jj/8);
	    }
	}

	draw_primitive_end();
}

if (assault && instance_exists(player)) {
	var xx;
	
	if (vis) draw_sprite_ext(deadHead, 0, room_width-48+12, 16+16, 2, 2, 0, c_white, 1);
	if (width > 0) {
	    draw_set_color(c_yellow);
	    draw_set_alpha(alpha);
	    draw_rectangle(room_width-56-width, 16, room_width-56, 16+32, false);
	    draw_set_alpha(1);
    
	    draw_sprite_ext(sprBoss04_60, 0, room_width-56-width, 16, 1, 1, 0, c_white, 1);
	    draw_sprite_ext(sprBoss04_60, 0, room_width-56, 16, 1, 1, 270, c_white, 1);
	    draw_sprite_ext(sprBoss04_60, 0, room_width-56, 16+32, 1, 1, 180, c_white, 1);
	    draw_sprite_ext(sprBoss04_60, 0, room_width-56-width, 16+32, 1, 1, 90, c_white, 1);
    
	    if (t2 >= 100) {
	        xx = 1.5*(t2-100)-300*floor(1.5*(t2-100)/300);
	        if (xx <= width) {
	            if (t2 >= 260) draw_sprite_part(sprBoss04_61, 0, xx+300-width, 0, width-xx, 32, room_width-56-width, 16);
	            draw_sprite_part(sprBoss04_61, 0, 0, 0, xx, 32, room_width-56-xx, 16);
	        } else if (xx <= 300) draw_sprite_part(sprBoss04_61, 0, xx-width, 0, width, 32, room_width-56-width, 16);
	    }
	}
}