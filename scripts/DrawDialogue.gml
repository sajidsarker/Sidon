///DrawDialogue(title, message)
{
    Counter = min(Counter + 1, string_length(argument1));

    draw_set_font(Font_P);
    DrawCanvas(320 - 240, 32, 480, 32 + 16 + string_height_ext(argument1, -1, 480 - 32 - 8));
    DrawHeading(320 - 240 + 16, 32 + 16, 480 - 32, argument0, true);

    draw_set_colour(c_black);
    draw_text_ext(320 - 240 + 20, 32 + 36, string_copy(argument1, 1, Counter + 1), -1, 480 - 32 - 8);
}
