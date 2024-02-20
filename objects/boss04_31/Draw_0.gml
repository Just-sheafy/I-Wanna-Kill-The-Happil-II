if (!world.screen_effect_enable or alpha <= 0) exit;

if (phase == 0) {

var i, j, jj, rad, rad2, rad3, r1, r2, NUM, TOTAL, CX, CY;

NUM = 9;
TOTAL = 9;

draw_set_color(c_white);
gpu_set_blendmode(bm_add);

for(i=1; i<=NUM; i+=1) {
    CX = x+sqrt(max(0, i-2+t/64))*(x_prev-x)/NUM;
    CY = y+sqrt(max(0, i-2+t/64))*(y_prev-y)/NUM;
    
    draw_primitive_begin_texture(pr_trianglelist, sprite_get_texture(sprBoss04_35, 0));
    for(j=0; j<TOTAL; j+=1) {
        draw_set_alpha(1.5*alpha*min(0.3, (i-1+t/64)/15, NUM-i-t/64));
        
        rad = power(i*64+t, 2)/500;
        r1 = 72*power(i*64+t, 1)/500;
        jj = j;
        
        draw_vertex_texture(CX+(rad+r1)*cos(degtorad(jj*360/TOTAL)), CY+(rad+r1)*sin(degtorad(jj*360/TOTAL)), 0, 0);
        draw_vertex_texture(CX+(rad-r1)*cos(degtorad(jj*360/TOTAL)), CY+(rad-r1)*sin(degtorad(jj*360/TOTAL)), 0, 1);
        draw_vertex_texture(CX+(rad+r1)*cos(degtorad((jj+1)*360/TOTAL)), CY+(rad+r1)*sin(degtorad((jj+1)*360/TOTAL)), 1, 0);
        
        draw_vertex_texture(CX+(rad-r1)*cos(degtorad(jj*360/TOTAL)), CY+(rad-r1)*sin(degtorad(jj*360/TOTAL)), 0, 1);
        draw_vertex_texture(CX+(rad-r1)*cos(degtorad((jj+1)*360/TOTAL)), CY+(rad-r1)*sin(degtorad((jj+1)*360/TOTAL)), 1, 1);
        draw_vertex_texture(CX+(rad+r1)*cos(degtorad((jj+1)*360/TOTAL)), CY+(rad+r1)*sin(degtorad((jj+1)*360/TOTAL)), 1, 0);
    }
    draw_primitive_end();
    
    draw_primitive_begin_texture(pr_trianglelist, sprite_get_texture(sprBoss04_37, 0));
    for(j=0; j<TOTAL; j+=1) {
        draw_set_alpha(alpha*min(0.3, (i-1+t/64)/15, NUM-i-t/64));
        
        rad = power(i*64+t-32, 2)/500;
        rad2 = power(i*64+t-32+75, 2)/500;
        rad3 = power(i*64+t-32+128, 2)/500;
        r1 = 72*power(i*64+t-32+75, 1)/500;
        r2 = 84*power(i*64+t-32+128, 1)/500;
        jj = j+0.1*sin(degtorad(tt));
        
        draw_vertex_texture(CX+(rad)*cos(degtorad(jj*360/TOTAL)), CY+(rad)*sin(degtorad(jj*360/TOTAL)), 0, 0);
        draw_vertex_texture(CX+(rad3)*cos(degtorad(jj*360/TOTAL)), CY+(rad3)*sin(degtorad(jj*360/TOTAL)), 0, 1);
        draw_vertex_texture(CX+(rad)*cos(degtorad((jj+1)*360/TOTAL)), CY+(rad)*sin(degtorad((jj+1)*360/TOTAL)), 1, 0);
        
        draw_vertex_texture(CX+(rad3)*cos(degtorad(jj*360/TOTAL)), CY+(rad3)*sin(degtorad(jj*360/TOTAL)), 0, 1);
        draw_vertex_texture(CX+(rad3)*cos(degtorad((jj+1)*360/TOTAL)), CY+(rad3)*sin(degtorad((jj+1)*360/TOTAL)), 1, 1);
        draw_vertex_texture(CX+(rad)*cos(degtorad((jj+1)*360/TOTAL)), CY+(rad)*sin(degtorad((jj+1)*360/TOTAL)), 1, 0);
    }
    draw_primitive_end();
    
    draw_primitive_begin_texture(pr_trianglelist, sprite_get_texture(sprBoss04_37, 1));
    for(j=0; j<TOTAL; j+=1) {
        draw_set_alpha(alpha*min(0.3, (i-1+t/64)/15, NUM-i-t/64));
        
        rad = power(i*64+t-32, 2)/500;
        rad2 = power(i*64+t-32+75, 2)/500;
        rad3 = power(i*64+t-32+128, 2)/500;
        r1 = 72*power(i*64+t-32+75, 1)/500;
        r2 = 84*power(i*64+t-32+128, 1)/500;
        jj = j+1/2-0.1*sin(degtorad(tt));
        
        draw_vertex_texture(CX+(rad)*cos(degtorad(jj*360/TOTAL)), CY+(rad)*sin(degtorad(jj*360/TOTAL)), 0, 0);
        draw_vertex_texture(CX+(rad3)*cos(degtorad(jj*360/TOTAL)), CY+(rad3)*sin(degtorad(jj*360/TOTAL)), 0, 1);
        draw_vertex_texture(CX+(rad)*cos(degtorad((jj+1)*360/TOTAL)), CY+(rad)*sin(degtorad((jj+1)*360/TOTAL)), 1, 0);
        
        draw_vertex_texture(CX+(rad3)*cos(degtorad(jj*360/TOTAL)), CY+(rad3)*sin(degtorad(jj*360/TOTAL)), 0, 1);
        draw_vertex_texture(CX+(rad3)*cos(degtorad((jj+1)*360/TOTAL)), CY+(rad3)*sin(degtorad((jj+1)*360/TOTAL)), 1, 1);
        draw_vertex_texture(CX+(rad)*cos(degtorad((jj+1)*360/TOTAL)), CY+(rad)*sin(degtorad((jj+1)*360/TOTAL)), 1, 0);
    }
    draw_primitive_end();
}
gpu_set_blendmode(bm_normal);

draw_set_alpha(1);

} else if (phase == 1) {

var i, j, jj, rad, rad_next, NUM, TOTAL, CX, CY, CX_next, CY_next, rad_list, CX_list, CY_list;

rad_list = ds_list_create();
CX_list = ds_list_create();
CY_list = ds_list_create();

NUM = 12;
TOTAL = 12;

for(i=0; i<=NUM; i+=1) {
    ds_list_add(rad_list, 100+power(i*50+t, 2)/800);
    ds_list_add(CX_list, 400+sqrt(i+t/50)*(x_prev-x)/NUM);
    ds_list_add(CY_list, 304+sqrt(i+t/50)*(y_prev-y)/NUM);
}

for(i=0; i<NUM; i+=1) {
    CX = ds_list_find_value(CX_list, i);
    CY = ds_list_find_value(CY_list, i);
    CX_next = ds_list_find_value(CX_list, i+1);
    CY_next = ds_list_find_value(CY_list, i+1);
    rad = ds_list_find_value(rad_list, i);
    rad_next = ds_list_find_value(rad_list, i+1);
    
    draw_primitive_begin_texture(pr_trianglelist, sprite_get_texture(sprBoss04_36, 1));
    for(j=0; j<TOTAL; j+=1) {
        jj = j + 1/2*(i mod 2);
        
        draw_set_color(col[i]);
        draw_set_alpha(alpha*max(0, alpha*min(0.6, (i-3+t/50)/4, (NUM-i-t/50))/3));
        draw_vertex_texture(CX+rad*cos(degtorad(jj*360/TOTAL)), CY-rad*sin(degtorad(jj*360/TOTAL)), 0, 0);
        draw_vertex_texture(CX+rad*cos(degtorad((jj+1)*360/TOTAL)), CY-rad*sin(degtorad((jj+1)*360/TOTAL)), 1, 0);
        draw_set_color(col[i+1]);
        draw_set_alpha(alpha*max(0, alpha*min(0.6, (i-2+t/50)/4, (NUM-i-1-t/50))/3));
        draw_vertex_texture(CX_next+rad_next*cos(degtorad((jj+1/2)*360/TOTAL)), CY_next-rad_next*sin(degtorad((jj+1/2)*360/TOTAL)), 0, 1);
        
        draw_set_color(col[i]);
        draw_set_alpha(alpha*max(0, alpha*min(0.6, (i-3+t/50)/4, (NUM-i-t/50))/3));
        draw_vertex_texture(CX+rad*cos(degtorad(jj*360/TOTAL)), CY-rad*sin(degtorad(jj*360/TOTAL)), 1, 0);
        draw_set_color(col[i+1]);
        draw_set_alpha(alpha*max(0, alpha*min(0.6, (i-2+t/50)/4, (NUM-i-1-t/50))/3));
        draw_vertex_texture(CX_next+rad_next*cos(degtorad((jj-1/2)*360/TOTAL)), CY_next-rad_next*sin(degtorad((jj-1/2)*360/TOTAL)), 1, 1);
        draw_vertex_texture(CX_next+rad_next*cos(degtorad((jj+1/2)*360/TOTAL)), CY_next-rad_next*sin(degtorad((jj+1/2)*360/TOTAL)), 0, 1);
    }
    draw_primitive_end();
    
    draw_set_color(c_white);
    draw_primitive_begin_texture(pr_trianglelist, sprite_get_texture(sprBoss04_36, 0));
    for(j=0; j<TOTAL; j+=1) {
        jj = j + 1/2*(i mod 2);
        
        draw_set_alpha(alpha*max(0, alpha*min(0.6, (i-3+t/50)/4, (NUM-i-t/50))/3));
        draw_vertex_texture(CX+rad*cos(degtorad(jj*360/TOTAL)), CY-rad*sin(degtorad(jj*360/TOTAL)), 0, 0);
        draw_vertex_texture(CX+rad*cos(degtorad((jj+1)*360/TOTAL)), CY-rad*sin(degtorad((jj+1)*360/TOTAL)), 1, 0);
        draw_set_alpha(alpha*max(0, alpha*min(0.6, (i-2+t/50)/4, (NUM-i-1-t/50))/3));
        draw_vertex_texture(CX_next+rad_next*cos(degtorad((jj+1/2)*360/TOTAL)), CY_next-rad_next*sin(degtorad((jj+1/2)*360/TOTAL)), 0, 1);
        
        draw_set_alpha(alpha*max(0, alpha*min(0.6, (i-3+t/50)/4, (NUM-i-t/50))/3));
        draw_vertex_texture(CX+rad*cos(degtorad(jj*360/TOTAL)), CY-rad*sin(degtorad(jj*360/TOTAL)), 1, 0);
        draw_set_alpha(alpha*max(0, alpha*min(0.6, (i-2+t/50)/4, (NUM-i-1-t/50))/3));
        draw_vertex_texture(CX_next+rad_next*cos(degtorad((jj-1/2)*360/TOTAL)), CY_next-rad_next*sin(degtorad((jj-1/2)*360/TOTAL)), 1, 1);
        draw_vertex_texture(CX_next+rad_next*cos(degtorad((jj+1/2)*360/TOTAL)), CY_next-rad_next*sin(degtorad((jj+1/2)*360/TOTAL)), 0, 1);
    }
    draw_primitive_end();
}

draw_set_color(c_white);
draw_set_alpha(1);

ds_list_destroy(rad_list);
ds_list_destroy(CX_list);
ds_list_destroy(CY_list);

} else {

var i, j, jj, rad, rad2, rad3, rad4, r1, r2, NUM, TOTAL, CX, CY;

CX = 400;
CY = 304;

NUM = 5;
TOTAL = 90;

draw_set_color(c_white);

for(i=0; i<NUM; i+=1) {    
    draw_primitive_begin_texture(pr_trianglelist, sprite_get_texture(sprBoss04_38, 0));
    for(j=0; j<TOTAL; j+=1) {        
        rad = 100+power(i*64+t, 2.2)/800;
        rad2 = 100+power((i+1)*64+t, 2.2)/800;
        jj = j+tt;
        
        draw_set_alpha(alpha*min(1, (i-2+t/64)/6, NUM-i-t/64));
        draw_vertex_texture(CX+rad*cos(degtorad(jj*360/TOTAL)), CY-rad*sin(degtorad(jj*360/TOTAL)), 0, 0);
        draw_vertex_texture(CX+rad*cos(degtorad((jj+(2*(i mod 2)-1))*360/TOTAL)), CY-rad*sin(degtorad((jj+(2*(i mod 2)-1))*360/TOTAL)), 0, 1);
        draw_set_alpha(alpha*min(1, (i-1+t/64)/6, NUM-i-1-t/64));
        draw_vertex_texture(CX+rad2*cos(degtorad(jj*360/TOTAL)), CY-rad2*sin(degtorad(jj*360/TOTAL)), 1, 0);
        
        draw_set_alpha(alpha*min(1, (i-2+t/64)/6, NUM-i-t/64));
        draw_vertex_texture(CX+rad*cos(degtorad((jj+(2*(i mod 2)-1))*360/TOTAL)), CY-rad*sin(degtorad((jj+(2*(i mod 2)-1))*360/TOTAL)), 0, 1);
        draw_set_alpha(alpha*min(1, (i-1+t/64)/6, NUM-i-1-t/64));
        draw_vertex_texture(CX+rad2*cos(degtorad(jj*360/TOTAL)), CY-rad2*sin(degtorad(jj*360/TOTAL)), 1, 0);
        draw_vertex_texture(CX+rad2*cos(degtorad((jj+(2*(i mod 2)-1))*360/TOTAL)), CY-rad2*sin(degtorad((jj+(2*(i mod 2)-1))*360/TOTAL)), 1, 1);
    }
    draw_primitive_end();
}

draw_set_alpha(1);

}