var i;

t = 0;
tt = 0;
alpha = 0;
active = true;
phase = 0;
move = false;

for(i=0; i<4; i+=1) {
    col[i] = make_color_rgb(floor(255-i*255/4), i*255/4, 0);
    col[i+4] = make_color_rgb(0, floor(255-i*255/4), i*255/4);
    col[i+8] = make_color_rgb(i*255/4, 0, floor(255-i*255/4));
}
col[12] = c_red;

x_prev = x;
y_prev = y;
if (instance_exists(player)) {
    x_prev = player.x;
    y_prev = player.y;
}