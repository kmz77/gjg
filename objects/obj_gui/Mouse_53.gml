/// @description Check for buttons

var mx = device_mouse_x_to_gui(0); //mouse_x-view_x;
var my = device_mouse_y_to_gui(0); //mouse_y-view_y;

// Fullscreen
if (clamp(mx,5,5+sprite_get_width(spr_cog)) == mx) && (clamp(my,5,5+sprite_get_height(spr_cog)) == my)
{
	with(obj_display_manager)
	{
		event_user(0);
	}
}