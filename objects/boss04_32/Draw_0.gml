if (sprite_index != noone) draw_self();

if(!surface_exists(vortexSurf))
{
	vortexSurf = surface_create(view_wport[view_current], view_hport[view_current]);	
}

surface_set_target(vortexSurf);
draw_clear_alpha(c_black, 1);
gpu_set_blendmode_ext(bm_src_alpha, bm_zero);
draw_sprite_ext(sprBoss04_40, floor(index/8), x, y, 2, 2, 0, c_white, 1);
surface_reset_target();
gpu_set_blendmode(bm_normal);
draw_set_alpha(alpha);
draw_surface(vortexSurf, 0, 0);
draw_set_alpha(1);