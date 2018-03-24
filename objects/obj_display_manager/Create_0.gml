/// @description Initialize display properties
fullscreen = false;
default_scale = 2;
max_scale = 1;
scale = default_scale;

ideal_width = 0;
ideal_height = 270;
display_width = display_get_width();
display_height = display_get_height();

aspect_ratio = display_width/display_height;

ideal_width = round(ideal_height*aspect_ratio);

// Pixel-Perfect scaling
if(display_width mod ideal_width != 0)
{
	var d = round(display_width/ideal_width);
	ideal_width=display_width/d;
}
if(display_height mod ideal_height != 0)
{
	var d = round(display_height/ideal_height);
	ideal_height=display_height/d;
}

// Check for odd numbers
if(ideal_width & 1) ideal_width++;
if(ideal_height & 1) ideal_height++;
    
// Calculate max scale
max_scale = floor(display_width/ideal_width);  

// Resize the drawing layers
window_set_size(ideal_width*scale,ideal_height*scale);
display_set_gui_size(ideal_width,ideal_height);
surface_resize(application_surface,ideal_width*scale,ideal_height*scale);

alarm[0] = 1;

// Set up the camera
camera = camera_create();
camera_set_view_size(camera,ideal_width,ideal_height);
camera_set_view_target(camera,obj_player);
camera_set_view_border(camera,0.5*ideal_width-32,0.5*ideal_height-32);
camera_set_view_speed(camera,-1,-1);

room_goto_next();
