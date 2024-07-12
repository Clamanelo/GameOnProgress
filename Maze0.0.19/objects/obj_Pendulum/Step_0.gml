image_angle = SineWave(current_time / 1000, 1, 90, obj_Eatter.x);
var xx_ = x+lengthdir_x(-10,image_angle);
var yy_ = y+lengthdir_y(-10,image_angle);

instance_create_depth(xx_,yy_,depth,obj_Trace);