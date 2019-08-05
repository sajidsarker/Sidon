///DrawMenu(x, y, width, n, i, title)
{
    DrawCanvas(argument0, argument1, argument2, (argument3 + 3) * 16);
    DrawHeading(argument0 + 16, argument1 + 16, argument2 - 32, argument5, true);
    DrawSelector(argument0 + 8, argument1 + 8 + (argument4 + 2) * 16);
}
