randomize();
place=false;
var rand = irandom(500);
if((place_meeting(x,y,obj_Player)) || (place_meeting(x,y,obj_wall)) || (place_meeting(x,y,obj_MapRemover)) || (place_meeting(x,y,obj_Eatter)))place=false else place=true;
if(place==true)&&(rand=7)script_Deploy("Stone",spr_Stone,0,0,random(360),x+16,y+16,"Drops");
if((distance_to_object(obj_Player)<50)and(distance_to_object(obj_wall)<32)and(distance_to_object(obj_Crate)<50)) place=false;
if(place==true)&&(rand<5)instance_create_layer(x,y,"Crates",obj_Crate);
if(place==true)&&((distance_to_object(obj_wall)<31)or(distance_to_object(obj_BearTrap)<64)or(distance_to_object(obj_Crate)<31))place=false;
if(place==true)&&(rand>480)instance_create_layer(x,y,"PlayerLayer",obj_BearTrap);
instance_destroy();