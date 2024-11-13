draw_primitive_begin_texture(pr_trianglelist, sprite_get_texture(sprHamjung01E3, 0));
draw_vertex_texture_color(x, y, 0, yy/32, c_white, 0);
draw_vertex_texture_color(x+32, y, 1, yy/32, c_white, 0);
draw_vertex_texture_color(x+32, y+32-yy, 1, 1, c_white, (1-yy/32)*alpha);
draw_vertex_texture_color(x, y, 0, yy/32, c_white, 0);
draw_vertex_texture_color(x, y+32-yy, 0, 1, c_white, (1-yy/32)*alpha);
draw_vertex_texture_color(x+32, y+32-yy, 1, 1, c_white, (1-yy/32)*alpha);

draw_vertex_texture_color(x, y+32-yy, 0, 0, c_white, (1-yy/32)*alpha);
draw_vertex_texture_color(x+32, y+32-yy, 1, 0, c_white, (1-yy/32)*alpha);
draw_vertex_texture_color(x+32, y+64-yy, 1, 1, c_white, alpha);
draw_vertex_texture_color(x, y+32-yy, 0, 0, c_white, (1-yy/32)*alpha);
draw_vertex_texture_color(x, y+64-yy, 0, 1, c_white, alpha);
draw_vertex_texture_color(x+32, y+64-yy, 1, 1, c_white, alpha);

draw_vertex_texture_color(x, y+64-yy, 0, 0, c_white, alpha);
draw_vertex_texture_color(x+32, y+64-yy, 1, 0, c_white, alpha);
draw_vertex_texture_color(x+32, y+96-yy, 1, 1, c_white, alpha);
draw_vertex_texture_color(x, y+64-yy, 0, 0, c_white, alpha);
draw_vertex_texture_color(x, y+96-yy, 0, 1, c_white, alpha);
draw_vertex_texture_color(x+32, y+96-yy, 1, 1, c_white, alpha);
draw_primitive_end();