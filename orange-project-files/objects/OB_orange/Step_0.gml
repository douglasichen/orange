//scripts
SC_gravity();
SC_collide_move();
SC_player_horiz();
SC_roll();
SC_smooth();
SC_jump();
SC_squash_apple();


//update eyes
//rotation
eyes_rot1 = point_direction(eyes_x1,eyes_y1,mouse_x,mouse_y);
eyes_rot2 = point_direction(eyes_x2,eyes_y2,mouse_x,mouse_y);

//update left and right
right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));

hspd = right - left;
hspd *= spd;
