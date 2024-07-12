if(global.hand!=id){
	draw_self();
	draw_set_color(c_white);
	if(distance_to_object(obj_Mouse)<32)draw_line(x,y,obj_Mouse.x,obj_Mouse.y);
	}else{
draw_sprite(sprite_index,0,-10,-10);

	switch(names){
		case name_.Lighter:
		draw_set_alpha(.5);
		if(LightTurnOn==true){
			var L = lightTime/5;
			draw_circle_color(obj_Player.x,obj_Player.y,L,c_black,c_white,true);
			//draw_set_halign(fa_center);
			//draw_text(obj_Player.x,obj_Player.y+50,$"FUEL: {L}")
		}
		draw_set_alpha(1);
		break;
		
		
		case name_.Bandage:
		draw_set_alpha(1);
		draw_set_color(c_white);
		draw_set_halign(fa_center);
		var BC = bar_cure/2;
		draw_circle(obj_Player.x,obj_Player.y,BC,false);
		draw_circle(obj_Player.x,obj_Player.y,50,true);
		draw_text(obj_Player.x,obj_Player.y+50,"HOLD MOUSE LEFT BUTTON");
		//draw_circle_color(obj_Mouse.x,obj_Mouse.y,L,c_orange,c_yellow,true);
		break;
	}
}