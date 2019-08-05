/// SpawnUnit(x, y, faction, clan_id)
{
    var a;

    a = instance_create(IsoToCoordX(argument0, argument1), IsoToCoordY(argument0, argument1), CUnit);

    // Place on Map
    ds_grid_set(CMap.myMap[ENTITY_MAP], argument0, argument1, a);

    // Identifier
    a._id = argument3;
    a.myFaction = argument2;

    // Coordinates
    a.vecPosition = ds_list_create();
    a.vecPosition[| X] = argument0;
    a.vecPosition[| Y] = argument1;
    a.vecPosition[| Z] = ds_grid_get(CMap.myMap[HEIGHT_MAP], argument0, argument1);

    a.z = a.vecPosition[| Z] * TILE_HEIGHT;
    a.depth = -a.y - 2;

    // Sprite
    a.sprite_index = res_spr_unit;
    a.image_speed = 0;
    a.image_index = irandom(7);

    // Stats
    //a.HitPoints = CClan.theClan[# HP, argument3];
    //a.AbilityPoints = CClan.theClan[# AP, argument3];

    return a;
}
