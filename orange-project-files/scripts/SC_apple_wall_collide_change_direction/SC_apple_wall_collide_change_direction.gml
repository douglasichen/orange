function SC_apple_wall_collide_change_direction(){
	for (var i = 0; i < ds_list_size(change_dir_list); i++) {
		var wall = ds_list_find_value(change_dir_list, i);
		var collide_side_wall = (place_meeting(x+1,y,wall) or place_meeting(x-1,y,wall));
		if (collide_side_wall) {
			dir *= -1;
			image_xscale *= -1;
		}
	}
}