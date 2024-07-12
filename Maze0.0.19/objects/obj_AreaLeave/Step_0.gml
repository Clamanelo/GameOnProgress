if(start==false){
	if(place_meeting(x,y,obj_Player)){
		start=true;
	}
} else if(!place_meeting(x,y,obj_Player))collision=true;


if(collision==true){
	if(instance_exists(obj_dialog))instance_destroy(obj_dialog);
		if(instance_exists(obj_ExitDoor)){
			obj_ExitDoor.image_index=4;
		}
		audio_play_sound(SoundLoudNoise1,1,false);
		audio_play_sound(SoundLoudNoise2,1,false);
	var _inst = instance_create_layer(x, y, layer, obj_dialog);
	with(_inst) 
	    {
	    text[0] = "...";
		text[1] = "Que barulho foi esse!?";
	    text_last = 1;
	    text_width = 300;
	    text_x = x;
	    text_y = y;
	    text[text_current] = string_wrap(text[text_current], text_width);
	    }
	instance_destroy();
}