xx2_prev = xx2;
yy2_prev = yy2;

if (is_effect) {
    if (ds_list_size(x_list) >= 36) {
        ds_list_delete(x_list, 0);
        ds_list_delete(x_list, 0);
    }
    if (ds_list_size(y_list) >= 36) {
        ds_list_delete(y_list, 0);
        ds_list_delete(y_list, 0);
    }
    
    ds_list_add(x_list, xx1);
    ds_list_add(x_list, xx2);
    ds_list_add(y_list, yy1);
    ds_list_add(y_list, yy2);
} else {
    if (ds_list_size(x_list) > 0) {
        ds_list_delete(x_list, 0);
        ds_list_delete(x_list, 0);
    }
    if (ds_list_size(y_list) > 0) {
        ds_list_delete(y_list, 0);
        ds_list_delete(y_list, 0);
    }
}