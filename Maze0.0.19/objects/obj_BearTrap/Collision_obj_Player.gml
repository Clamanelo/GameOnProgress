if(delay<=1)&&(Activated=false){
	obj_Camera.shakeValue=3;
	whatGot = other.object_index;
	obj_Player.health_Player="Bleeding";
	obj_Player.health_-=3;
	audio_play_sound(SoundBearTrapGrab,600,0);
	audio_play_sound(SoundCrateOpen,300,0);
	imageIndex=0;
	image_index=1;
	Activated=true;
}