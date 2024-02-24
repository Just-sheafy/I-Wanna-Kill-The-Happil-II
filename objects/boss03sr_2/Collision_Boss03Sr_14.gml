if nodie {exit;}
audio_stop_sound(sndSr03_3);
audio_play_sound(sndSr03_3, 0, false, world.sound_vol);
instance_destroy();
var zx = instance_create_depth(x, y, -5, Explo1);
zx.image_xscale = 1/2;
zx.image_yscale = 1/2;

var temp = instance_create_depth(x, y, 0, Boss03Sr_7);
if (revive) {
    temp.sprite_index = sprBoss03Sr_24;
    temp.revive = true;
    
    temp.arrow_id = instance_create_depth(temp.x, temp.y, -5, Boss03Sr_17);
    temp.arrow_id.image_index = 1;
    temp.arrow_id.visible = false;
    temp.arrow_id.sid = temp;
}