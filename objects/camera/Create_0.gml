leave_room = false;

function snap_view() {
	if (instance_exists(player)) {
		var cam = view_camera[0];
	    var follow_x = player.x;
	    var follow_y = player.y;
    
	    if (!leave_room) {
	        follow_x = clamp(follow_x, 0, room_width - camera_get_view_width(cam)); 
	        follow_y = clamp(follow_y, 0, room_height - camera_get_view_height(cam));   
	    }

	    var set_x = floor(follow_x / camera_get_view_width(cam)) * camera_get_view_width(cam);
	    var set_y = floor(follow_y / camera_get_view_height(cam)) * camera_get_view_height(cam);
		camera_set_view_pos(cam, set_x, set_y);
	}
}