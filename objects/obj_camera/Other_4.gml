/// @description Enable the camera
view_camera[0] = camera;
view_enabled = true;
view_visible[0] = true

if(object_exists(obj_player))
{
	view_x = obj_player.x - view_w*0.5;
	view_y = obj_player.y - view_h*0.5;
	x = obj_player.x;
	y = obj_player.y;
}