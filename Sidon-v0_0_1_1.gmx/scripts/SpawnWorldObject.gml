/// SpawnWorldObject(x, y, sprite)
{
    var a;

    a = instance_create(IsoToCoordX(argument0, argument1), IsoToCoordY(argument0, argument1), CWorldObject);

    // Place on Map
    ds_grid_set(CMap.myMap[ENTITY_MAP], argument0, argument1, a);

    // Identifier
    a.myFaction = 99;

    // Coordinates
    a.z = ds_grid_get(CMap.myMap[HEIGHT_MAP], argument0, argument1) * TILE_HEIGHT;
    a.depth = -a.y - 1;

    // Sprite
    a.sprite_index = argument2;
    a.image_speed = 0;
    a.image_index = irandom(a.image_number);

    return a;
}
