var spr_number = sprite_get_number(sprite);

for(var i=0;i<spr_number;i++)
	draw_sprite_ext(sprite,i,x,y-(i/2) * esc,esc,esc,rot,-1,1);
	draw_set_color(c_green);
	draw_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_top,true);