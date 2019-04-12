///DrawMessage(title, message)
{
    draw_set_font(Font_P);
    DrawCanvas(320 - 160, 100, 320, 32 + 16 + string_height_ext(argument1, -1, 320 - 32 - 8));
    DrawHeading(320 - 160 + 16, 100 + 16, 320 - 32, argument0, true);

    draw_set_colour(c_black);
    draw_text_ext(320 - 160 + 20, 100 + 36, argument1, -1, 320 - 32 - 8);
}
