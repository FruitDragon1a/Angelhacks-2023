/// @description Insert description here
// You can write your code in this editor

//check keys for movement
moveRight = keyboard_check(vk_right);
moveLeft = keyboard_check(vk_left);
moveUp = keyboard_check(vk_up);
moveDown = keyboard_check(vk_down);


//Calculate Movement
vx = ((moveRight-moveLeft)*walkSpeed);
vy = ((moveDown - moveUp)*walkSpeed);

//If Idle
if (vx==0 && vy == 0){
	//do nothing for now
}

//if moving
if (vx !=0 || vy != 0){
	x += vx;
	y += vy;
}