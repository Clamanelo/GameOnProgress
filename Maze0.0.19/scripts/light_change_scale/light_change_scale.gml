function light_change_scale(argument0, argument1) {
	image_xscale = argument0;
	image_yscale = argument1;

	surface_free(light);
	light = surface_create(sprite_width, sprite_height);

}
