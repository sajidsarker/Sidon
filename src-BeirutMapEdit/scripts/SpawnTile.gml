/// SpawnTile(x, y, z, brush_palette)
{
    /*var i, j, k, o, h;

    for (j=0; j<CMap.myHeight; j++) {
        for (i=0; i<CMap.myWidth; i++) {
            o = ds_grid_get(myMap[TILE_MAP], i, j);
            h = ds_grid_get(myMap[HEIGHT_MAP], i, j);
            for (k=h; k>0; k--) {
                tile_add(res_iso_tile, 0, 48 * BrushPalette, 64, 48, o.x - TILE_WIDTH, o.y - o.z + (k - 3) * TILE_HEIGHT, o.depth + 1);
            }
        }
    }*/

    /*
    for ( var d = -100000; d < 100000; d++ ) {
        tile_layer_delete(d);
    }
    for ( var j = 0; j < CCanvas.CanvasHeight; j++ ) {
        for ( var i = 0; i < CCanvas.CanvasWidth; i++ ) {
            for ( var h = CCanvas.CanvasElevation[# i, j] - 1; h > 0; h-- ) {
                tile_add(res_iso_tile, 0, 48 * ds_list_find_value(CCanvas.CanvasTiles[# i, j], h), 64, 48, IsoToCoordX(i, j) - TILE_WIDTH, IsoToCoordY(i, j) - (CCanvas.CanvasElevation[# i, j] * TILE_HEIGHT) + (h - 4) * TILE_HEIGHT, -IsoToCoordY(i, j));
            }
        }
    }*/
    var u = argument0;
    var v = argument1;
    var h = argument2;
    //tile_add(res_iso_tile, 0, 48 * argument3, 64, 48, IsoToCoordX(u, v) - TILE_WIDTH, IsoToCoordY(u, v) - (CCanvas.CanvasElevation[# u, v] * TILE_HEIGHT) + (h - 4) * TILE_HEIGHT, -IsoToCoordY(u, v));
    tile_add(res_iso_tile, 0, 48 * argument3, 64, 48, IsoToCoordX(u, v) - TILE_WIDTH, IsoToCoordY(u, v) - (CCanvas.CanvasElevation[# u, v] * TILE_HEIGHT), -IsoToCoordY(u, v));
}
