if(lifeTime>1)lifeTime-=1;
if(lifeTime==1)instance_destroy();
speed=lerp(speed,0,.1);
if(grow==true)&&(image_xscale<max_grow)image_xscale+=.01;
image_yscale=image_xscale;