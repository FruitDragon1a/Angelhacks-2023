/// @description Exposing a function to show text
// You can write your code in this editor

line="TEST";
draw_self();

//var textWidth= 256 - 20;
//var lineHeight = 28;

var textWidth = 450;
var lineHeight = 28;

draw_set_font(textFont);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_ext_color(x, y, line, lineHeight, textWidth, c_white, c_white, c_white, c_white, 1);