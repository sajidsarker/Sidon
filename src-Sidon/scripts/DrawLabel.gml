/// DrawLabel(x, y, value)
{
    draw_set_font(Font_P);
    draw_set_colour(c_dkgray);
    draw_text(argument0 + 2, argument1 + 2, argument2);
}
