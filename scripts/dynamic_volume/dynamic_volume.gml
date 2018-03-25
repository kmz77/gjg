/// @description dynamic_volume(listener,object,falloff_distance,max_volume)
/// @param listener
/// @param object
/// @param falloff_distance
/// @param max_volume

// Example:
// dynamic_volume(obj_player,obj_explosion,200,0.9)
// This will return a volume depending on the players distance to the explosion.
// If the player is more than 200 pixel away, the gain will be 0.
// If the player is at the same spot as the explosion, the gain will be 0.9.

var Listener = argument0;
var Obj = argument1;
var Falloff = argument2
var MaxVol = argument3;

var Vol;

with(Listener)
{
    Vol = clamp(100 - floor(distance_to_object(Obj)*100/Falloff),0,100);
}

return Vol*MaxVol/100;