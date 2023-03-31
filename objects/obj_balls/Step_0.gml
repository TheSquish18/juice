/// @description Insert description here
// You can write your code in this editor


if (base_radius < 7.8) {
	base_radius += .2;
}
else if (base_radius = 7.8) {
	hit = false;
	base_radius += .2;
}

for (var i = mag; i > 0; i--) {
	var len_this_loop = 1
	if(mag < 1){
		len_this_loop = i;
	}
    x+=lengthdir_x(len_this_loop,angle)
	y+=lengthdir_y(len_this_loop,angle)
	if(position_meeting(x, y, obj_wall)){
		x-=lengthdir_x(1,angle)
		y-=lengthdir_y(1,angle)
		angle+= angle_change;
		break;
	}
}
if (distance_to_object(obj_lilman) <= (radius + global.radius) and global.shmoovin = true and hit = false) {
	alarm[0] = 1;
}



