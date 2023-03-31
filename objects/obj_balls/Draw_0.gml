/// @description Insert description here
// You can write your code in this editor


switch(state){
	case ballType.gone:
		instance_destroy();
		instance_create_layer(x, y, "Instances", obj_tally);
	break;
	case ballType.red:
		draw_set_color(c_red)
		radius = base_radius + 1;
	break;
	case ballType.orange:
		draw_set_color(c_orange);
		radius = base_radius + 2;
	break;
	case ballType.yellow:
		draw_set_color(c_yellow);
		radius = base_radius + 3;
	break;
	case ballType.green:
		draw_set_color(c_green);
		radius = base_radius + 4;
	break;
	case ballType.blue:
		draw_set_color(c_blue);
		radius = base_radius + 5;
	break;
	case ballType.purple:
		draw_set_color(c_purple);
		radius = base_radius + 6;
	break;
}


draw_circle(x, y, radius, hit);