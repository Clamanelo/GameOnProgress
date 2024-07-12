if(global.debug==true){
	//SPAWN A ITEM
	var name = choose("Stone","Bandage","Lighter");
	script_Deploy(name,spr_Stone,0,0,random(360),obj_Player.x,obj_Player.y,"Drops");

}