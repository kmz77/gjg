/// @description Move towards the player

if(chance(0.08))
{
	get_path_to_point(x+choose(-16,16),y+choose(-16,6),spd);
	alarm[0] = room_speed*cooldown
}
else
{
	get_path_to_point(obj_player.x+choose(-16,0,16),obj_player.y+choose(-16,0,16),spd);
	alarm[0] = room_speed*cooldown
}