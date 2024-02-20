function ds_list_delete_element(list, element) {
	// ds_list_delete_element(list, element)
	// delete (first appearing) element from the list if there exists

	if (ds_list_find_index(list, element) != -1)
	    ds_list_delete(list, ds_list_find_index(list, element));
}
