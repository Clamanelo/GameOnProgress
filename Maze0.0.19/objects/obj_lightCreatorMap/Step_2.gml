with (instance_create(x, y, layer, obj_light)) {
	failLight=other.failLight;
	timer=other.timer;
	image_blend = other.color;
	light_change_scale(other.scale, other.scale);
	light_update();
}
instance_destroy();