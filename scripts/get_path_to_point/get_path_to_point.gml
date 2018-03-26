/// get_path_to_point
/// @param x
/// @param y
/// @param speed

var cw = CELL_WIDTH;
var ch = CELL_HEIGHT;
xx = (argument[0] div cw)*cw + cw/2;
yy = (argument[1] div ch)*ch + ch/2;
var s = argument[2];

if (mp_grid_path(obj_level.grid_path,path,x,y,xx,yy,true))
{
	path_start(path,s,path_action_stop,false);
}