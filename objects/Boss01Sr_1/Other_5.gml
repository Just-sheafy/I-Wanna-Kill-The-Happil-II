var i, j;

if (ds_exists(list_move, ds_type_list)) ds_list_destroy(list_move);
if (ds_exists(list_input_buffer, ds_type_list)) ds_list_destroy(list_input_buffer);

if (surface_exists(surf_back)) surface_free(surf_back);
for(i=0; i<COLUMN; i+=1) {
	for(j=0; j<ROW; j+=1) {
		if (surface_exists(surf[i, j])) surface_free(surf[i, j]);
	}
}