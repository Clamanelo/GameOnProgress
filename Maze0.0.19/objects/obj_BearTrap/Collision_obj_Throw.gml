if(delay<=1)&&(Activated=false){
	obj_Camera.shakeValue=1;
	whatGot = other.object_index;
	other.speed=0;
	instance_destroy(other);
	audio_play_sound(SoundCrateOpen,300,0);
	imageIndex=0;
	image_index=1;
	Activated=true;
}