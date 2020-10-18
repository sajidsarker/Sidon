/// DrawVariable(x, y, width, string, value)
{
    draw_set_font(Font_P);

    draw_set_colour(c_dkgray);
    draw_text(argument0 + 2, argument1 + 2, argument3);

    draw_set_halign(fa_right);
    draw_set_colour(c_black);
    draw_text(argument0 + argument2 - 2, argument1 + 2, argument4);
    draw_set_halign(fa_left);
}
