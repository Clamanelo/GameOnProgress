audio_emitter_position(s_emit, x, y, 0);
if(state==0){
	audio_play_sound_on(s_emit,SoundRunMonster,true,200);
	state=1;
}
var angle,dir;
switch(step) {
	case steps.find:
	if(target==noone){
		if(!instance_exists(obj_PointEatter)){
			instance_create_depth(random_range(50,room_width-50),random_range(50,room_height-50),depth,obj_PointEatter);
			target=obj_PointEatter;
			step=steps.walk
		}
		
	}
	break;
	case steps.walk:
	audio_stop_sound(SoundWalkMonster);
	//Detect Player
	if(distance_to_object(obj_Targets)<distance_Target){
		target=instance_nearest(x,y,obj_Targets);
		step=steps.target;
	}
	//Target to PointEatter
	if(instance_exists(target))&&(target!=noone) {
		target_x = target.x;
		target_y = target.y;	
		if(distance_to_object(target)<50) instance_destroy(target);
	}else {
		if(instance_exists(obj_PointEatter)) instance_destroy(obj_PointEatter);
		target=noone;
		target_x = firstX;
		target_y = firstY;
		step=steps.find;
	}
	//Angle config
		angle = point_direction(x,y,target_x,target_y);
		dir = angle_difference(angle,image_angle);
		image_angle += dir*0.1;
		MoveSpeed=lerp(MoveSpeed,min_Speed,.1);
	break;
	
	case steps.target:
	audio_stop_sound(SoundWalkMonster);
	state=0;
	if(state==0){
		audio_play_sound_on(s_emit,SoundNearDie,false,200);
		state=1;
	}
	//Remove Any other way
	if(instance_exists(obj_PointEatter)) instance_destroy(obj_PointEatter);
		//Detect Player
		if(distance_to_object(target)>distance_Target){
			target=noone;
			step=steps.find;
		}else{
			target_x = target.x;
			target_y = target.y;
			if(distance_to_object(target)<30){
				step=steps.attack;
			}
		}
		//Angle config
		angle = point_direction(x,y,target_x,target_y);
		dir = angle_difference(angle,image_angle);
		image_angle += dir*0.1;
		MoveSpeed=lerp(MoveSpeed,max_Speed,.1);
	break;
	
	case steps.attack:
		//Reduse moveSpeed
		MoveSpeed=lerp(MoveSpeed,reduseSpeed,.1);
		audio_play_sound(SoundWalkMonster,false,200);
		if(global.particles==true) {
				target_x = target.x;
				target_y = target.y;
				var dire=point_direction(x,y,target_x,target_y);
				var len = 20;
				var xx,yy;
				yy = y+lengthdir_y(len,dire);
				script_Particle(x,y,spr_Particle,0,c_black,1,3,random(360),"Particles",200);
			}
		//Angle config
		angle = point_direction(x,y,target_x,target_y);
		dir = angle_difference(angle,image_angle);
		image_angle += dir*0.1;
		//Shake and Sound value
		audio_play_sound(SoundAttackMonster,300,0);
		obj_Camera.shakeValue=1;
		//Deal damage
		obj_Player.health_-=1;
		obj_Player.health_Player="Bleeding";
		//Back to the step target
		step=steps.target;
	break;
	
}

mp_grid_path(global.grid,path,x,y,target_x,target_y,true);
path_start(path,MoveSpeed,path_action_stop,true);
var dire=point_direction(x,y,target_x,target_y);
var len = 0;
obj_Pendulum.x = x+lengthdir_x(len,dire);
obj_Pendulum.y = y+lengthdir_y(len,dire);