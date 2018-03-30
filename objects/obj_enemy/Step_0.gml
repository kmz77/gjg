/// @description Enemy movement

// Shooting
if (shoot_timer == 0)
{
	shoot_timer = shoot_cooldown+irandom_range(-10,10);
	with(instance_create_layer(x,y,"Bullets",obj_enemy_bullet))
	{
		dir = point_direction(x,y,obj_player.x,obj_player.y);
	}
}

shoot_timer = approach(shoot_timer,0,1);
if (hp <= 0) instance_destroy();



/*
var _x = x;
x += 1000000;
var obj = instance_nearest(x-1000000,y,obj_enemy);
x = _x;
if (distance_to_object(obj) > 6) exit;

var hsp;
var vsp;
var dir;

if (x == obj.x) && (y == obj.y)
{
	hsp = 0.5*sign(obj.id - id);
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

dir = point_direction(obj.x,obj.y,x,y)
hsp = lengthdir_x(0.5,dir);
vsp = lengthdir_y(0.5,dir);

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