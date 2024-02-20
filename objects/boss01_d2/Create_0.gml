image_speed = 0;
alarm[0] = 30;
alarm[1] = 120;
a = 0;
ox = 0;
oy = 0;

spr_before = sprPlayerIdle;
img_before = 0;

if (instance_exists(player)) {
	ox = player.x;
	oy = player.y;
	spr_before = player.sprite_index;
	img_before = player.image_index;
}