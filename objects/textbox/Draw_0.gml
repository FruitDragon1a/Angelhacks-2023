/// @description Should display text
// You can write your code in this editor

draw_self();


//var lineHeight = 28;

textWidth= 256 - 20;
lineHeight = 16;

draw_set_font(font_textbox);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_alpha(1);

draw_text_ext(x, y, line, lineHeight, textWidth);