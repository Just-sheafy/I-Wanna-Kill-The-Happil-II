var i, j, temp, xx, yy;

if (patt < 20) {
    xx = 50*cos(degtorad(90+patt*36));
    yy = -50*sin(degtorad(90+patt*36));
    temp = instance_create_depth(x+xx, y+yy, -2, Boss04F4);
    temp.sprite_index = sprFruitW;
    temp.image_xscale = 0; temp.image_yscale = 0;
    ds_list_add(fruit_list, temp);
    
    xx = 50*cos(degtorad(90+18+patt*36));
    yy = -50*sin(degtorad(90+18+patt*36));
    temp = instance_create_depth(x+xx, y+yy, -2, Boss04F4);
    temp.sprite_index = sprFruitW;
    temp.image_xscale = 0; temp.image_yscale = 0;
    ds_list_add(fruit_list, temp);
}

if (patt < 10) {
    for(i=0; i<ds_list_size(Boss04F1.vertex_x); i+=1) {
        j = i+1; if (j > 5) j = 0;
        xx = (ds_list_find_value(Boss04F1.vertex_x, i)*(10-patt)+ds_list_find_value(Boss04F1.vertex_x, j)*patt)/10;
        yy = (ds_list_find_value(Boss04F1.vertex_y, i)*(10-patt)+ds_list_find_value(Boss04F1.vertex_y, j)*patt)/10;
        temp = instance_create_depth(x+xx, y+yy, -2, Boss04F4);
        temp.sprite_index = sprFruitBw;
        temp.image_xscale = 0; temp.image_yscale = 0;
        ds_list_add(fruit_list, temp);
    }
    
    patt += 1;
    alarm[0] = 2;
} else if (patt < 19) {
    temp = instance_create_depth(x-100-10*(patt-9), y, -2, Boss04F4);
    temp.sprite_index = sprFruitBw;
    temp.image_xscale = 0; temp.image_yscale = 0;
    ds_list_add(fruit_list, temp);
    
    temp = instance_create_depth(x+100+10*(patt-9), y, -2, Boss04F4);
    temp.sprite_index = sprFruitBw;
    temp.image_xscale = 0; temp.image_yscale = 0;
    ds_list_add(fruit_list, temp);
    patt += 1;
    alarm[0] = 2;
} else if (patt == 19) {
    temp = instance_create_depth(x-200, y, -3, Boss04F4);
    temp.sprite_index = sprFruitG;
    temp.image_xscale = 0; temp.image_yscale = 0;
    temp.scale = 2;
    ds_list_add(fruit_list, temp);
    
    temp = instance_create_depth(x+200, y, -3, Boss04F4);
    temp.sprite_index = sprFruitG;
    temp.image_xscale = 0; temp.image_yscale = 0;
    temp.scale = 2;
    ds_list_add(fruit_list, temp);
    
    patt += 1;
}