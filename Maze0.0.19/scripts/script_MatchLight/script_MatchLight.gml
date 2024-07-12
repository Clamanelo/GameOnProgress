// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_MatchLight(light,LifeTime){
		name="Phosphor";
		info="To light your way..";
		
		if(instance_exists(obj_light)&&global.lighterID==id) {
			if(LifeTime>0)&&(obj_light.image_blend=c_orange) {
			obj_Mouse.image_index=1;
			LifeTime-=.1;
				if(light<25)light+=.1;else light-=1;
				obj_light.sprite_index=spr_light;
				obj_light.image_xscale=light/12;
			}else if(LifeTime<=0){
			if(light>3)light-=.1;
			obj_light.image_xscale=light/12;
				if(light<=3){
					obj_light.sprite_index=spr_lightCone;
					obj_light.image_blend=c_white;
					global.lighterID=noone;
					obj_Mouse.image_index=0;
					instance_destroy();
				}
			}
		}
}