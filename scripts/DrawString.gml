/// DrawString(x, y, width, string1, string2)
{
    draw_set_font(Font_P);

    draw_set_colour(c_gray);
    draw_text(argument0 + 3, argument1 + 3, argument3);

    draw_set_colour(c_black);
    draw_text(argument0 + argument2 + 2, argument1 + 2, argument4);
}
