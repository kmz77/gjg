/// @description Player controls

// Get inputs
var mx = mouse_x;
var my = mouse_y;
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

// Set image_xscale
if (mx > x + 5) image_xscale = 1;
else if (mx < x - 5) image_xscale = -1;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

////player movement
//var x_input = keyboard_check(vk_right) - keyboard_check(vk_left);
//var y_input = keyboard_check(vk_down) - keyboard_check(vk_up);

//hsp += x_input * acc;
//vsp += y_input * acc;

//if (x_input == 0)
//{
//	hsp = lerp(hsp, 0, 0.3);
//}

//if (y_input == 0)
//{
//	vsp = lerp(vsp, 0, 0.3);
//}

////this is for the animation
//if (x_input == 0 && y_input == 0)
//{
//	image_speed = 0;
//	image_index = 0;
//} else image_speed = 0.7;

//left and right detection collision
/*x += hsp;

if (hsp > 0)
{
	if grid_place_meeting(self, obj_level.grid)
	{
		x = bbox_right&~(CELL_WIDTH-1);
		x -= bbox_right-x;
		hsp = 0;
	}
	else if (hsp < 0)
	{
		if grid_place_meeting(self, obj_level.grid)
		{
			x = bbox_left&~(CELL_WIDTH-1);
			x += CELL_WIDTH + x - bbox_left;
			hsp = 0;
		}
	}
	
}


//top and bottom detection collision
y = vsp;

if (vsp > 0)
{
	if (grid_place_meeting(self, obj_level.grid))
	{
		y = bbox_bottom&~(CELL_HEIGHT);
		y -= bbox_bottom-y;
		vsp = 0;
	}
}	else if (vsp < 0)
	{
		if (grid_place_meeting(self, obj_level.grid))
		{
			y = bbox_top&~(CELL_HEIGHT-1)
			y += CELL_HEIGHT + y - bbox_top;
			vsp = 0;
		}
	}
















































