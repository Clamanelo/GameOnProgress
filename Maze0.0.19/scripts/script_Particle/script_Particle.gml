// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_Particle(positon_x,positon_y,sprite,index,color,xscale,velocity,dir,_layer,duration=0,grow_particle=false,grow_max=2){
	with(instance_create_layer(positon_x,positon_y,_layer,obj_Particle)){
		sprite_index=sprite;
		image_index=index;
		image_blend=color;
		image_xscale=xscale;
		lifeTime=duration;
		speed=velocity;
		direction=dir;
		grow=grow_particle;
		max_grow=grow_max;
	}
}