var i;

if (surface_exists(surf_temp)) surface_free(surf_temp);
for(i=0; i<3; i+=1) {
	if (surface_exists(surf[i])) surface_free(surf[i]);
}