// MUST HAVE: Create a surface for drawing all the lights
light = surface_create(room_width, room_height);
global.SpritelightPlayer=spr_lightPlayer;
// Create a light
m = instance_create(0, 0, "LayerLight", obj_light);
with (m) {
  light_change_scale(2, 2);
  // Update the light, so it's surface is drawn correctly
  light_update();
}