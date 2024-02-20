if !instance_exists(player) {exit;}

var i, a;

for(i=-1; i<2; i+=1) {
    a = instance_create_depth(x, y+16*i, -4, fruit);
    a.sprite_index = sprFruitG;
    a.direction = point_direction(x, y+16*i, player.x, player.y);
    a.speed = 8;
}
audio_play_sound(sndShoot, 0, false);
if b < 6 {b += 1; alarm[1] = 3;} else {b = 0; alarm[1] = 91;}