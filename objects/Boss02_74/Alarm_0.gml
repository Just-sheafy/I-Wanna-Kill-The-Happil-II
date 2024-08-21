var temp, temp2, h, NUM = 0;

if (!surface_exists(surf)) surf = surface_create(800, 608);

surface_set_target(surf);

draw_set_color(c_white);
draw_sprite_part(back02Bs3, 0, 0, 0, 336, 608, 0, 0);
draw_sprite_part(back02Bs4, 0, 64, 0, 336, 608, 464, 0);

while(NUM < 608) {
	h = min(irandom_range(2, 10), 608-NUM);
	temp = irandom_range(60, 64);
	temp2 = irandom_range(60, 64);
	
	draw_sprite_part(back02Bs3, 0, 336, NUM, temp, h, 336, NUM);
	draw_sprite_part(back02Bs4, 0, 64-temp2, NUM, temp2, h, 464-temp2, NUM);
	draw_set_color(c_black);
	draw_rectangle(336+temp, NUM, 464-temp2, NUM+h, false);
	draw_set_color(c_white);
	NUM += h;
}

surface_reset_target();

alarm[0] = 4;