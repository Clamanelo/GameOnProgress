var _width = display_get_gui_width();
var _height = display_get_gui_height();
if(mouse_check_button(mb_left))&&(place_meeting(x,y,obj_Mouse)){
x = obj_Mouse.x-32;
y = obj_Mouse.y-32;
}else{
	x=_width;
	y=DebugSystem.y+y;
}
if(global.debug==true){
	image_xscale=lerp(image_xscale,2.5,.1);	
}else image_xscale=0;
image_yscale=image_xscale;

var _halign = draw_get_halign();
draw_set_halign(fa_right);
draw_text(_width - 5, 5, "This text is drawn in the top-right corner of the GUI");
draw_set_halign(_halign);