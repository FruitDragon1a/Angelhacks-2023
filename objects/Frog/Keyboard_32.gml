/// @description Trigger Dialogue
// You can write your code in this editor
if (npc) {
	if (npc.dialogue != "EMPTY") {
		if (dialogue.length == 0) {
			loadDialogue(npc.dialogue);
		}
		if (dialogueIndex == -1) {
			dialogueBox = instance_create_depth(npc.x, npc.y-400,-10000, textbox);
			dialogueIndex += 1;
		}
		if (dialogueIndex > dialogue.length-1) {
			dialogueBox.showText(dialogue[dialogueIndex]);
		} else {
			instance_destroy(dialogueBox);
		}
	}
}