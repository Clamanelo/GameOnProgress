// MUST HAVE: Draw the surface to the screen
draw_set_blend_mode_ext(bm_dest_color, bm_zero);
draw_surface_ext(light, 0, 0, 1, 1, 0, c_white, 1);
draw_set_blend_mode(bm_normal);
