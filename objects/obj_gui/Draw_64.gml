/// @description Draw the gui layer

//display_mouse_get_x()
//draw_sprite(spr_bullet,0,mouse_x-view_x,mouse_y-view_y);

var gw = display_get_gui_width();
var gh = display_get_gui_height();

// Debug text
draw_set_colour(c_black);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
var str = fps_real;//"Enemy count: " + string(instance_number(obj_enemy))
draw_text(gw-10,gh-10,str);



// Fullscreen button
draw_sprite(spr_cog,0,5,5);

// Healthbar
var padding = 5;
var height = 10;
var width = 52;

var x1 = padding;
var y1 = gh-padding-height;
var x2 = width+padding;
var y2 = gh-padding;

draw_healthbar(x1,y1,x2,y2,100*obj_player.hp/20,c_black,c_red,c_red,0,true,true);
/*draw_set_colour(c_black);
draw_rectangle(x1,y1,x2,y2,true);
draw_set_colour(c_red);
draw_rectangle(x1+1,y1+2,padding+max(obj_player.hp,0)+1,y2,false);/**/