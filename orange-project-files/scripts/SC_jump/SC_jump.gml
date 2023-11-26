function SC_jump(){
	var space = keyboard_check_pressed(vk_space);
	
	var player_can_jump = place_meeting(x,y+1, OB_wall);
	
	if (space && player_can_jump) {
		vspd = player_jump_height;
	}
}