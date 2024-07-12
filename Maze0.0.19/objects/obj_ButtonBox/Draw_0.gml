draw_set_alpha(1);
switch(type){
	case types.play:
	//draw_self();
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	draw_set_font(font_littleMedium);
		if(mouseEnter==false)draw_text(x,y,"ACORDAR") else draw_text(x,y,"~ ACORDAR ~");
	break;
	
	case types.help:
		//if(mouse_check_button_pressed(mb_left))
	break;
	
	case types.quit:
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_red);
	draw_set_font(font_littleMedium);
		if(mouseEnter==false)draw_text(x,y,"SAIR") else draw_text(x,y,"~ SAIR ~");
	break;
	
	case types.options:
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	draw_set_font(font_littleMedium);
	if(mouseEnter==false)draw_text(x,y,"OPCOES") else draw_text(x,y,"~ OPCOES ~");
	break;
	
	case types.endDemo:
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_red);
	draw_set_font(font_medium);
		draw_text(x,y,"VOLTAR");
	break;
	
	case types.testRoom:
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_red);
	draw_set_font(font_medium);
		draw_text(x,y,"TESTES");
	break;
	
}