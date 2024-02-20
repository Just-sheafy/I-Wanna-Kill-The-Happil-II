if (surface_exists(surf)) surface_free(surf);
if (ds_exists(type_list, ds_type_list)) ds_list_destroy(type_list);
with(player) max_hspd = 3;