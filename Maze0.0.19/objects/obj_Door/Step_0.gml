image_angle=lerp(image_angle,angle,.1);
if(canOpen==true) {
	delay--;
	if(place_meeting(x,y,obj_Player)&&(delay<=0)){
		angle=choose(90,-90);
		delay=30;
	}
	if(distance_to_object(obj_Player)<25){
	//		if(keyboard_check_pressed(vk_space)){
			
	//		if(place_meeting(x+32,y,obj_Player))if(angle>-90)angle+=-3;
	//		if(place_meeting(x-32,y,obj_Player))if(angle<90)angle+=3;
	//	}
		if(keyboard_check_pressed(vk_space)){
			
			if(image_angle!=0)angle=0;
			if(place_meeting(x+32,y,obj_Player)){
				angle=-90;
				audio_play_sound(SoundDoorOpen,1,false);
				audio_play_sound(SoundDoorOpen2,2,false);
				delay=30;
			}
			if(place_meeting(x-32,y,obj_Player)){
				angle=90;
				audio_play_sound(SoundDoorOpen,1,false);
				audio_play_sound(SoundDoorOpen2,2,false);
				delay=30;
			}
		
		}	
	}
}else{
	if(distance_to_object(obj_Player)<25){
		if(keyboard_check_pressed(vk_space) && canOpen==false){
			if(instance_exists(obj_dialog))instance_destroy(obj_dialog);
				var _inst = instance_create_layer(x, y, layer, obj_dialog);
				with(_inst)
				    {
				    text[0] = "Trancada..";
					color=c_white;
				    text_last = 1;
				    text_width = 300;
				    text_x = x;
				    text_y = y;
				    text[text_current] = string_wrap(text[text_current], text_width);
				    }	
			}
	}
}

px[0] = lengthdir_x(sprite_xoffset, image_angle + 180) + lengthdir_x(sprite_yoffset, image_angle + 90);
py[0] = lengthdir_y(sprite_xoffset, image_angle + 180) + lengthdir_y(sprite_yoffset, image_angle + 90);

px[1] = lengthdir_x(sprite_width - sprite_xoffset, image_angle) + lengthdir_x(sprite_yoffset, image_angle + 90);
py[1] = lengthdir_y(sprite_width - sprite_xoffset, image_angle) + lengthdir_y(sprite_yoffset, image_angle + 90);

px[2] = lengthdir_x(sprite_width - sprite_xoffset, image_angle) + lengthdir_x(sprite_height - sprite_yoffset, image_angle - 90);
py[2] = lengthdir_y(sprite_width - sprite_xoffset, image_angle) + lengthdir_y(sprite_height - sprite_yoffset, image_angle - 90);

px[3] = lengthdir_x(sprite_xoffset, image_angle + 180) + lengthdir_x(sprite_height - sprite_yoffset, image_angle - 90);
py[3] = lengthdir_y(sprite_xoffset, image_angle + 180) + lengthdir_y(sprite_height - sprite_yoffset, image_angle - 90);