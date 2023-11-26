function SC_roll(){
	// this is code for eye position dependent on player rotation.
	//var radius = (player_xscale * sprite_width) /2;
	var radius = eyes_offset_x;
	var rotX = radius*cos(degtorad(player_rot));
	var rotY = radius*sin(degtorad(player_rot));
	//show_debug_message( string(rotX) + ", " + string(rotY) )
	eyes_x1 = x - rotX;
	eyes_y1 = y + rotY;
	
	eyes_x2 = x + rotX;
	eyes_y2 = y - rotY;
	
	//this is the change of the players rotation
	player_rot -= roll_spd;
}