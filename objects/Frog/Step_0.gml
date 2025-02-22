  /// @description Main script
// You can write your code in this editor

if (global.canMove == true) {
//check keys for movement
	moveRight = keyboard_check(vk_right);
	moveLeft = keyboard_check(vk_left);
	moveUp = keyboard_check(vk_up);
	moveDown = keyboard_check(vk_down);
} else {
	moveRight = 0;
	moveLeft = 0;
	moveUp = 0;
	moveDown = 0;
}

//depth sorting
depth = -y

//Calculate Movement
vx = ((moveRight-moveLeft)*walkSpeed);
vy = ((moveDown - moveUp)*walkSpeed);

//If Idle
if (vx==0 && vy == 0){
	if dir == 1{
		sprite_index = frog_front_stand;
	}
	if dir == 2{
		sprite_index = frog_left_stand;
	}
	if dir == 3{
		sprite_index = frog_back_stand;
	}
	if dir == 0{
		sprite_index = frog_right_stand;
	}
}

//if moving
if (vx !=0 || vy != 0){
	if !collision_point(x+vx,y,obj_par_collidables,true,true) {
		x += vx;
	}
	if !collision_point(x,y+vy,obj_par_collidables,true,true) {
		y += vy; 
	}
}

//change frog's moving sprite based on direction
if (vx > 0){
	sprite_index = frog_right;
	dir = 0;
}
if (vx < 0){
	sprite_index = frog_left;
	dir = 2;
}
if (vy < 0){
	sprite_index = frog_back;
	dir = 3;
}
if (vy > 0){
	sprite_index = frog_front;
	dir = 1;
}



npc = collision_rectangle(x-lookRange, y-lookRange, x+lookRange, y+lookRange, obj_par_npcs, false, true);
