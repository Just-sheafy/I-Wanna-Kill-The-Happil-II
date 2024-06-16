layId = layer_background_get_id(targetLayer);
depth = layer_get_depth(targetLayer);
sprite = layer_background_get_sprite(layId);
width = sprite_get_width(sprite) / 2;
layer_set_visible(targetLayer, false);

shdrLeft = shader_get_uniform(shdInvert, "invertLeft");
shdrRight = shader_get_uniform(shdInvert, "invertRight");
shdrWidth = shader_get_uniform(shdInvert, "width");

active = true;