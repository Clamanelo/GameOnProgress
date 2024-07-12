if(Activated=true)&&(whatGot==obj_Player){
	if(timePerAudio<=0){
		audio_play_sound(SoundBearTrapHeart,300,1);
		timePerAudio=50;
	}else timePerAudio--;
	obj_Player.health_-=.01;
	obj_Player.x = lerp(obj_Player.x,x,.1);
	obj_Player.y = lerp(obj_Player.y,y,.1);
	obj_Player.MoveSpeed=0;
	alpha=lerp(alpha,1,.1);
	if(keyboard_check_pressed(vk_space))
	{
		audio_play_sound(SoundBearTrapGrab,300,0);
		audio_play_sound(SoundCrateOpen,300,0);
		angle=random(360);
		imageIndex+=1;
		if(imageIndex>=4){
			image_index=0;
			delay = 30;
			audio_stop_sound(SoundBearTrapHeart);
			Activated=false;
		}
	}
	
}else if(Activated=false){
	imageIndex=0;
	if(delay>0){
		delay-=.1;
		image_index=0;
		if(whatGot==obj_Player)obj_Player.MoveSpeed=3;
		}
}