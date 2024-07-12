draw_self();

if(distance_to_object(obj_Player)<25){
	draw_set_color(c_white);
	draw_line(x+lengthdir_x(32,image_angle-90),y+lengthdir_y(32,image_angle-90),obj_Player.x,obj_Player.y);
}