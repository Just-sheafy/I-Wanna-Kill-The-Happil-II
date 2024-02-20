var temp_x;

draw_self();

temp_x = 0;
if (sprite_index == sprBoss03Sr_13) temp_x = 4;
else if (sprite_index == sprBoss03Sr_14) temp_x = -4;

if (sprite_index == sprBoss03Sr_12 or sprite_index == sprBoss03Sr_13 or sprite_index == sprBoss03Sr_14) {
    if (instance_exists(player) and point_distance(x, y, player.x, player.y) <= 150) {
        if (player.x-x >= abs(player.y-y)) draw_sprite_ext(sprBoss03Sr_19, 1, x+temp_x, y-11, 1, 1, 0, c_white, 1);
        else if (-(player.x-x) >= abs(player.y-y)) draw_sprite_ext(sprBoss03Sr_19, 3, x+temp_x, y-11, 1, 1, 0, c_white, 1);
        else if (player.y <= y) draw_sprite_ext(sprBoss03Sr_19, 2, x+temp_x, y-11, 1, 1, 0, c_white, 1);
        else draw_sprite_ext(sprBoss03Sr_19, 4, x+temp_x, y-11, 1, 1, 0, c_white, 1);
    }
}