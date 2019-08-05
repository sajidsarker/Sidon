/// DrawHeading(x, y, width, value, heading_or_label)
{
    draw_set_font(Font_P);

    draw_sprite_ext(res_spr_ui2, argument4, argument0, argument1, argument2, 1, 0, c_white, 1);

    draw_set_colour(c_white);
    draw_text(argument0 + 2, argument1 + 2, argument3);
}
