if(global.CrateOpening==false) {
	if(distance_to_object(obj_Player)<32){
		if(image_xscale<1.5)image_xscale=lerp(image_xscale,1.5,.1);
		image_yscale=image_xscale;
	}else{
		if(image_xscale<1.5)image_xscale=lerp(image_xscale,0,.1);
		image_yscale=image_xscale;
		if(image_xscale<=0)instance_destroy();
	}
}else instance_destroy();
//image_angle = point_direction(x,y,obj_Player.x,obj_Player.y)+90;