// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SC_player_on_left_or_right(){
	if (OB_orange.x > x) {
		on_right = true;
		on_left = false;
	}
	else {
		on_right = false;
		on_left = true;
	}
}