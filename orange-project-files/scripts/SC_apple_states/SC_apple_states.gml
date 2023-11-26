function SC_apple_states(){
	
	SC_apple_wall_collide_change_direction();
	
	if (random_time > 0) random_time -= 1;
	else {
		if (state == idle) {
			state = walk;
		}
		else state = idle;
		random_time = irandom_range(random_interval_start, random_interval_end);
	}
	
	switch (state) {
		case idle:
			hspd = 0;
			break;
		case walk:
			hspd = spd * dir;
			break;
	}
}