/// @description Move away from the other enemy

/*var dir;
var offset = 0

if (x == other.x && y == other.y)
{
	offset = spd*sign(other.id-id);
}

dir = point_direction(other.x,other.y,x + offset,y);
get_path_to_point(obj_player.x + lengthdir_x(8,dir),obj_player.y + lengthdir_y(8,dir),spd);
alarm[0] = room_speed/2;