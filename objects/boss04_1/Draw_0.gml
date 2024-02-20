var i, j, ii, jj, w, h, xxx, yyy;

if (!surface_exists(surf)) surf = surface_create(10*sprite_get_width(sprite_index), 10*sprite_get_height(sprite_index));

w = surface_get_width(surf);
h = surface_get_height(surf);

draw_set_color(c_white);
draw_primitive_begin_texture(pr_trianglelist, surface_get_texture(surf));

for(i=0; i<=7; i+=1) {
    for(j=0; j<=7; j+=1) {
        ii = i; jj = j;
        xxx = xx - room_width/2 + (ii-4)*w/8;
        yyy = yy - room_height/2 + (jj-4)*h/8;
        draw_vertex_texture(room_width/2 + xxx*125/(zz+sqrt(xxx*xxx+yyy*yyy)/8+125),
            room_height/2 + yyy*125/(zz+sqrt(xxx*xxx+yyy*yyy)/8+125), ii/8, jj/8);
        
        ii = i+1; jj = j;
        xxx = xx - room_width/2 + (ii-4)*w/8;
        yyy = yy - room_height/2 + (jj-4)*h/8;
        draw_vertex_texture(room_width/2 + xxx*125/(zz+sqrt(xxx*xxx+yyy*yyy)/8+125),
            room_height/2 + yyy*125/(zz+sqrt(xxx*xxx+yyy*yyy)/8+125), ii/8, jj/8);
        
        ii = i; jj = j+1;
        xxx = xx - room_width/2 + (ii-4)*w/8;
        yyy = yy - room_height/2 + (jj-4)*h/8;
        draw_vertex_texture(room_width/2 + xxx*125/(zz+sqrt(xxx*xxx+yyy*yyy)/8+125),
            room_height/2 + yyy*125/(zz+sqrt(xxx*xxx+yyy*yyy)/8+125), ii/8, jj/8);
             
        ii = i+1; jj = j+1;
        xxx = xx - room_width/2 + (ii-4)*w/8;
        yyy = yy - room_height/2 + (jj-4)*h/8;
        draw_vertex_texture(room_width/2 + xxx*125/(zz+sqrt(xxx*xxx+yyy*yyy)/8+125),
            room_height/2 + yyy*125/(zz+sqrt(xxx*xxx+yyy*yyy)/8+125), ii/8, jj/8);
        
        ii = i; jj = j+1;
        xxx = xx - room_width/2 + (ii-4)*w/8;
        yyy = yy - room_height/2 + (jj-4)*h/8;
        draw_vertex_texture(room_width/2 + xxx*125/(zz+sqrt(xxx*xxx+yyy*yyy)/8+125),
            room_height/2 + yyy*125/(zz+sqrt(xxx*xxx+yyy*yyy)/8+125), ii/8, jj/8);
        
        ii = i+1; jj = j;
        xxx = xx - room_width/2 + (ii-4)*w/8;
        yyy = yy - room_height/2 + (jj-4)*h/8;
        draw_vertex_texture(room_width/2 + xxx*125/(zz+sqrt(xxx*xxx+yyy*yyy)/8+125),
            room_height/2 + yyy*125/(zz+sqrt(xxx*xxx+yyy*yyy)/8+125), ii/8, jj/8);
    }
}

draw_primitive_end();