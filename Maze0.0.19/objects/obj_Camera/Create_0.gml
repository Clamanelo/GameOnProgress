//Resolution
#macro RES_W 1200
#macro RES_H 600
#macro RES_SCALE 1

#macro CAM_SMOOTH 0.1

global.res_w=600;
global.res_h=300;

//Enable views
view_enabled=true;
view_visible[0] = true;

//Target
if(instance_exists(obj_Player))
target = obj_Player;
else target = self;

//Create Camera
camera = camera_create_view(0,0, RES_W, RES_H);

view_set_camera(0, camera);

//Resize window and application surface
surface_resize(application_surface, RES_W * RES_SCALE, RES_H * RES_SCALE);

//Mouse previous

mouse_x_previous = device_mouse_x_to_gui(0);
mouse_y_previous = device_mouse_y_to_gui(0);

//Screen Shake
shakePower = 5;
shakeValue = 0;