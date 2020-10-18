/// DrawValue(x, y, width, value)
{
    draw_set_font(Font_N);
    draw_set_halign(fa_right);
    draw_set_colour(c_gray);
    draw_text(argument0 + argument2 - 1, argument1 + 3, argument3);
    draw_set_colour(c_black);
    draw_text(argument0 + argument2 - 2, argument1 + 2, argument3);
    draw_set_halign(fa_left);
}
