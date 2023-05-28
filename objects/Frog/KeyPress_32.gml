/// @description Trigger Dialogue
// You can write your code in this editor
if (npc) {
	if (npc.dialogue != "EMPTY") {
		if (array_length(dialogue) == 0) {
			loadDialogue(npc.dialogue);
			global.canMove = false;
			show_debug_message("cannot move");
		}
		if (dialogueIndex == -1) {
			dialogueBox = instance_create_depth(npc.x, npc.y-100,-5000, textbox);
			dialogueIndex = 0;
		} else {
			instance_destroy(dialogueBox);
			dialogueBox = instance_create_depth(npc.x, npc.y-100,-5000, textbox);
		}
		if (dialogueIndex <= array_length(dialogue)-1) {
			dialogueBox.line = dialogue[dialogueIndex];
			show_debug_message(dialogue[dialogueIndex]);
			dialogueIndex += 1;
		} else {
			instance_destroy(dialogueBox);
			global.canMove = true;
			dialogue = [];
			dialogueIndex=-1;
			show_debug_message("can move");
		}
	}
}