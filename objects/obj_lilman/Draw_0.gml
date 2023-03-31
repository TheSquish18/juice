/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_color(c_white);

draw_circle(x, y, radius_start, false);
if (shmoovin_x = false and shmoovin_y = false) {
	global.radius = radius_start;
	trail_radius = radius_start;
	draw_line(x, y, mouse_x, mouse_y);
	draw_circle(mouse_x, mouse_y, mouse_radius, true);
}
else if (shmoovin_x = true and shmoovin_y = true) {
	draw_circle(x, y, global.radius, false);
	global.radius += .1;
	draw_circle(xprevious, yprevious, trail_radius, false);
	instance_create_layer(x, y, "Instances", obj_trail);
}

