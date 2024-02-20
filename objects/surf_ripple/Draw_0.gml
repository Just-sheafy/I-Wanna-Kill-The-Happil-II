draw_set_alpha(1);
if (world.screen_effect_enable and surface_exists(buffer_surface)) { //If the surface is clean
    var NUM = 12, width, offset, d, tex, tex_x, tex_y, i, xx, yy;
    width = min((radius_max-radius)/3,25); 
    offset = (radius_max-radius)/5;
    d = 360/NUM;

    tex = surface_get_texture(buffer_surface);
    tex_x = texture_get_width(tex)/surface_get_width(buffer_surface);
    tex_y = texture_get_height(tex)/surface_get_height(buffer_surface);
    gpu_set_texrepeat(true);

    draw_primitive_begin_texture(pr_trianglestrip,tex);

    draw_set_color(c_white);

    for (i=0;i<=NUM;i+=1) {
        xx = x+lengthdir_x(radius,i*d);
        yy = y+lengthdir_y(radius,i*d);
        draw_vertex_texture(xx,yy,tex_x*(xx+lengthdir_x(offset,i*d)),tex_y*(yy+lengthdir_y(offset,i*d)));

        xx = x+lengthdir_x(radius-width,i*d);
        yy = y+lengthdir_y(radius-width,i*d);
        draw_vertex_texture(xx,yy,tex_x*(xx),tex_y*(yy));
    }

    for (i=0;i<=NUM;i+=1) {
        xx = x+lengthdir_x(radius+width,i*d);
        yy = y+lengthdir_y(radius+width,i*d);
        draw_vertex_texture(xx,yy,tex_x*(xx),tex_y*(yy));

        xx = x+lengthdir_x(radius,i*d);
        yy = y+lengthdir_y(radius,i*d);
        draw_vertex_texture(xx,yy,tex_x*(xx+lengthdir_x(offset,i*d)),tex_y*(yy+lengthdir_y(offset,i*d)));
    }

    draw_primitive_end();
    gpu_set_texrepeat(false);
}