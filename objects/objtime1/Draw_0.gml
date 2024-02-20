var NUM;

if (!visible) exit;

draw_sprite(sprite_index, image_index, x, y);
draw_sprite_ext(sprTime4, 0, x, y, 1, 1, 0, c_white, alpha);

if (time > 0) {
    draw_set_color(c_white);
    draw_primitive_begin_texture(pr_trianglelist, sprite_get_texture(sprTime3, 0));
    
    NUM = 60;
    for(i=0; i<NUM; i+=1) {
        if (time/time_max > i/NUM) {
            draw_vertex_texture(x-30*cos(degtorad(90+i*360/NUM)), y-30*sin(degtorad(90+i*360/NUM)), i/NUM, 0);
            draw_vertex_texture(x-30*cos(degtorad(90+(i+1)*360/NUM)), y-30*sin(degtorad(90+(i+1)*360/NUM)), (i+1)/NUM, 0);
            draw_vertex_texture(x-26*cos(degtorad(90+i*360/NUM)), y-26*sin(degtorad(90+i*360/NUM)), i/NUM, 1);
            draw_vertex_texture(x-30*cos(degtorad(90+(i+1)*360/NUM)), y-30*sin(degtorad(90+(i+1)*360/NUM)), (i+1)/NUM, 0);
            draw_vertex_texture(x-26*cos(degtorad(90+(i+1)*360/NUM)), y-26*sin(degtorad(90+(i+1)*360/NUM)), (i+1)/NUM, 1);
            draw_vertex_texture(x-26*cos(degtorad(90+i*360/NUM)), y-26*sin(degtorad(90+i*360/NUM)), i/NUM, 1);
        }
    }
    
    draw_primitive_end();
}