/// @description Player controls

// Get inputs
var left = -keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var up = -keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));

var hdir = left + right;
var vdir = up + down;

// Check state
switch(state)
{
	case states.idle:
	{
		#region
		// Animation
		sprite_index = spr_player_idle;
		hsp = 0;
		vsp = 0;
		
		// Change state
		if (hdir != 0) || (vdir != 0)
		{
			sprite_index = spr_player_running;
			state = states.running;
		}
		#endregion
	} break;
	case states.running:
	{
		#region
		// Animation
		sprite_index = spr_player_running;
		if (hdir != 0) image_xscale = hdir;
		
		// Moving
		hsp = hdir*spd;
		vsp = vdir*spd;
		
		x += hsp;
		y += vsp;
		
		// Change state
		if (hdir == 0) && (vdir == 0)
		{
			sprite_index = spr_player_idle;
			state = states.idle;
		}
		#endregion
	} break;
}