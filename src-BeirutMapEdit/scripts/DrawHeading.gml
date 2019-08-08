/// DrawHeading(x, y, text, colour)
{
    draw_set_font( font_regular );
    var tw = string_width( argument2 );
    draw_set_colour( c_black );
    draw_rectangle( argument0 + 3, argument1 + 3, argument0 + tw + 4, argument1 + 12 + 3, false );
    draw_set_colour( argument3 )
    draw_rectangle( argument0, argument1, argument0 + tw + 1, argument1 + 12, false );
    draw_set_colour( c_black );
    draw_text( argument0 + 1, argument1 + 1, argument2 );
}
