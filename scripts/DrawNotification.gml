///DrawNotification(message)
{
    draw_set_font(Font_P);
    DrawCanvas(320 - 240, 32, 480, 16 + string_height_ext(argument0, -1, 480 - 32 - 8));

    draw_set_colour(c_black);
    draw_set_halign(fa_center);
    draw_text_ext(view_wview[0] * 0.5, 32 + 8, argument0, -1, 480 - 32 - 8);
    draw_set_halign(fa_left);
}
