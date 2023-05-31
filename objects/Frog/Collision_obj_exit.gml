/// @description change rooms
// You can write your code in this editor

//changeRooms
if (global.frogChangeRooms == true){
	x = global.xx;
	y = global.yy;
	room_goto(global.targetRoom);
	global.frogChangeRooms = false;
}