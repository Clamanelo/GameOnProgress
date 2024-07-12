draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_font(font_little);
switch(room){

	//case WhereItStarted:
	case FoundMe:
	if(global.pause==false) {
		//Health
		draw_set_alpha(health_alpha);

		draw_set_color(c_red);
		heal = lerp(heal,obj_Player.health_*9,.01);
		draw_rectangle(680,15,677+(heal),18,false);
		draw_set_color(c_white);
		draw_rectangle(680,15,677+(obj_Player.health_*9),18,false);
		//Healing
		draw_set_color(c_red);
		heal = lerp(heal,obj_Player.health_*9,.01);
		draw_rectangle(680,15,677+(heal),18,false);
		draw_set_color(c_white);
		draw_rectangle(680,15,677+(obj_Player.health_*9),18,false);

		//Draw GUI
		draw_set_alpha(1);
		var gui_w = display_get_gui_width();
		var gui_h = display_get_gui_height();
		draw_sprite(spr_HUDBackpack,0,gui_w/2,38);
		draw_set_halign(fa_right);
		var swit;
		if(global.hand == noone) swit=0 else swit=1;
		draw_text(gui_w/2,50,$"{swit}/1");
	}
	break;
}


//Stamina
//draw_set_alpha(stamina_alpha);
//draw_set_color(c_red);
//draw_rectangle(200,600,200+stamina_back,620,false);
//draw_set_color(c_white);
//draw_rectangle(200,600,200+(obj_Player.stamina*4),620,false);


//draw_set_color(c_olive);
//draw_rectangle(680,736,677+(obj_Player.health_*8),743,false);
//draw_sprite_ext(spr_HudVitality,0,680,736,1,1,0,c_white,health_alpha);

//draw_text(780,20,"Objective: ");
//draw_set_color(c_yellow);
//draw_set_halign(fa_left);
//draw_set_valign(fa_bottom);
//draw_text(710,50,global.objective);
//if(global.objectiveProgress!=global.objectiveNeed)draw_text(-190,45,string(global.objectiveProgress)+"/"+string(global.objectiveNeed));

//if(room==Labrynth) {
//		if(eye_alpha>0){
//	//Eye sprite
//		draw_sprite_ext(spr_Clock,0,gui_w-800,gui_h-400,2,2,0,c_white,eye_alpha);
//	//Timer

	
//	draw_set_alpha(1);
//	draw_set_color(c_white);
//	draw_set_font(font_medium);
//		if(global.secound<10)&&(global.minutes<10) {
//		draw_text(gui_w-1000,gui_h-410,$"{round(abs(global.minutes))}");
//			draw_text(gui_w-590,gui_h-410,$"{round(abs(global.secound))}");
//		}else if (global.secound>=10)&&(global.minutes>=10){
//			draw_text(obj_Player.x-105,obj_Player.y-5,$"{round(abs(global.minutes))}");
//			draw_text(gui_w-580,gui_h-410,$"{round(abs(global.secound))}");
//		}else if (global.secound<10)&&(global.minutes>=10){
//			draw_text(obj_Player.x-105,obj_Player.y-5,$"{round(abs(global.minutes))}");
//			draw_text(gui_w-590,gui_h-410,$"{round(abs(global.secound))}");
//		}else if (global.secound>=10)&&(global.minutes<10){
//			draw_text(gui_w-1000,gui_h-410,$"{round(abs(global.minutes))}");
//			draw_text(gui_w-580,gui_h-410,$"{round(abs(global.secound))}");
//		}
		
//	}
//}