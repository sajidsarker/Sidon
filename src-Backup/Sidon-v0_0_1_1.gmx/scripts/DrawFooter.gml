/// DrawFooter(value)
{
    draw_set_font(Font_P);
    draw_set_colour(c_black);
    draw_rectangle(0, view_hport[0] - 20, view_wport[0], view_hport[0], false);

    draw_set_colour(c_white);
    draw_set_halign(fa_right);
    draw_text(view_wport[0] - 16, view_hport[0] - 16, argument0);
    draw_set_halign(fa_left);
}
