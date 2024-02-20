var i;

for(i=0; i<sprite_get_number(sprBreakGlass); i+=1) {
    if (surface_exists(surf[i])) surface_free(surf[i]);
}