/// @description Draw lights

if(!surface_exists(surf))
{
	surf = surface_create(800, 608);
	event_user(0);
}

draw_surface(surf, 0, 0);