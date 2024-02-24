if !instance_exists(player) {exit;}

var i, a;

for(i=0; i<3; i+=1) {
    a = instance_create_depth(x, y, -4, fruit);
    a.sprite_index = sprFruitBw;
    a.direction = point_direction(x, y, player.x, player.y);
    a.speed = 6-2*i;
}
audio_play_sound(sndShoot, 0, false, world.sound_vol);
alarm[2] = 55;