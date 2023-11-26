// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SC_player_horiz(){
	if place_meeting(x+horiz,y,OB_wall) {
		while (!place_meeting(x+sign(horiz),y,OB_wall)){
			x += sign(horiz)
		}
		show_debug_message("wall");
		horiz = 0;
	}
	x += horiz;
}