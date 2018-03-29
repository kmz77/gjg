/// @description Move away from the other enemy
//if (other.id > id) path_position = path_positionprevious;
var hsp;
var vsp;
var dir;

if (x == other.x) && (y == other.y)
{
	hsp = sign(other.id - id);
	x += hsp

	// collisions
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
}

dir = point_direction(other.x,other.y,x,y)
hsp = lengthdir_x(1,dir);
vsp = lengthdir_y(1,dir);

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