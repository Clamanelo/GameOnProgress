image_alpha=alpha;
var player = obj_Player;
var collide=false;
if(vanish==true){
	if(distance_to_object(player)<distance)collide=true;
	if(collide==true)alpha-=.05;
	if(alpha==0)instance_destroy();	
}else{
	if(distance_to_object(player)<distance) {
		if(alpha>0) alpha-=.05;
	}else if(alpha<1)alpha+=.01;
}