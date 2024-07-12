if !surface_exists(surf2)
{
surf2 = surface_create(room_width,room_height);
}else {
surface_set_target(surf2);
for(var i=0;i<instance_number(obj_wall);i++)
    {
    draw_self();
    }
surface_reset_target();
draw_surface(surf2,-10,-10);
}