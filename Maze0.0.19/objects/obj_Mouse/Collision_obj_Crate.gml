if(mouse_check_button_pressed(mb_left)) {
	var box_n = instance_nearest(x,y,obj_Crate)
	with(obj_Player){
		if(distance_to_object(box_n)>22)exit;
	}
	if(global.CrateOpening==true) {
		global.res_w=1200;
		global.res_h=600;
	}
	global.res_w-=100;
	global.res_h-=50;
	
	with(box_n){
		global.Crate=id;
		global.CrateOpening=true;
		opening-=1;
		if(instance_exists(obj_Camera))obj_Camera.shakeValue=.5;
	}
	audio_play_sound(SoundCrateOpening,300,0);
}