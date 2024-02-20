var i, cam = view_camera[0];

if (!enable) exit;

for(i=0; i<sprite_get_number(sprBreakGlass); i+=1) {
    if (!surface_exists(surf[i]))
        surf[i] = surface_create(camera_get_view_width(cam)/4, camera_get_view_height(cam)/4);
    draw_surface_ext(surf[i], (xx[i]+x_rel[i]-x_rel[i]*cos(degtorad(angle[i]))-y_rel[i]*sin(degtorad(angle[i])))*4,
        (yy[i]+y_rel[i]+x_rel[i]*sin(degtorad(angle[i]))-y_rel[i]*cos(degtorad(angle[i])))*4, 4, 4, angle[i], c_white, 1);
}