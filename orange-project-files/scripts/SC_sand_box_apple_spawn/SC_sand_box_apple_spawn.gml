// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SC_sand_box_apple_spawn(){
	var click = mouse_check_button_pressed(mb_left);
	
	if (click) {
		instance_create_layer(mouse_x,mouse_y, "Apple", OB_apple);
	}
}