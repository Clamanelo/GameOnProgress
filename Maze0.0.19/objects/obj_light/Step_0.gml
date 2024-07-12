if(!surface_exists(light))
light = surface_create(room_width, room_height);

light_update();
if(failLight==true) {
	if(failTimer<=0) {
		image_alpha=0;
		failTimer=timer;
	}else{
		image_alpha=1;
		failTimer--;
	}
}