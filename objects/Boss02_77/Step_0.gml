var i;

if (hspeed < 0 and x <= 32+sprite_get_width(sprite_index)*abs(image_xscale)/2) {
    hspeed = abs(hspeed);
    x = 32+sprite_get_width(sprite_index)*abs(image_xscale)/2;
}
if (hspeed > 0 and x >= room_width-32-sprite_get_width(sprite_index)*abs(image_xscale)/2) {
    hspeed = -abs(hspeed);
    x = room_width-32-sprite_get_width(sprite_index)*abs(image_xscale)/2;
}

yy1 += yy1_spd;
yy1_spd += 0.4;
yy2 += yy2_spd;
yy2_spd += 0.4;
if (mode == 0) {
	if (yy1 >= 608-32 && yy1_spd >= 0) {
		yy1 = 608-32;
		yy1_spd = 0;
	}
	if (yy2 >= 608-32 && yy2_spd >= 0) {
		yy2 = 608-32;
		yy2_spd = 0;
	}
}

for(i=0; i<num; i+=1) {
	yy[i] = lerp(yy1, yy2, 1-sqr(1-i/(num-1)));
	if (collision_circle(x, yy[i]-(num-i)*15*scale+15, 15, player, true, true)) {
		with(player) kill_player();
	}
}

if (yy1_spd > 0 && yy[0]+(-(num-1)*15)*scale-24*scale >= room_height+64) instance_destroy();