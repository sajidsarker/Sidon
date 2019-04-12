/// map_GetTerrain(index, value)
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

    var theTerrain = ds_grid_create(4, 11);

    // Name
    theTerrain[# 0, 0]  = "Plains";
    theTerrain[# 0, 1]  = "Forest";
    theTerrain[# 0, 2]  = "Mountain";
    theTerrain[# 0, 3]  = "Road";
    theTerrain[# 0, 4]  = "Bridge";
    theTerrain[# 0, 5]  = "River";
    theTerrain[# 0, 6]  = "Sea";
    theTerrain[# 0, 7]  = "Shoal";
    theTerrain[# 0, 8]  = "Settlement";
    theTerrain[# 0, 9]  = "Castle";
    theTerrain[# 0, 10] = "Barracks";

    // Cost - Infantry
    theTerrain[# 1, 0]  = 1;
    theTerrain[# 1, 1]  = 2;
    theTerrain[# 1, 2]  = 3;
    theTerrain[# 1, 3]  = 1;
    theTerrain[# 1, 4]  = 1;
    theTerrain[# 1, 5]  = 2;
    theTerrain[# 1, 6]  = 0;
    theTerrain[# 1, 7]  = 1;
    theTerrain[# 1, 8]  = 1;
    theTerrain[# 1, 9]  = 1;
    theTerrain[# 1, 10] = 1;

    // Cost - Cavalry
    theTerrain[# 1, 0]  = 1;
    theTerrain[# 1, 1]  = 2;
    theTerrain[# 1, 2]  = 0;
    theTerrain[# 1, 3]  = 1;
    theTerrain[# 1, 4]  = 1;
    theTerrain[# 1, 5]  = 0;
    theTerrain[# 1, 6]  = 0;
    theTerrain[# 1, 7]  = 0;
    theTerrain[# 1, 8]  = 1;
    theTerrain[# 1, 9]  = 1;
    theTerrain[# 1, 10] = 1;

    // Defence
    theTerrain[# 1, 0]  = 1;
    theTerrain[# 1, 1]  = 2;
    theTerrain[# 1, 2]  = 4;
    theTerrain[# 1, 3]  = 0;
    theTerrain[# 1, 4]  = 0;
    theTerrain[# 1, 5]  = 0;
    theTerrain[# 1, 6]  = 0;
    theTerrain[# 1, 7]  = 0;
    theTerrain[# 1, 8]  = 3;
    theTerrain[# 1, 9]  = 4;
    theTerrain[# 1, 10] = 3;
}
