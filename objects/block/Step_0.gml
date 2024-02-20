if sprite_index = block02Bs {image_alpha = random(1);}

x += hspd;
y += vspd;

if (place_meeting(x, y, player)) {
	player.x += hspd;
	player.y += vspd;
}