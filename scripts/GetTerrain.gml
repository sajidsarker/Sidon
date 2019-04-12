/// GetTerrain(index, value)
{
    /*
        0  Plains
        1  Forest
        2  Mountain
        3  Road
        4  Bridge
        5  River
        6  Sea
        7  Shoal
        8  HQ
        9  City
        10 Factory

        0 Name
        1 Cost - Infantry
        2 Cost - Vehicles
        3 Cost - Aircrafts
        4 Defence
    */

    return ds_grid_get(CGame.theTerrain, argument1, argument0);
}
