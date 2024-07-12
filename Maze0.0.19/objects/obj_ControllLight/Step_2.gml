// Update one light to follow the mouse
if(instance_exists(obj_Player)){
	with(m) {
		x = obj_Player.x;
		y = obj_Player.y;
		sprite_index=global.SpritelightPlayer;
		var _dir = point_direction(x, y, mouse_x, mouse_y)-90;
		var _diff = angle_difference(_dir, image_angle);
		image_angle += _diff * 0.1;
		
		instance_deactivate_layer("Walls");
		instance_deactivate_layer("Interatives");
		//instance_deactivate_layer("Crates");
		instance_deactivate_layer("Drops");
		instance_deactivate_layer("Particles");
		instance_deactivate_object(obj_Trace);
		instance_activate_region(bbox_left-600, bbox_top-600, bbox_right+600, bbox_bottom+600, true);
	
	}
}
// Update this light to draw the correct shadows
with (m)
	light_update();