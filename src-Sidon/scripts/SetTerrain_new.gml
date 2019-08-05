/// GetTerrain(index, value)
{
    /*
        0 Sea
        1 Plains
        2 Forest
        3 Mountain
        4 Road
        5 Bridge
        6 Settlement
        
        0 Name
        1 Cost - Infantry
        2 Cost - Cavalry
        3 Defence
    */

    return ds_grid_get(theTerrain, argument1, argument0);
}
