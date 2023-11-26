hspd = 0;
vspd = 0;
grav = 0.1;

attack_force = 20;
on_left = false;
on_right = false;

//states
spd = 1.3;
idle = 0;
walk = 1;
state = idle;
dir = 1;

random_interval_start = 120;
random_interval_end = 240;

random_time = irandom_range(random_interval_start, random_interval_end);

//wall
change_dir_list = ds_list_create();
ds_list_add(change_dir_list, OB_wall, OB_apple_change_dir);

//shake camera
apple_impact_shake = 100;

//sounds
apple_die_sound = SN_apple_die;
apple_boom_sound = SN_apple_boom;