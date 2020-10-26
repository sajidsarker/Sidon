///draw_text_shadow(x, y, string, colour1, colour2)
{
    draw_set_font(Font_R);

    draw_set_colour(argument4);
    draw_text(argument0 + 1, argument1 + 1, argument2);

    draw_set_colour(argument3);
    draw_text(argument0, argument1, argument2);
}
