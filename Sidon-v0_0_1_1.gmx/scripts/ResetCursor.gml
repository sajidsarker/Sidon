/// ResetCursor(x, y)
{
    CCursor.vecPosition[| X] = argument0;
    CCursor.vecPosition[| Y] = argument1;
    CCursor.vecPosition[| Z] = ds_grid_get(CMap.myMap[HEIGHT_MAP], CCursor.vecPosition[| X], CCursor.vecPosition[| Y]);

    CCursor.x = IsoToCoordX(vecPosition[| X], vecPosition[| Y]);
    CCursor.y = IsoToCoordY(vecPosition[| X], vecPosition[| Y]);
    CCursor.z = vecPosition[| Z] * TILE_HEIGHT;

    depth = -y - 1;
}
