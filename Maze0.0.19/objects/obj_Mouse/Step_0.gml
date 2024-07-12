x=mouse_x;
y=mouse_y;
if(x!=last_x)or(y!=last_y)moving=true else moving=false;

if(!instance_exists(obj_Player)) exit;
if(distance_to_object(obj_Player)>120)image_alpha=lerp(image_alpha,.3,.1); else image_alpha=lerp(image_alpha,1,.1);