if(instance_exists(obj_Player)){
	x = obj_Player.x;
	y = obj_Player.y;
	//Light controll create
	if(!instance_exists(obj_ControllLight))instance_create_layer(0,0,"LayerLightControll",obj_ControllLight);
}
switch(room){

	case StartScreen:
	
		//Mouse create
	if(!instance_exists(obj_Mouse))instance_create_depth(x,y,depth,obj_Mouse);
	global.pause=false;
	global.nextRoom=RoomApartament12;

	//audio_play_sound(SoundMusicMenu, 1, true);
	//audio_play_sound(SoundMusic, 1, true);	
	
	break;
	case RoomLoading:
		if(timer<=0){
			
			
			obj_CurtainAlpha.alpha=true
			if(obj_CurtainAlpha.image_alpha==1)room_goto(global.nextRoom);
			}else{
				if(timer>=499)audio_play_sound(SoundPeopleTalking,1,false);
				timer--;
			}

	break;
	case RoomApartament12:
	case FoundMe:
		//Mouse create
	if(!instance_exists(obj_Mouse))instance_create_depth(x,y,depth,obj_Mouse);

	if(global.pause==false) {
		if(instance_exists(obj_ButtonBox))instance_destroy(obj_ButtonBox);
		if(instance_exists(obj_Player)){
			if(obj_Player.health_==obj_Player.health_max) 
			health_alpha=lerp(health_alpha,0,.05);
		else 
			health_alpha=lerp(health_alpha,1,.05);
		}
	}else{
		if(!instance_exists(obj_ButtonBox))
		with(instance_create_depth(room_width/2,500,depth,obj_ButtonBox)){
			type = types.quit;
		}
	}
	break;
}

//switch(objective){
//	//Missions/Objectives
//	case objectives.start:
//	global.objective=" Survive..?";
//	//global.objectiveNeed=3;
//	//global.secound--;
//	if(global.secound>0)global.secound-=1/60;
//	if(global.minutes>0)&&(global.secound==0){
//		global.secound=60;
//		global.minutes-=1;
//	}else if(global.minutes==0)&&(global.secound==0) {
//		var inst_exit = obj_Exit;
//		if(instance_exists(obj_Eatter))inst_exit = instance_nearest(obj_Eatter.x,obj_Eatter.y,obj_Exit);
//		with(inst_exit){
//			image_index=4;
//		}
//		objective = objectives.goback;
//	}

//	//if(global.objectiveProgress==global.objectiveNeed) objective = objectives.goback;
//	break;
	
	
//	case objectives.goback:
//		global.objective="I've heard something.. maybe a exit has opened on the floor";
//	break;
//}