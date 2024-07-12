if(global.debug==true){
	draw_set_alpha(1);
	//Get the size of the screen to use
	var gui_w = display_get_gui_width();
	var gui_h = display_get_gui_height();
	//Draw a AREA to see the size of screen
	draw_set_color(c_red);
	draw_rectangle(50,50,gui_w-50,gui_h-50,true);
	draw_set_font(font_little);
	draw_set_color(c_yellow);
	draw_set_halign(fa_left);
	var xx = 55;
	var yy = 65;
	draw_text(xx,yy,$"FPS REAL: {fps_real}");
	draw_text(xx,yy+15,$"FPS: {fps}");
	draw_text(xx,yy+195,$"Box's: {instance_number(obj_CardBox)}");
	var _halign = draw_get_halign();
	draw_set_halign(_halign);
	
	draw_text(gui_w/2,gui_h/2,window_get_width());
	draw_text(gui_w/2,gui_h/2+30,window_get_height());
	
	if(instance_exists(obj_dialog)) {
		with(obj_dialog) {
			draw_text(xx,yy+45,$"Dialog: {text[text_current]}");
			draw_text(xx,yy+90,$"Timer: {alarm[0]}");
			draw_text(xx,yy+105,$"Alpha: {alpha}");
			draw_text(xx,yy+120,$"Array_Lengh: {array_length(text)}");
			draw_text(xx,yy+135,$"CurrentText: {text_current}");
			draw_text(xx,yy+150,$"Moved: {moved}");
			draw_text(xx,yy+165,$"TimePerText: {timerPerText}");
		}
	}
	
	//if(instance_exists(obj_HUD)) {
	//		draw_set_color(c_yellow);
	//		draw_text(xx,yy+180,obj_HUD.);
	//}
}
//var _width = display_get_gui_width();
//var _halign = draw_get_halign();
//draw_set_halign(fa_right);
//draw_text(_width - 5, 5, "This text is drawn in the top-right corner of the GUI");
//draw_set_halign(_halign);