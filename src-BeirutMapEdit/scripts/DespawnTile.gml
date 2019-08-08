/// DespawnTile(x, y, z)
{
    var u = argument0;
    var v = argument1;
    var h = argument2;
    tile_layer_delete_at(-IsoToCoordY(u, v), IsoToCoordX(u, v), IsoToCoordY(u, v) - (h+1) * TILE_HEIGHT);
}
