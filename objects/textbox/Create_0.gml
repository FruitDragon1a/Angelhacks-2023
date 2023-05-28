/// @description Exposing a function to show text
// You can write your code in this editor

draw_self();



line="TEST";

//var textWidth= 256 - 20;
//var lineHeight = 28;


textWidth = 450;
lineHeight = 28;

draw_set_font(textFont);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

draw_text_ext(x, y, line, lineHeight, textWidth);