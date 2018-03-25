/// @description Player controls

// Get inputs
var mx = mouse_x;
var my = mouse_y;

var left = -keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var up = -keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));
var click = mouse_check_button(mb_left);

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
		hsp = 0
		vsp = 0
		
		// Shooting
		if (click) && (shoot_timer == 0)
		{
			shoot_timer = cooldown;
			with(instance_create_layer(gun_x + lengthdir_x(12,gun_rot),gun_y + lengthdir_y(12,gun_rot),"Instances",obj_bullet))
			{
				dir = other.gun_rot;	
			}
		}
		
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

		hsp = hdir * spd;
		vsp = vdir * spd;
		
		//x += hsp;
		//y += vsp;
		
		// Shooting
		if (click) && (shoot_timer == 0)
		{
			shoot_timer = cooldown;
			with(instance_create_layer(gun_x + lengthdir_x(12,gun_rot),gun_y + lengthdir_y(12,gun_rot),"Instances",obj_bullet))
			{
				dir = other.gun_rot;	
			}
		}
		
		// Change state
		if (hdir == 0) && (vdir == 0)
		{
			sprite_index = spr_player_idle;
			state = states.idle;
		}
		#endregion
	} break;
}

// Decrease cooldown
shoot_timer = approach(shoot_timer,0,1);

// Set image_xscale
if (mx > x + 5) image_xscale = 1;
else if (mx < x - 5) image_xscale = -1;


// Collisions

// Move horizontally
x += hsp;

// Right collisions
if hsp > 0 {
	if (grid_place_meeting(self, obj_level.grid)) {
		x = bbox_right&~(CELL_WIDTH-1);
		x -= bbox_right-x;
		hsp = 0;
	}
} else if hsp < 0 {
	// Left collisions
	if (grid_place_meeting(self, obj_level.grid)) {
		x = bbox_left&~(CELL_WIDTH-1);
		x += CELL_WIDTH+x-bbox_left;
		hsp = 0;
	}
}

// Move vertically
y += vsp;

// Vertical collisions
if vsp > 0 {
	// Bottom collisions
	if (grid_place_meeting(self, obj_level.grid)) {
		y = bbox_bottom&~(CELL_HEIGHT-1);
		y -= bbox_bottom-y;
		vsp = 0;
	}
} else if vsp < 0 {
	// Top collisions
	if (grid_place_meeting(self, obj_level.grid)) {
		y = bbox_top&~(CELL_HEIGHT-1);
		y += CELL_HEIGHT+y-bbox_top;
		vsp = 0;
	}
}