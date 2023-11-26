function SC_smooth(){
	var dir = horiz / abs(horiz);
	var control_dir = hspd/spd;
	//movement and rotation
	if (hspd == 0) {
		//move
		if (horiz != 0) {
			horiz -= player_fric * dir;
		}
	}
	else {
		//move
		if (horiz != hspd) {
			show_debug_message("go1");
			//if my horiz spd is greater than or equal to my goal spd then
			if (dir > 0) {
				if (horiz + player_fric < spd) {
					horiz += player_fric * control_dir; // get direction of hspd
				}
				else {
					if (control_dir < 0) {
						horiz -= player_fric; // if im speeding right or left i want to be able to slow down
					}
				}
			}
			else if (dir < 0) {
				if (horiz - player_fric > -spd) {
					horiz += player_fric * control_dir; // get direction of hspd
				}
				else {
					if (control_dir > 0) {
						horiz += player_fric; // if im speeding right or left i want to be able to slow down
					}
				}
			}
			else {
				horiz += player_fric * control_dir;
			}
		}
	}
	roll_spd = horiz; // these have to be equal to not be looking be on ice
	
	//show_debug_message(horiz);
	
}