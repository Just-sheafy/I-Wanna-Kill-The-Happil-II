if (surface_exists(surf)) surface_free(surf);
if (x_list != -1) { ds_list_destroy(x_list); x_list = -1; }
if (y_list != -1) { ds_list_destroy(y_list); y_list = -1; }