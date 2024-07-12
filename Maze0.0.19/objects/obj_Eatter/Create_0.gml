randomize();
global.EnemyPlace=false;
if(global.EnemyPlace==false){
	while(place_meeting(x,y,obj_wall)or(distance_to_object(obj_Player)<500)){
		x = irandom_range(175,room_width);
		y = irandom_range(175,room_height);
		global.EnemyPlace=true;
	}
}
path = path_add();
MoveSpeed=3;
target_x = x;
target_y = y;
firstX=x;
firstY=y;
target=noone;

enum steps {
	find,
	walk,
	target,
	attack,
	
}
step = steps.find;
instance_create_depth(x,y,depth,obj_Pendulum);

timerPerAudio=20;
//Create Emitter
s_emit = audio_emitter_create();
audio_max_distance_to_be_heard = 700;
audio_starts_to_drop_at = 300;

//Set the model to falloff based on distance from listener
audio_falloff_set_model(audio_falloff_linear_distance);
audio_emitter_position(s_emit, x, y, 0);
audio_emitter_falloff(s_emit, audio_starts_to_drop_at, audio_max_distance_to_be_heard, 1);
state = 0;