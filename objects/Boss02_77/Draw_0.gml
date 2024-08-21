var i;

for(i=num-3; i>=-1; i-=1) {
    draw_sprite_part_ext(sprite_index, image_index + 8*(i+1), 0, 26, 26, 17, x-13*scale, yy[i+2]+(-(num-2-i)*15)*scale, scale, scale, c_white, 1);
}
draw_sprite_part_ext(sprite_index, image_index, 0, 0, 26, 26, x-13*scale, yy[0]+(-(num-1)*15)*scale-24*scale, scale, scale, c_white, 1);