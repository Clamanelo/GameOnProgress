if(global.debug==true){
	//MAKE A LINE (ENEMY TO PLAYER + DISTANCE)
	var player = obj_Player;
	if(instance_exists(player)) {
		var enemy = obj_Eatter;
		if(instance_exists(enemy)) {
			draw_set_color(c_yellow);
			draw_line(player.x,player.y,enemy.x,enemy.y);
			draw_text(player.x,player.y+76,$"Distance: {distance_to_object(enemy)}");
		}
	}
	//
	
	//Draw Dialogue Triggers
	if(instance_exists(obj_ProgressiveSystem)) {
		with(obj_ProgressiveSystem){
			draw_set_color(c_green);
			draw_text(x,y,object_get_name(object_index));
			draw_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_top,true);
			draw_text(x,y+15,trigger);
		}
	}
	//Draw AreaLeave Triggers
	if(instance_exists(obj_AreaLeave)) {
		with(obj_AreaLeave){
			draw_set_color(c_yellow);
			draw_text(x,y,object_get_name(object_index));
			draw_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_top,true);
			draw_text(x,y+15,start);
		}
	}
	
}