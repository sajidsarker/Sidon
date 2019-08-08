/// DrawNumber(x, y, width, value)
{
    ///draw_set_font(Font_H2);
    draw_set_halign(fa_right);
    draw_set_colour(c_black);
    draw_text(argument0 + argument2, argument1 + 2, argument3);
    draw_set_halign(fa_left);
}
