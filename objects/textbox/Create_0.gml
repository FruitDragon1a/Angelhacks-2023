/// @description Exposing a function to show text
// You can write your code in this editor
function showText(text) {
	draw_set_font(textFont);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(x, y, text);
}