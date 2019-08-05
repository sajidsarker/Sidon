/// DrawString(x, y, width, string1, string2)
{
    draw_set_font(Font_P);

    draw_set_colour(c_dkgray);
    draw_text(argument0 + 2, argument1 + 2, argument3);

    draw_set_colour(c_black);
    draw_text(argument0 + argument2 + 2, argument1 + 2, argument4);
}
