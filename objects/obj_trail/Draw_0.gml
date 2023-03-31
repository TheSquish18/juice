/// @description Insert description here
// You can write your code in this editor

draw_circle_color(x, y, radius, c_white, c_white, false);

if (once = 0) {
	destination_x = obj_ball.x;
	destination_y = obj_ball.y;
	line = true;
}

if (line = true) {
	draw_line_width_color(x, y, destination_x, destination_y, 2*radius, c_yellow, c_black);
}
