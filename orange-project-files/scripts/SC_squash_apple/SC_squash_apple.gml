function SC_squash_apple(){
	var ontop = place_meeting(x,y, OB_apple);
	var threshold_fix = 10;
	if (ontop) {
		var apple_id = instance_place(x,y, OB_apple);
		//if ontop; i used a threshold because the player may go past the top of the apple and not detect
		if (bbox_bottom < apple_id.bbox_top + threshold_fix) {
			play_sound(OB_apple.apple_die_sound);
			instance_destroy(apple_id);
		}
	}
}