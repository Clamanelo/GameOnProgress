if(global.Crate==id){
	if(distance_to_object(obj_Player)>20){
		global.Crate=noone;
		global.CrateOpening=false;
	}
	if(opening<=0)instance_destroy();
}