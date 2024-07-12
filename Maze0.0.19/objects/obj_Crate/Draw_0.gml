draw_self();
if(distance_to_object(obj_Mouse)<50) {
	draw_set_color(c_white);
	draw_line_width(x+16,y+16,mouse_x,mouse_y,1);
}