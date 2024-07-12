
global.hand=noone;
global.drawItemName=noone;
global.forceThrow=0;
//Storage Info Object
global.name_object="";
global.sprite=noone;
global.frame=0;
global.imageSpeed=0;
//global.playerPlace=false;
//if(global.playerPlace==false){
//	while(place_meeting(x,y,Par_Collision)or(place_meeting(x,y,obj_BearTrap))or(distance_to_object(obj_Eatter)<500)){
//		x = irandom_range(175,room_width);
//		y = irandom_range(175,room_height);
//		global.playerPlace=true;
//	}
//}
//Audio Right comes from the Right and Left from the Left
audio_listener_orientation(0,1,0,0,1,1);
//Moves variables
MoveX=0;
MoveY=0;
MoveSpeed=3;
MoveSpeedWalk=3;
MoveSpeedRun=6;
imageSpeed=.5;
//Health
health_Player="Normal";//"Bleeding"/"Normal"
regen=0;
health_=25;
health_max=25;
//For Blood drop
alarm[0]=health_;
//For Head And Body Align
alarm[1]=30;
//Stamina
stamina=150;
stamina_max=stamina;
//recharge=false; //Stamina charger if it reached 0%w
//Name Colettable
n=noone;
n_info=noone;
alpha=0;
//angle for sprite
angleHead = point_direction(x,y,mouse_x,mouse_y);
angleBody = image_angle;
spriteIndex=spr_PlayerTopDownIdle;
imageIndex=0;
//Sound Timer
timeToSound=20;
//ImageX imageY sprite Draw
image_x=image_xscale;
image_y=image_yscale;