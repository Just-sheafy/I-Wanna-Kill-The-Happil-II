var xx, yy0, yy1, rad, angle;

draw_set_color(c_white);
draw_set_alpha(image_alpha);
if (scale >= 0) {
    draw_primitive_begin_texture(pr_trianglelist, sprite_get_texture(sprBoss04_43, 0));
    
    rad = _scale*point_distance(0, 0, -sprite_get_xoffset(sprite_index), -sprite_get_yoffset(sprite_index));
    angle = point_direction(0, 0, -sprite_get_xoffset(sprite_index), -sprite_get_yoffset(sprite_index));
    xx = rad*scale*cos(degtorad(angle));
    yy0 = rad*(1.2-0.2*scale)*sin(degtorad(angle));
    yy1 = rad*(0.8+0.2*scale)*sin(degtorad(angle));
    
    draw_vertex_texture(x - xx*cos(degtorad(image_angle)) - yy0*sin(degtorad(image_angle)),
        y + xx*sin(degtorad(image_angle)) - yy0*cos(degtorad(image_angle)), 0, 0);
    draw_vertex_texture(x - xx*cos(degtorad(image_angle)) + yy0*sin(degtorad(image_angle)),
        y + xx*sin(degtorad(image_angle)) + yy0*cos(degtorad(image_angle)), 0, 1);
    draw_vertex_texture(x + xx*cos(degtorad(image_angle)) + yy1*sin(degtorad(image_angle)),
        y - xx*sin(degtorad(image_angle)) + yy1*cos(degtorad(image_angle)), 1, 1);
        
    draw_vertex_texture(x - xx*cos(degtorad(image_angle)) - yy0*sin(degtorad(image_angle)),
        y + xx*sin(degtorad(image_angle)) - yy0*cos(degtorad(image_angle)), 0, 0);
    draw_vertex_texture(x + xx*cos(degtorad(image_angle)) + yy1*sin(degtorad(image_angle)),
        y - xx*sin(degtorad(image_angle)) + yy1*cos(degtorad(image_angle)), 1, 1);
    draw_vertex_texture(x + xx*cos(degtorad(image_angle)) - yy1*sin(degtorad(image_angle)),
        y - xx*sin(degtorad(image_angle)) - yy1*cos(degtorad(image_angle)), 1, 0);
    
    draw_primitive_end();
} else {
    draw_primitive_begin_texture(pr_trianglelist, sprite_get_texture(sprBoss04_43, index));
    
    rad = _scale*point_distance(0, 0, -sprite_get_xoffset(sprite_index), -sprite_get_yoffset(sprite_index));
    angle = point_direction(0, 0, -sprite_get_xoffset(sprite_index), -sprite_get_yoffset(sprite_index));
    scale *= -1;
    xx = rad*scale*cos(degtorad(angle));
    yy0 = rad*(1.2-0.2*scale)*sin(degtorad(angle));
    yy1 = rad*(0.8+0.2*scale)*sin(degtorad(angle));
    
    draw_vertex_texture(x - xx*cos(degtorad(image_angle)) - yy0*sin(degtorad(image_angle)),
        y + xx*sin(degtorad(image_angle)) - yy0*cos(degtorad(image_angle)), 0, 0);
    draw_vertex_texture(x - xx*cos(degtorad(image_angle)) + yy0*sin(degtorad(image_angle)),
        y + xx*sin(degtorad(image_angle)) + yy0*cos(degtorad(image_angle)), 0, 1);
    draw_vertex_texture(x + xx*cos(degtorad(image_angle)) + yy1*sin(degtorad(image_angle)),
        y - xx*sin(degtorad(image_angle)) + yy1*cos(degtorad(image_angle)), 1, 1);
        
    draw_vertex_texture(x - xx*cos(degtorad(image_angle)) - yy0*sin(degtorad(image_angle)),
        y + xx*sin(degtorad(image_angle)) - yy0*cos(degtorad(image_angle)), 0, 0);
    draw_vertex_texture(x + xx*cos(degtorad(image_angle)) + yy1*sin(degtorad(image_angle)),
        y - xx*sin(degtorad(image_angle)) + yy1*cos(degtorad(image_angle)), 1, 1);
    draw_vertex_texture(x + xx*cos(degtorad(image_angle)) - yy1*sin(degtorad(image_angle)),
        y - xx*sin(degtorad(image_angle)) - yy1*cos(degtorad(image_angle)), 1, 0);
    
    scale *= -1;
    draw_primitive_end();
}
draw_set_alpha(1);