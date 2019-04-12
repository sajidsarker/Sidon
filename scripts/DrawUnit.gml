/// DrawUnit()
{
    vecPosition[| X] = round(CoordToIsoX(x, y))//CoordToIsoX(x, y) - frac(CoordToIsoX(x, y));
    vecPosition[| Y] = round(CoordToIsoY(x, y))//CoordToIsoY(x, y) - frac(CoordToIsoY(x, y));
    vecPosition[| Z] = ds_grid_get(CMap.myMap[HEIGHT_MAP], vecPosition[| X], vecPosition[| Y]);

    z = lerp( z, vecPosition[| Z] * TILE_HEIGHT, 0.35 );
    depth = -y - 12;

    if (CGame.state_index != stateSystem_Update
    and CGame.state_index != stateSystem_Pause
    and CGame.state_index != stateSystem_Prompt) {
        //if (isActiveInScene) {
            //draw_sprite(res_iso_cursor, 5, x, y - z - TILE_HEIGHT);
        //}
    }
    draw_sprite(res_spr_shadow, 0, x, y - z - TILE_HEIGHT);
    draw_sprite(res_spr_unit, image_index, x, y - z - TILE_HEIGHT);

    //depth = -IsoToCoordY(x / TILE_WIDTH, y / TILE_HEIGHT) - 2;
    //draw_sprite(res_spr_unit, image_index, IsoToCoordX(x / TILE_WIDTH, y / TILE_HEIGHT), IsoToCoordY(x / TILE_WIDTH, y / TILE_HEIGHT) - z - TILE_HEIGHT);
}
