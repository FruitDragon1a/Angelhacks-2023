/// @description Insert description here
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
npcdialogue = ds_list_create();

function loadDialogue(dialogue) {
	var currentString = "";
	for (var i = 0; i < dialogue.length; i += 1) {
		if (dialogue[i] != "\n") {
			currentString = dialogue[i]
		} else {
			ds_list_add(dialogue, currentString);
			currentString = "";
		}
	}
}