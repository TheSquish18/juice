/// @description Insert description here
// You can write your code in this editor
depth = -1000
enum ballType {
	gone,
	red, 
	orange, 
	yellow,
	green, 
	blue, 
	purple
}

randomize();
do {
	x = irandom_range(40, room_width-40);
	y = irandom_range(40, room_width-40);
} 
until (!position_meeting(x, y, obj_wall));

mag = 3; 
angle = random(360);
base_radius = 0;
angle_change = choose(90, 180);

hit = true;
radius = 0;
state = choose(ballType.red, ballType.orange, ballType.green, ballType.blue, ballType.purple);

/*
var enemy_counts = ds_list_create();
for(var i = 0; i < ds_list_size(enemy_counts); i++) {
	ds_list_add(enemy_counts, i);
}

var enemy_counts = ds_list_create()
for(var i = 0; i < 4; i++){
	ds_list_add(enemy_counts,i)
}

show_debug_message(enemy_counts[|EnemyType.orange])

for(var i = 0; i < ds_list_size(enemy_counts); i++){
	enemy_counts[|i] = false
}

