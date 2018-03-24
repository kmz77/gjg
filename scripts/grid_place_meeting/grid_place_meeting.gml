///@arg object
///@arg grid

var object = argument0;
var grid = argument1;

//the code below checks for collision on the top,bottom right and left corners
var top_right = grid[# (object.bbox_right-1) div CELL_WIDTH, object.bbox_top div CELL_HEIGHT] == VOID;
var top_left = grid[# object.bbox_left div CELL_WIDTH, object.bbox_top div CELL_HEIGHT] == VOID;
var bottom_right = grid[# (object.bbox_right-1) div CELL_WIDTH, (object.bbox_bottom-1) div CELL_HEIGHT] == VOID;
var bottom_left = grid[# object.bbox_left div CELL_WIDTH, (object.bbox_bottom-1) div CELL_HEIGHT] == VOID;

return top_right || top_left || bottom_right || bottom_left;