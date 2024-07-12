var spr_number = sprite_get_number(sprite_index);

for(var i=0;i<spr_number;i++)
	draw_sprite_ext(sprite_index,i,x,y-(i/2) * esc,esc,esc,rot,-1,1);
	draw_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_top,true);