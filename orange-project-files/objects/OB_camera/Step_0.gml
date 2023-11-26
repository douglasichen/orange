

xTo = clamp(follow.x, clmpx1, clmpx2);
yTo = clamp(follow.y, clmpy1, clmpy2);

//functions
SC_camera_shake(); //must be added on after the xto and yto calcss
//
x += (xTo - x)/smoothness
y += (yTo - y)/smoothness

////instant clamp at times
//if (x >= clmpx1 && x <= clmpx2) && (y >= clmpy1 && y <= clmpy2) {
//	x += (xTo - x)/smoothness
//	y += (yTo - y)/smoothness
//}
//else {
//	if (x < clmpx1) x = clmpx1;
//	if (x > clmpx2) x = clmpx2;
//	if (y < clmpy1) y = clmpy1;
//	if (y > clmpy2) y = clmpy2;
//}



var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);

camera_set_view_mat(camera,vm);

