switch(type){
	case types.play:
		//audio_play_sound(SoundStartSound,100,0);
		room_goto(RoomLoading);
	break;
	
	case types.help:
		//if(mouse_check_button_pressed(mb_left))
	break;
	
	case types.quit:
		game_end();
	break;
	
	case types.options:
	break;
	
	case types.endDemo:
		game_restart();
	break;
	
	case types.testRoom:
		room_goto(RoomTest)
	break;
	
}