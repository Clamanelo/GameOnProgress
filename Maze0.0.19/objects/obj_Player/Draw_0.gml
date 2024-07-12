draw_set_alpha(1);
//Draw Line to mouse
script_drawForce();
//Draw sprite tha follow the mouse
draw_sprite_ext(sprite_index,image_index,x,y,image_x,image_y,angleBody,image_blend,image_alpha);
draw_sprite_ext(spr_PlayerTopDownHead,0,x,y,image_x,image_y,angleHead,image_blend,image_alpha);
//Objects Throw
if(global.drawItemName!=noone)script_ItemPickUp();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if(instance_exists(obj_light)) {
	if((obj_light.image_xscale>.1)&&(stamina<stamina_max/10)) {
		draw_set_color(c_white);
		draw_set_font(font_little);
		draw_text(obj_Player.x,obj_Player.y-50,"Estou cansado..");
	}
}