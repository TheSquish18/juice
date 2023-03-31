/// @description Insert description here
// You can write your code in this editor




if (shmoovin_x = true and shmoovin_y = true) {
	global.shmoovin = true;
} else { global.shmoovin = false }

mouse_radius = 4 + (point_distance(x,y,mouse_x, mouse_y)/30);

if (mouse_check_button_pressed(mb_left) and shmoovin_x = false and shmoovin_y = false) {

	angle = point_direction(x, y, mouse_x, mouse_y);
	vo = point_distance(x, y, mouse_x, mouse_y)/30;
	vox = lengthdir_x(vo, angle);
	voy = lengthdir_y(vo, angle);
	shmoovin_x = true;
	shmoovin_y = true
}
if (global.shmoovin) {
	voy += grav;
	clamp(voy, 0, 1);
	x += vox;
	y += voy;
	image_index = 1;
}

//to bounce or not to bounce;
if(place_meeting(obj_lilman.x, obj_lilman.y, obj_bounce)) {
	if(instance_nearest(x, y, obj_bounce).image_angle = 0) {
		voy *= -1.1;
	}
	if(instance_nearest(x, y, obj_bounce).image_angle = -90) {
		vox *= -1.1;
	}
}
else {
	//i hate myself
	if (change_x = false and shmoovin_x = true) {
		if (place_meeting(x, y, obj_wall)) {
			shmoovin_x = false;
			x -= vox;
			if (!place_meeting(x, y, obj_wall)) {
				change_x = true;

			}
		}
	}
	if (change_x = true) {
		x += vox/10;
		if (place_meeting(x, y, obj_wall)) {
			change_x = false;
			fix_mode = false;
		}
	}

	//hating myself but y
	if (change_y = false and shmoovin_y = true) {
		if (place_meeting(x, y, obj_wall)) {
			shmoovin_y = false;
			y -= voy;
			if (!place_meeting(x, y, obj_wall)) {
				change_y = true;
			}
		}
	}
	if (change_y = true) {
		y += voy/10;
		if (place_meeting(x, y, obj_wall)) {
			change_y = false;
			fix_mode = false;
		}
	}
}


/* with obj_bounce {
	if(position_meeting(obj_ball.x, obj_ball.y, obj_bounce)) {
		left_distance = (bbox_left-obj_ball.x)*(bbox_left-obj_ball.x)
		right_distance = (bbox_right-obj_ball.x)*(bbox_right-obj_ball.x)
		top_distance = (bbox_top-obj_ball.x)*(bbox_top-obj_ball.x)
		bottom_distance = (bbox_bottom-obj_ball.x)*(bbox_bottom-obj_ball.x)
		
		where = min(left_distance, right_distance);
		where_but_y = min(top_distance, bottom_distance);
		obj_ball.x += where;
		obj_ball.y += where_but_y
	}
}