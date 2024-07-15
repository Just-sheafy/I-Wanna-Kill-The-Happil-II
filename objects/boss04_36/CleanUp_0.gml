if (surface_exists(surf)) surface_free(surf);
if (surface_exists(surfNoise)) surface_free(surfNoise);
if (ds_exists(type_list, ds_type_list)) ds_list_destroy(type_list);