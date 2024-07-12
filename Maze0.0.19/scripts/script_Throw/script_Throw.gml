// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_Deploy(name_object,sprite,frame,imageSpeed,angle,_x, _y, _layer){
	var inst = obj_Throw;
	with(instance_create_layer(_x,_y,_layer,inst)){
		name=name_object;
		sprite_index=sprite;
		image_index=frame;
		image_speed=imageSpeed;
		image_angle=angle;
	}
	
	
}

function script_Throw(dir, max_distance){
	var player=obj_Player;
	//var object = obj_Throw;
	static force =0;
	if((global.hand!=noone)&&(mouse_check_button(mb_right))){
		player.MoveSpeed=lerp(player.MoveSpeed,2,.05);
		if(force<10)force+=.2;
		global.forceThrow=force;
		if(mouse_check_button_pressed(mb_left)){
			with(global.hand){
				x=x;
				y=y;
				angle=random(360);
				speed=force;
				direction=dir;
				maxDistance=max_distance;
			}
			force=0;
			global.hand=noone;
		}
	}else if(!mouse_check_button(mb_right)){
		force=lerp(force,0,.1);
		global.forceThrow=force;
	}
}

function script_ItemPickUp(){
	static player=obj_Player;
	static _x = player.x;
	static alpha=.5;
	static _y = 0;
	var name = global.drawItemName;
	draw_set_color(c_white);
	draw_set_font(font_little);
	draw_set_alpha(alpha);
	if(alpha>0){
		alpha-=.01;
		_y-=1;
		}else{
		_y=0;
		alpha=1;
		global.drawItemName=noone;
	}
	_x = player.x
	draw_text(_x+15,(player.y-10)+_y,$"["+name+"]");
}

function script_drawForce(){
	static player=obj_Player;
	var force = global.forceThrow;
	draw_set_color(c_white);
	draw_set_alpha(1);
	var _x = lengthdir_x(360/force,angleHead);
	var _y = lengthdir_y(360/force,angleHead);
	if(global.hand!=noone)&&(global.forceThrow>1) {
		//draw_line(player.x,player.y,mouse_x+_x,mouse_y+_y);
		//draw_line(player.x,player.y,mouse_x-_x,mouse_y-_y);
		draw_line_width_color(player.x,player.y,mouse_x+_x*3,mouse_y+_y*3,1,c_white,c_black);
		draw_line_width_color(player.x,player.y,mouse_x-_x*3,mouse_y-_y*3,1,c_white,c_black);
	}
}
