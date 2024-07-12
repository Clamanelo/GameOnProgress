// MUST HAVE: Draw all the lights to the surface
if(!surface_exists(light))
light = surface_create(room_width, room_height);

surface_set_target(light)
draw_clear(c_black);
draw_set_blend_mode(bm_add);
with (obj_light) {
  if(!surface_exists(light))
  light = surface_create(room_width, room_height);
  draw_surface_ext(light, x - sprite_width / 2, y - sprite_height / 2, 1, 1, 0, image_blend, 1);
}
draw_set_blend_mode(bm_normal);
surface_reset_target();