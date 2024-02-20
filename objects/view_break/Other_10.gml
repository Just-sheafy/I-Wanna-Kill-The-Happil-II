var i, cam = view_camera[0], w, h;

w = camera_get_view_width(cam);
h = camera_get_view_height(cam);

if (!world.screen_effect_enable) {
    instance_destroy(); exit;
}

var temp = instance_create_layer(0, 0, "Player", surf_break);
temp.depth = depth;
temp.Gravity = Gravity;
for(i=0; i<sprite_get_number(sprBreakGlass); i+=1) {
    if (!surface_exists(temp.surf[i])) temp.surf[i] = surface_create(w/4, h/4);
}

if (surface_exists(surf))
    surface_copy(temp.surf[0], 0, 0, surf);

for(i=1; i<sprite_get_number(sprBreakGlass); i+=1)
    surface_copy(temp.surf[i], 0, 0, temp.surf[0]);
    
var mask_surf = surface_create(w/4,h/4);
for(i=0; i<sprite_get_number(sprBreakGlass); i+=1) {
    surface_set_target(mask_surf);
    draw_clear(0);
    gpu_set_blendmode(bm_subtract);
    draw_sprite(sprBreakGlass, i, 0, 0);
    surface_reset_target();
		
    surface_set_target(temp.surf[i]);
    draw_surface(mask_surf, 0, 0);
    gpu_set_blendmode(bm_normal);
    surface_reset_target();
}
    
if (surface_exists(mask_surf)) surface_free(mask_surf);