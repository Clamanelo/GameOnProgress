draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_font(font_little);
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();
switch(room){
	case StartScreen:
	//TITTLE
	draw_set_font(font_medium);
	draw_text(room_width/2,100,"THE DARKNESS BEHIND YOU");
	draw_set_font(font_little);
	//VERSION AVAIBLE
	draw_set_color(c_red);
	draw_text(1000,550,$"Build");
	draw_set_color(c_white);
	draw_text(1070,550,$"{VERSION}");
		//draw_text(gui_w/2,gui_h/2,window_get_width());
		//draw_text(gui_w/2,gui_h/2+30,window_get_height());
	break;
	case RoomLoading:
	draw_set_font(font_little);
	draw_text(room_width/2,room_height/2,"Um pouco de silencio viria a calhar");
	
	
	break;
	case RoomApartament12:

		//draw_text(gui_w/2,gui_h/2,room);
	case FoundMe:
	if(global.pause==true){
		draw_set_color(c_black);
		draw_rectangle(0,0,room_width,room_height,false);
		draw_set_font(font_medium);
		draw_set_color(c_white);
		draw_text(x,y,CHAPTER);
		draw_set_font(font_little);
		draw_text(x,y+60,string_hash_to_newline("Sair#ALT + F4"));
		audio_pause_all();
		instance_deactivate_all(true);
	}else{
		audio_resume_all();
		instance_activate_all();
	}
	
	break;
	
	case Die:
	//Room Die Text
		draw_set_color(c_white);
		draw_text(room_width/2,room_height/2,"Você perdeu sem qualquer trato");
		draw_text(room_width/2,(room_height/2)+30,"Voce nao e mais dono de teu corpo.");
	
	break;
	
	case EndOfDemo:
	//Room End Text
		draw_set_color(c_green);
		draw_text(room_width/2,room_height/2,"This is the END of the DEMO");
		draw_text(room_width/2,(room_height/2)+40,"Thanks for play!");
		draw_set_color(c_yellow);
		draw_text(room_width/2,(room_height/2)+60,"Made by: Vonkya/Brunoo");
		
	break;
}