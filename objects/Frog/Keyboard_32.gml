/// @description Trigger Dialogue
// You can write your code in this editor
if (npc) {
	if (npc.dialogue != "EMPTY") {
		if (array_length(dialogue) == 0) {
			loadDialogue(npc.dialogue);
			canMove = false;
		}
		if (dialogueIndex == -1) {
			dialogueBox = instance_create_depth(npc.x, npc.y-400,-10000, textbox);
			dialogueIndex += 1;
		}
		if (dialogueIndex > array_length(dialogue)-1) {
			dialogueBox.showText(dialogue[dialogueIndex]);
		} else {
			instance_destroy(dialogueBox);
			canMove = true;
			dialogue = [];
		}
	}
}