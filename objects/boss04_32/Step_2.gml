if (instance_exists(player) and patt >= 3) {
    player.frozen = true;
    player.x = player_x;
    player.y = player_y;
	player.hspd = 0;
	player.vspd = 0;
	player.grav = 0;
    player.sprite_index = spr_before;
    player.image_index = img_before;
}