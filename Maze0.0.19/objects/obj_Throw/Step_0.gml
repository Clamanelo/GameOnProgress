audio_emitter_position(s_emit, x, y, 0);
switch(names){
		case name_.defaut:
			if(name=="Stone"){
				names=name_.Stone;
				sprite_index=spr_Stone;
			}
			if(name=="Lighter"){
				names=name_.Lighter;
					sprite_index=spr_Lighter;
			}
			if(name=="Bandage"){
				names=name_.Bandage;
				sprite_index=spr_Bandage;
			}
		break;
		case name_.Stone:
		info="Use to throw. #(HOLD RightClick to AIM)#(LeftClick to USE)";
			if(global.hand==id) {
				x = obj_Player.x;
				y = obj_Player.y;
				distance=0;
			}
		if(place_meeting(x,y,obj_Crate)){
			var place =instance_nearest(x,y,obj_Crate);
			instance_destroy(place);
			instance_destroy();
		}
		break;
		case name_.Lighter:
		info="To light your way.. #(LeftClick to use)";
		if(instance_exists(obj_light) && global.hand==id) {
				x = obj_Player.x;
				y = obj_Player.y;
				//Distance of throw
				distance=0;
				if(!mouse_check_button(mb_right))&&(mouse_check_button_pressed(mb_left)){
					var randTryTurnOn;
					if(LightTurnOn=false) {
						//Try to light up
						randTryTurnOn=irandom(2);
					}else randTryTurnOn=0;
					//Sounds to play (start lighter)
					audio_play_sound(SoundMatch,1,false);
					if(randTryTurnOn==0)LightTurnOn=!LightTurnOn;
				}
					var Olight = obj_light;
						if(LightTurnOn){
							//Sounds to play (continue sound)			
							audio_play_sound(SoundMatchLightUp,1,true);
							if(light<25)light+=.1;else light-=1;
							Olight.image_xscale=light/12;
							Olight.sprite_index=spr_light;
							Olight.image_blend=c_orange;
							
							
						}else{
								if(light<=0){
									audio_stop_sound(SoundMatchLightUp);
									Olight.sprite_index=spr_lightCone;
									Olight.image_blend=c_white;
								}else{
									if(Olight.sprite_index=spr_light){
										light=lerp(light,0,.1);
										Olight.image_xscale=light/12;
										if(!instance_exists(obj_EyeCloseHud) && (light>10))instance_create_depth(obj_Player.x,obj_Player.y,-1,obj_EyeCloseHud);
									}
								}
						}
	}
		break;
		
		case name_.Bandage:
		info="To cure when is bleeding.#(HOLD LeftClick to USE)";
		if(global.hand==id) {
				x = obj_Player.x;
				y = obj_Player.y;
				distance=0;
		}
		if(!mouse_check_button(mb_right)){
			if(obj_Player.health_Player=="Bleeding")&&(mouse_check_button(mb_left)){
				bar_cure+=.5;
				if(bar_cure>=100){
					obj_Player.health_Player="Normal";
					instance_destroy();
				}
			}
		}
		
		break;
}