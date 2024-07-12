name="";
info="";
distance=0;
maxDistance=0;
angle=image_angle;
invert=false;
enum name_{
	defaut,
	Stone,
	Lighter,
	Bandage
}
names = name_.defaut;

light = 2;
lightTime = 200;
LightTurnOn=false
bar_cure=0;

//Create Emitter
s_emit = audio_emitter_create();
audio_max_distance_to_be_heard = 700;
audio_starts_to_drop_at = 300;

//Set the model to falloff based on distance from listener
audio_falloff_set_model(audio_falloff_linear_distance);
audio_emitter_position(s_emit, x, y, 0);
audio_emitter_falloff(s_emit, audio_starts_to_drop_at, audio_max_distance_to_be_heard, 1);
state = 0;