var temp;

if (!other.valid) exit;
if (instance_exists(player) and x >= 0 and irandom_range(0, 3) == 0) audio_play_sound(sndBlockFall, 10, false, world.sound_vol);
instance_destroy();
temp = instance_create_depth(x, y, depth, Boss04_87);
temp.sprite_index = sprite_index;
temp.image_xscale = image_xscale;
temp.image_yscale = image_yscale;
temp.xoffset = 16;
temp.yoffset = 16;
temp.x += temp.xoffset * image_xscale;
temp.y += temp.yoffset * image_yscale;