switch(room){

	case StartScreen:
		audio_play_sound(SoundDarkAmbience, 1, true);
	break;
	case WhereItStarted:
	case FoundMe:
		global.grid = mp_grid_create(0,0,room_width/32,room_height/32,32,32);
		mp_grid_add_instances(global.grid, obj_wall, true);
		audio_play_sound(SoundMusic, 1, true);
		instance_create_layer(x,y,"SystemAbove",obj_LayerChanger);
	break;
	case Die:
		audio_play_sound(SoundHeartBeat, 1, true);
	break;
}