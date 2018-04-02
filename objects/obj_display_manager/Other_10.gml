/// @description Toggle fullscreen
fullscreen = !fullscreen;
if (fullscreen)
{
    scale = max_scale;
    window_set_fullscreen(true);
}
else
{
    scale = default_scale;
    window_set_fullscreen(false);
}

window_set_size(ideal_width*scale,ideal_height*scale);
surface_resize(application_surface,ideal_width*scale,ideal_height*scale);

alarm[0] = 1;