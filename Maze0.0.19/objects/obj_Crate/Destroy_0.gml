if(instance_exists(obj_Camera))obj_Camera.shakeValue=1;
global.Crate=noone;
global.CrateOpening=false;
audio_play_sound(SoundCrateOpen,300,0);
var rand = irandom(5);
if(rand==0)script_Deploy("Bandage",spr_Bandage,0,0,random(360),x+16,y+16,"Drops");
else if(rand==3)script_Deploy("Lighter",spr_Lighter,0,0,random(360),x+16,y+16,"Drops");
if(global.particles==true){
	repeat(rand+2)script_Particle(x+16,y+16,spr_Crate,1,c_white,1,1.5,random(360),"Particles",0);
}