draw_self();
if((Activated=true)&&(imageIndex<=4)){
	if(whatGot==obj_Player){
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_sprite_ext(spr_ActionScene,imageIndex,obj_Player.x,obj_Player.y-50,1,1,angle,c_white,alpha);
		draw_set_color(c_white);
		draw_text(obj_Player.x,obj_Player.y+50,"PRESS 'SPACE'!");
	}
}