with(Hamjung02L1) {instance_destroy(); var zx = instance_create_layer(x, y, "Instances", Hamjung02L3); zx.depth += 1; zx.a = 1;}
with(Hamjung02L2) {instance_destroy(); var zx = instance_create_layer(x, y, "Instances", Hamjung02L4); zx.depth += 1; zx.a = 1;}
with(Hamjung02L3) {if !a {instance_destroy(); var zx = instance_create_layer(x, y, "Instances", Hamjung02L1); zx.depth += 1;}}
with(Hamjung02L4) {if !a {instance_destroy(); var zx = instance_create_layer(x, y, "Instances", Hamjung02L2); zx.depth += 1;}}
with(Hamjung02L5) {image_index = !image_index;}
audio_play_sound(sndSwitch, 0, false, world.sound_vol);