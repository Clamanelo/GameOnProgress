if(!place_meeting(x,y,Par_Collision)) {
	if(global.hand!=id)if((speed>1)&&(speed<2))or((speed<-1)&&(speed>-2)){
		script_Particle(x,y,spr_Particle,0,c_dkgray,2,2,random(360),"Particles",30);
		if(state==0){
			audio_play_sound_on(s_emit,SoundDropSomething,false,200);
			state=1;
		}
	}
	invert=false;
	if(distance>=maxDistance-10){
		speed=lerp(speed,0,.1);
		}else distance++;
	}else{
	if(speed>0){
		if(state==0){
			audio_play_sound_on(s_emit,SoundDropSomething,false,200);
			state=1;
		}
		if(invert==false){
				image_angle=random(360);
				speed = -speed;
				invert=true;
			}
	}
	state=0;
}