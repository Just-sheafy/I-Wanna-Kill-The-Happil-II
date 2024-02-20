var w, h, cam = view_camera[0];
	
w = camera_get_view_width(cam);
h = camera_get_view_height(cam);

if (!surface_exists(blur_1X)) blur_1X = surface_create(w, h);
if (!surface_exists(blur_2X)) blur_2X = surface_create(w, h);

surface_set_target(blur_2X);
if (world.shader_supported && shader_is_compiled(shdPremultiply)) shader_set(shdPremultiply);
draw_sprite(spr__ppp,0,0,0);
if (world.shader_supported) shader_reset();
surface_reset_target();

gpu_set_texfilter(true);

repeat(amount)
{
    surface_set_target(blur_1X);
    draw_surface_ext(blur_2X,0,0,.5,.5,0,c_white,1);
    surface_reset_target();

    surface_set_target(blur_2X);
    draw_surface_ext(blur_1X,0,0,2,2,0,c_white,1);
    surface_reset_target();
}

gpu_set_texfilter(false);

if keyboard_check_pressed(vk_enter) {instance_destroy();}