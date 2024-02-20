var dd = sin(degtorad(d)), cam = view_camera[0];

draw_set_alpha(alpha);
draw_set_color(c_black);
draw_rectangle(camera_get_view_x(cam), camera_get_view_x(cam),
	camera_get_view_x(cam)+camera_get_view_width(cam), camera_get_view_x(cam)+camera_get_view_height(cam), false);

if (mode == 0) {
    draw_sprite_ext(sprBoss01Sr_10, -1, x, y, 1, 1, 0, c_white, alpha);
    draw_sprite_ext(spr_key_arrows, 3, x+120+6*dd, y, 1, 1, 0, c_white, alpha);
    draw_sprite_ext(spr_key_arrows, 1, x, y-120-6*dd, 1, 1, 0, c_white, alpha);
    draw_sprite_ext(spr_key_arrows, 2, x-120-6*dd, y, 1, 1, 0, c_white, alpha);
    draw_sprite_ext(spr_key_arrows, 0, x, y+120+6*dd, 1, 1, 0, c_white, alpha);
} else {
    draw_set_color(c_white);
    
    draw_sprite_ext(sprBoss01Sr_11, -1, x, y, 1, 1, 0, c_white, alpha);
    draw_sprite_ext(spr_key_arrows, 3, x+136+6*dd, y, 1, 1, 0, c_white, alpha);
    draw_sprite_ext(spr_key_arrows, 2, x-136-6*dd, y, 1, 1, 0, c_white, alpha);
    
    draw_sprite_ext(spr_key_arrows, 1, x-144-2*dd, y-128-4*dd, 1, 1, 0, c_white, alpha);
    draw_line_width(x-108-2*dd, y-128-4*dd, x-84-2*dd, y-128-4*dd, 4);
    draw_line_width(x-96-2*dd, y-140-4*dd, x-96-2*dd, y-116-4*dd, 4);
    draw_sprite_ext(spr_key_arrows, 2, x-48-2*dd, y-128-4*dd, 1, 1, 0, c_white, alpha);
    
    draw_sprite_ext(spr_key_arrows, 1, x+48+2*dd, y-128-4*dd, 1, 1, 0, c_white, alpha);
    draw_line_width(x+108+2*dd, y-128-4*dd, x+84+2*dd, y-128-4*dd, 4);
    draw_line_width(x+96+2*dd, y-140-4*dd, x+96+2*dd, y-116-4*dd, 4);
    draw_sprite_ext(spr_key_arrows, 3, x+144+2*dd, y-128-4*dd, 1, 1, 0, c_white, alpha);
    
    draw_sprite_ext(spr_key_arrows, 0, x-144-2*dd, y+128+4*dd, 1, 1, 0, c_white, alpha);
    draw_line_width(x-108-2*dd, y+128+4*dd, x-84-2*dd, y+128+4*dd, 4);
    draw_line_width(x-96-2*dd, y+140+4*dd, x-96-2*dd, y+116+4*dd, 4);
    draw_sprite_ext(spr_key_arrows, 2, x-48-2*dd, y+128+4*dd, 1, 1, 0, c_white, alpha);
    
    draw_sprite_ext(spr_key_arrows, 0, x+48+2*dd, y+128+4*dd, 1, 1, 0, c_white, alpha);
    draw_line_width(x+108+2*dd, y+128+4*dd, x+84+2*dd, y+128+4*dd, 4);
    draw_line_width(x+96+2*dd, y+140+4*dd, x+96+2*dd, y+116+4*dd, 4);
    draw_sprite_ext(spr_key_arrows, 3, x+144+2*dd, y+128+4*dd, 1, 1, 0, c_white, alpha);
}

draw_set_alpha(1);