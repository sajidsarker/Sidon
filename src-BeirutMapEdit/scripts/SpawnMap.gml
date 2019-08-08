/// SpawnMap()
{
    var i, j, k, o, h;

    for (j=0; j<CMap.myHeight; j++) {
        for (i=0; i<CMap.myWidth; i++) {
            o = ds_grid_get(myMap[TILE_MAP], i, j);
            h = ds_grid_get(myMap[HEIGHT_MAP], i, j);
            for (k=h; k>0; k--) {
                tile_add(res_iso_tile, 0, 48 * choose(0, 1, 2), 64, 48, o.x - TILE_WIDTH, o.y - o.z + (k - 3) * TILE_HEIGHT, o.depth + 1);
            }
        }
    }
}
