if direction == 0 {sprite_index = sprBoss03Sr_2;}
if direction == 90 {sprite_index = sprBoss03Sr_3;}
if direction == 180 {sprite_index = sprBoss03Sr_4;}
if direction == 270 {sprite_index = sprBoss03Sr_1;}

if (crazy or (instance_exists(player) and point_distance(x, y, player.x, player.y) <= 150)) {
    if direction == 0 {sprite_index = sprBoss03Sr_13;}
    if direction == 90 {sprite_index = sprBoss03Sr_3;}
    if direction == 180 {sprite_index = sprBoss03Sr_14;}
    if direction == 270 {sprite_index = sprBoss03Sr_12;}
}