if !instance_exists(player) or x < 592 {image_index = 0; alarm[0] = 0; hspeed = 0; image_xscale = 1; if x < 592 {a = 0; x = 592;} exit;}
if x-player.x < 268 {if image_index == 0 {alarm[0] = 3; hspeed = 3; image_index = 1; image_xscale = 1; a = 1;}}
else if x-player.x <= 300 {image_index = 0; alarm[0] = 0; hspeed = 0; image_xscale = 1;}
else if a {if image_index == 0 {alarm[0] = 3; hspeed = -3; image_index = 1; image_xscale = -1; a = 1;}}