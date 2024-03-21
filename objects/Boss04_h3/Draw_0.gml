var w, h, alpha, num, i, j, ii, jj, xxx, yyy, zzz;

if (!surface_exists(surf)) surf = surface_create(309, 64);

w = surface_get_width(surf);
h = surface_get_height(surf);

num = ds_list_size(x_list)/2;
if (num > 1) {
    draw_set_color(c_white);
    draw_primitive_begin_texture(pr_trianglelist, sprite_get_texture(sprBoss04_63, 0));
    for(i=0; i<num-1; i+=1) {
        if (is_effect) draw_set_alpha((18-num+i)/18);
        else draw_set_alpha(i/18);
        draw_vertex_texture(ds_list_find_value(x_list, i*2), ds_list_find_value(y_list, i*2), 0, 0);
        if (is_effect) draw_set_alpha((18-num+i)/18);
        else draw_set_alpha(i/18);
        draw_vertex_texture(ds_list_find_value(x_list, i*2+1), ds_list_find_value(y_list, i*2+1), 1, 0);
        if (is_effect) draw_set_alpha((18-num+i+1)/18);
        else draw_set_alpha((i+1)/18);
        draw_vertex_texture(ds_list_find_value(x_list, i*2+2), ds_list_find_value(y_list, i*2+2), 0, 1);
        
        if (is_effect) draw_set_alpha((18-num+i)/18);
        else draw_set_alpha(i/18);
        draw_vertex_texture(ds_list_find_value(x_list, i*2+1), ds_list_find_value(y_list, i*2+1), 1, 0);
        if (is_effect) draw_set_alpha((18-num+i+1)/18);
        else draw_set_alpha((i+1)/18);
        draw_vertex_texture(ds_list_find_value(x_list, i*2+2), ds_list_find_value(y_list, i*2+2), 0, 1);
        if (is_effect) draw_set_alpha((18-num+i+1)/18);
        else draw_set_alpha((i+1)/18);
        draw_vertex_texture(ds_list_find_value(x_list, i*2+3), ds_list_find_value(y_list, i*2+3), 1, 1);
    }
    draw_primitive_end();
    draw_set_alpha(1);
}

if (mode == 0) {
    draw_surface_ext(surf, x-ox, y-oy, 1, 1, 0, c_white, image_alpha);
} else {
    draw_set_color(c_white);
    draw_primitive_begin_texture(pr_trianglelist, surface_get_texture(surf));
    
    for(i=0; i<=7; i+=1) {
        ii = i; jj = 0;
        alpha = (w*ii/8-ox)/(w-4-ox);
        xxx = alpha * r; zzz = (1-alpha) * zz1 + alpha * zz2;
        yyy = (3 - zzz/50)*(h*jj-oy); if (reflect) yyy *= -1;
        draw_vertex_texture(xx1 + c*xxx + s*yyy, yy1 - s*xxx + c*yyy, ii/8, jj);
        
        ii = i+1; jj = 0;
        alpha = (w*ii/8-ox)/(w-4-ox);
        xxx = alpha * r; zzz = (1-alpha) * zz1 + alpha * zz2;
        yyy = (3 - zzz/50)*(h*jj-oy); if (reflect) yyy *= -1;
        draw_vertex_texture(xx1 + c*xxx + s*yyy, yy1 - s*xxx + c*yyy, ii/8, jj);
        
        ii = i; jj = 1;
        alpha = (w*ii/8-ox)/(w-4-ox);
        xxx = alpha * r; zzz = (1-alpha) * zz1 + alpha * zz2;
        yyy = (3 - zzz/50)*(h*jj-oy); if (reflect) yyy *= -1;
        draw_vertex_texture(xx1 + c*xxx + s*yyy, yy1 - s*xxx + c*yyy, ii/8, jj);
        
        ii = i+1; jj = 1;
        alpha = (w*ii/8-ox)/(w-4-ox);
        xxx = alpha * r; zzz = (1-alpha) * zz1 + alpha * zz2;
        yyy = (3 - zzz/50)*(h*jj-oy); if (reflect) yyy *= -1;
        draw_vertex_texture(xx1 + c*xxx + s*yyy, yy1 - s*xxx + c*yyy, ii/8, jj);
        
        ii = i; jj = 1;
        alpha = (w*ii/8-ox)/(w-4-ox);
        xxx = alpha * r; zzz = (1-alpha) * zz1 + alpha * zz2;
        yyy = (3 - zzz/50)*(h*jj-oy); if (reflect) yyy *= -1;
        draw_vertex_texture(xx1 + c*xxx + s*yyy, yy1 - s*xxx + c*yyy, ii/8, jj);
        
        ii = i+1; jj = 0;
        alpha = (w*ii/8-ox)/(w-4-ox);
        xxx = alpha * r; zzz = (1-alpha) * zz1 + alpha * zz2;
        yyy = (3 - zzz/50)*(h*jj-oy); if (reflect) yyy *= -1;
        draw_vertex_texture(xx1 + c*xxx + s*yyy, yy1 - s*xxx + c*yyy, ii/8, jj);
    }
    
	draw_primitive_end();
}


if (armor > 0) {
	draw_sprite_ext(sprBoss04_57, -1, x+cx-4, y+cy-20*(1-armor_alpha), 1, 1, 0, c_white, image_alpha*armor_alpha*armor_alpha2);
	draw_set_font(fnt_achievements);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
	draw_text_color(x+cx-4, y+cy, armor, c_gray, c_gray, c_black, c_black, image_alpha*armor_alpha*armor_alpha2);
} else
	draw_sprite_ext(sprBoss04_57, -1, x-4, y+20*armor_alpha, 1, 1, 0, c_white, image_alpha*armor_alpha*armor_alpha2);