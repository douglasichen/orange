// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SC_camera_shake(){
	if (shake != 0) {
		xTo += random_range(-shake, shake);
		yTo += random_range(-shake, shake);
		shake *= shake_decay;
		if (shake < shake_cut) shake = 0;
	}
}