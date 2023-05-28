/// @description Initializing variables
// You can write your code in this editor

// Variables
walkSpeed = 5;
vx = 0;
vy = 0;
dir = 3;
moveRight = 0;
moveLeft = 0;
moveUp = 0;
moveDown = 0;
lookRange = 30;
dialogue = [ ];
global.canMove = true;

function loadDialogue(dialogue_) {
	var currentString = "";
	var counter = 0;
	for (var i = 0; i < string_length(dialogue_); i += 1) {
		var char = string_char_at(dialogue_, i);
		if (char != "\n") {
			currentString += char
		} else {
			dialogue[counter] = currentString;
			counter += 1;
			currentString = "";
		}
	}
	dialogue[counter] = currentString;
}