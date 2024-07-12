if(health_<5)exit;
if(health_Player=="Bleeding")script_Particle(x+random_range(-10,10),y+random_range(-10,10),spr_Particle,1,c_red,3,0,0,"Particles",-1);
alarm_set(0,health_);