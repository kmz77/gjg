/// @description Move towards the player

if (distance_to_object(obj_player) > 256)
{
	get_path_to_point(x+choose(-16,16),y+choose(-16,6),spd);
	alarm[0] = room_speed*cooldown;
}
else if (distance_to_object(obj_player) > 192)
{
	get_path_to_point(obj_player.x+choose(-16,0,16),obj_player.y+choose(-16,0,16),1);
	alarm[0] = room_speed*cooldown*2;
}
else if(chance(0.12))
{
	get_path_to_point(x+choose(-16,16),y+choose(-16,6),spd);
	alarm[0] = room_speed*cooldown*2;
}
else
{
	get_path_to_point(obj_player.x+choose(-16,0,16),obj_player.y+choose(-16,0,16),spd);
	alarm[0] = room_speed*cooldown;
}