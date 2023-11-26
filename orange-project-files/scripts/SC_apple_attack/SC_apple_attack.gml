function attack(dir) {
	OB_orange.horiz += attack_force*dir; // push player
	OB_camera.shake = apple_impact_shake; // camera shake
	play_sound(apple_boom_sound);
}

function SC_apple_attack() {
	// check where the player is (orange)
	if (on_right) {
		if (place_meeting(x+1,y,OB_orange)) {
			attack(1) //going right
		}
	}
	else if (on_left) {
		if (place_meeting(x-1,y,OB_orange)) {
			attack(-1); // going left
		}
	}
}