draw_self();
if(is_debug) {
	var add_angle = 10;
	var angle_dir = 1; // -1, 1
	var dir = image_angle;
	
	for(var rays = 0; rays <= ray_count; rays ++) {
		for(var line_length=0; line_length < ray_length; line_length++) {
			var xx = x + lengthdir_x(line_length, dir);
			var yy = y + lengthdir_y(line_length, dir);
			
			if(position_empty(xx,yy) == false) {
				if(instance_place(xx, yy, Par_Collision) != noone) {
					draw_set_color(c_red);
					draw_circle(xx,yy, 3, false);
					break;
				}
				if(instance_place(xx, yy, obj_Player) != noone) {
					draw_set_color(c_red);
					draw_circle(xx,yy, 3, false);
					break;
				}
			}
			
			draw_set_color(c_red);
			draw_point(xx,yy);
		}
		dir += (add_angle * rays) * angle_dir;
		angle_dir *= -1;
	}
	
}