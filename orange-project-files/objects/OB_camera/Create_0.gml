

//set vars
zoom = 2;
smoothness = 10;
//

camera = camera_create();


var near = 1, far = 10000;

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);

var camera_width = room_width/zoom;
var camera_height = room_height/zoom;

var pm = matrix_build_projection_ortho(camera_width, camera_height, near, far);


//show_debug_message(string(room_width) + " by " + string(room_height));

camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);

view_camera[0] = camera;


//follow what?
if (instance_exists(OB_orange)) follow = OB_orange;
else {
	show_debug_message("orange not found, camera destroyed");
	instance_destroy();
}

//clamp camera
//this part is commented out because it is only for when the border is the edge of the room
//clmpx1 = camera_width/2;
//clmpy1 = camera_height/2;
//clmpx2 = room_width - camera_width/2;
//clmpy2 = room_height - camera_height/2;

clmpx1 = 256; clmpx2 = 1632;
clmpy1 = 160; clmpy2 = 1024;

clmpx1 += camera_width/2; clmpx2 -= camera_width/2;
clmpy1 += camera_height/2; clmpy2 -= camera_height/2;


//shake
shake = 0;
shake_decay = 0.9; //90%
shake_cut = 0.01;

// initialize xto and yto
xTo = clamp(follow.x, clmpx1, clmpx2);
yTo = clamp(follow.y, clmpy1, clmpy2);
