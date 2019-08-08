/// DrawCanvas(x, y, width, height)
{
    draw_set_colour(make_colour_rgb(238, 223, 166));
    //draw_set_colour(make_colour_rgb(235, 213, 179));
    draw_rectangle(argument0, argument1, argument0 + argument2, argument1 + argument3, false);
    draw_set_colour(c_black);
    draw_rectangle(argument0, argument1, argument0 + argument2, argument1 + argument3, true);
    draw_set_colour(c_white);
    draw_line(argument0 + 1, argument1 + 1, argument0 + argument2 - 1, argument1 + 1);
    draw_line(argument0 + 1, argument1, argument0 + 1, argument1 + argument3 - 1);
    draw_set_colour(c_gray);
    draw_line(argument0 + argument2 - 1, argument1 + 1, argument0 + argument2 - 1, argument1 + argument3 - 1);
    draw_line(argument0 + 1, argument1 + argument3 - 1, argument0 + argument2 - 1, argument1 + argument3 - 1);
}
