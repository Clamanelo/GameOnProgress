#macro CHAPTER "I"
persistent=true;
global.grid = mp_grid_create(0,0,room_width/32,room_height/32,32,32);
global.Crate=noone;
global.CrateOpening=false;
global.timer=100;
global.minutes=global.timer/60;
global.secound=0;
global.objective="...";
global.objectiveProgress=0;
global.objectiveNeed=0;
global.inventory=false;
global.showTimer=false;
global.pause = false;
global.particles=true;
global.lighterID = noone;

global.nextRoom=WhereItStarted;

stamina_back=400;
stamina_alpha=0;
health_alpha=1;
heal=25*9;
eye_alpha=0;

timer=500;