/// SpawnMap()
{
    var i, j, k, o, h;

    h = ds_list_create();
    for (j=0; j<CMap.myHeight; j++) {
        for (i=0; i<CMap.myWidth; i++) {
            o = ds_grid_get(myMap[TILE_MAP], i, j);
            ds_list_read(h, ds_grid_get(myMap[TERRAIN_MAP], i, j));
            for (k=ds_list_size(h); k>0; k--) {
                tile_add(res_iso_tile, 0, 48 * h[| k-1], 64, 48, o.x - TILE_WIDTH, o.y - o.z + (k - 3) * TILE_HEIGHT, o.depth + 1);
            }
            ds_list_clear(h);
        }
    }
    ds_list_destroy(h);
}
