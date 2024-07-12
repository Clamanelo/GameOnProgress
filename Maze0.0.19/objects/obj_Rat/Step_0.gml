if(image_index==2) exit;
audio_emitter_position(s_emit, x, y, 0);
if(distance_to_object(obj_Player)<50){
	speed=random_range(2,4);
	image_index=1;
	direction=lerp(direction,direction+random_range(10,-10),.1);
	image_angle=lerp(image_angle,direction,.1);
	script_Particle(x+random_range(5,-5),y+random_range(5,-5),spr_Particle,1,c_red,random(3),0,random(360),"Particles",-1,true,random(3));
	audio_stop_sound(SoundRatsNoise2);
	audio_stop_sound(SoundRatsNoise3);
}else{
	image_angle=lerp(image_angle,image_angle+random_range(30,-30),random(.1));
	if(state!=1) {
		audio_play_sound_on(s_emit,SoundRatsNoise1,true,1);
		audio_play_sound_on(s_emit,SoundRatsNoise2,true,1);
		audio_play_sound_on(s_emit,SoundRatsNoise3,true,1);
	state=1;
	}
}
if(distance_to_object(obj_Player)>300)&&(speed>0)instance_destroy();
//Maybe make them walk around the body?