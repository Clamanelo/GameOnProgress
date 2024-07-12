
//Get current camera positon
var camX = camera_get_view_x(camera);
var camY = camera_get_view_y(camera);
var camW = camera_get_view_width(camera);
var camH = camera_get_view_height(camera);

camW =lerp(camW,global.res_w,.1);
camH =lerp(camH,global.res_h,.1);
//Set target camera position
var targetX = (target.x+mouse_x)/2 - camW/2;
var targetY = (target.y+mouse_y)/2 - camH/2;
	
//Clamp the target to room bounds
targetX = clamp(targetX, 0, room_width - camW);
targetY = clamp(targetY, 0, room_height - camH);
//(target.x+mouse_x)/2,(target.y+mouse_y)/2

//Smoothly move the camera to the target position
camX = lerp(camX, targetX , CAM_SMOOTH);
camY = lerp(camY, targetY , CAM_SMOOTH);

//Apply shake
var shake = power(shakeValue, 2) * shakePower;
camX += random_range(-shake, shake);
camY += random_range(-shake, shake);

//Apply camera position
camera_set_view_pos(camera, camX, camY);
camera_set_view_size(camera, camW, camH);
camera_set_view_angle(camera, random_range(-shake, shake) *.5);

//Mouse previous
mouse_x_previous = device_mouse_x_to_gui(0);
mouse_y_previous = device_mouse_y_to_gui(0);


//Reduce shake
if (shakeValue > 0) shakeValue-=0.1;