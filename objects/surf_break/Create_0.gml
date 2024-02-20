enable = true;
if (!world.screen_effect_enable) {
	enable = false; exit;
}

var i, cam = view_camera[0];

for(i=0; i<sprite_get_number(sprBreakGlass); i+=1) {
    surf[i] = surface_create(camera_get_view_width(cam)/4, camera_get_view_height(cam)/4);
    xx[i] = 0; yy[i] = 0; hs[i] = random_range(-0.5, 0.5); vs[i] = random_range(-0.5, 0.5);
    angle[i] = 0; angles[i] = random_range(-1.5, 1.5);
}

x_rel[0] = 115;
x_rel[1] = 113;
x_rel[2] = 109;
x_rel[3] = 106;
x_rel[4] = 101;
x_rel[5] = 85;
x_rel[6] = 81;
x_rel[7] = 81;
x_rel[8] = 87;
x_rel[9] = 111;
x_rel[10] = 115;
x_rel[11] = 135;
x_rel[12] = 130;
x_rel[13] = 123;
x_rel[14] = 100;
x_rel[15] = 85;
x_rel[16] = 52;
x_rel[17] = 67;
x_rel[18] = 98;
x_rel[19] = 125;
x_rel[20] = 136;
x_rel[21] = 174;
x_rel[22] = 161;
x_rel[23] = 122;
x_rel[24] = 98;
x_rel[25] = 62;
x_rel[26] = 15;
x_rel[27] = 29;
x_rel[28] = 36;
x_rel[29] = 94;
x_rel[30] = 149;
x_rel[31] = 176;

y_rel[0] = 78;
y_rel[1] = 74;
y_rel[2] = 70;
y_rel[3] = 66;
y_rel[4] = 64;
y_rel[5] = 69;
y_rel[6] = 78;
y_rel[7] = 86;
y_rel[8] = 93;
y_rel[9] = 91;
y_rel[10] = 83;
y_rel[11] = 79;
y_rel[12] = 69;
y_rel[13] = 60;
y_rel[14] = 45;
y_rel[15] = 52;
y_rel[16] = 67;
y_rel[17] = 113;
y_rel[18] = 114;
y_rel[19] = 112;
y_rel[20] = 93;
y_rel[21] = 70;
y_rel[22] = 31;
y_rel[23] = 30;
y_rel[24] = 18;
y_rel[25] = 19;
y_rel[26] = 50;
y_rel[27] = 102;
y_rel[28] = 137;
y_rel[29] = 144;
y_rel[30] = 137;
y_rel[31] = 111;