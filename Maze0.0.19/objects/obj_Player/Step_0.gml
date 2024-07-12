//look angle of sprite
var _dir = point_direction(x, y, mouse_x, mouse_y)-90;
var _diff = angle_difference(_dir, angleHead);
angleHead += _diff * 0.07;
var angle90=angleHead+90;
script_Throw(angle90,30);
audio_listener_position(x,y, 0);

//Check for angle Body ajust to angle Head
var max_angle_neck = 50;
	if((angleHead>angleBody+max_angle_neck)or(angleHead<angleBody-max_angle_neck))angleBody=lerp(angleBody,angleHead,.1);
	if((MoveX!=0) or (MoveY!=0)){
		angleBody=lerp(angleBody,angleHead,.1)
	}
	
//Move
var left,right,up,down;

	left=keyboard_check(ord("A"));
	right=keyboard_check(ord("D"));
	up=keyboard_check(ord("W"));
	down=keyboard_check(ord("S"));

MoveX=(right-left)*MoveSpeed;
MoveY=(down-up)*MoveSpeed;

//Stamina System
script_Stamina(.2,.1);

//Sprite move change
if((MoveX!=0) or (MoveY!=0)){
	if(timeToSound<=0) {
		audio_play_sound(SoundPlayerWalk,1,false);
		timeToSound=20;
	}else timeToSound--;
	image_speed=imageSpeed;
	if(global.hand!=noone){
		sprite_index=spr_PlayerTopDownWalkHand;
		}else sprite_index=spr_PlayerTopDownWalk2;
	}else{
	image_speed=0;
	sprite_index=spr_PlayerTopDownIdle2;
	if(global.hand!=noone){
		image_index=1;
	}else image_index=0;
	//image_index=lerp(image_index,0,.1);
	}

//Collison
var Wall = Par_Collision;
//Horizontal move & collide
var _hCol = move_and_collide(MoveX, 0, Wall, abs(MoveX))
 
//Walk down slope
if (place_meeting(x,y + abs(MoveX) + 1 ,Wall)) && (MoveY >= 0)
{   
    MoveY += abs(MoveX) + 1;
}
 
//Vertical move & collide
var _vCol = move_and_collide(0, MoveY, Wall, abs(MoveY)+1 , MoveX, MoveY, MoveX, MoveY)
if (array_length(_vCol)  > 0)
{
    MoveY = 0;
}

/////////////////////////////////////////////
//System of BLOOD and INSANITY
/////////////////////////////////////////////
if(false){
if(health_>0.5) {
	var layers = ["Effect_5","Effect_6","Effect_7","Effect_8","Backgrounds_2"];
	if(health_Player=="Normal"){
		if(health_<health_max)health_+=0.003;
			if(health_>=(health_max/2)){
				for(var i=0;i<array_length(layers);i++)
				layer_set_visible(layer_get_id(layers[i]),false);
			}
		}else if(health_Player=="Bleeding") {
			if(health_<(health_max/2)){
				obj_Camera.shakeValue=.2;
				for(var i=0;i<array_length(layers);i++)
				layer_set_visible(layer_get_id(layers[i]),true);
			}
			health_-=0.002;
		}
}else room=Die;
}
/////////////////////////////////////////////
