///DrawList(x, y, width, n, i, title, column)
{
    DrawCanvas(argument0, argument1, argument2, (argument3 + 3) * 16);
    DrawHeading(argument0 + 16, argument1 + 16, argument2 - 32, argument5, true);

    draw_set_colour(c_white);
    draw_set_halign(fa_right);
    draw_text(argument0 + argument2 - 20, argument1 + 18, argument6);
    draw_set_halign(fa_left);

    DrawSelector(argument0 + 8, argument1 + 8 + (argument4 + 2) * 16);
}
