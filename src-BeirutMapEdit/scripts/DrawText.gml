/// DrawText(x, y, text, colour)
{
    draw_set_font( font_regular );
    draw_set_colour( c_black );
    draw_text( argument0 + 2, argument1 + 2, argument2 );
    draw_set_colour( argument3 )
    draw_text( argument0, argument1, argument2 );
}
