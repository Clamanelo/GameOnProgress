// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_Stamina(velocityToUse=1,velocityToCharge=1){
		static recharge = false;
		var keyUse=keyboard_check(vk_shift);
		
		if(recharge=false){
			MoveSpeed=lerp(MoveSpeed,MoveSpeedRun,.1);
			if(keyUse){
				stamina-=velocityToUse
				if(timeToSound<=0) {
					audio_play_sound(SoundPlayerRunning,1,false);
					timeToSound=10;
				}else timeToSound--;
			}else recharge=true;
			if(stamina<10)recharge=true;
		}else{
			
			MoveSpeed=lerp(MoveSpeed,MoveSpeedWalk,.05);
			if(stamina<stamina_max)stamina+=velocityToCharge;	
			if(stamina>stamina_max/1.25)if(keyUse)recharge=false;
		}
		imageSpeed=MoveSpeed/10;
}