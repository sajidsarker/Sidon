/// SetTerrain()
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

    // Name
    theTerrain[# 0, 0]  = "Plains";
    theTerrain[# 0, 1]  = "Forest";
    theTerrain[# 0, 2]  = "Mountain";
    theTerrain[# 0, 3]  = "Road";
    theTerrain[# 0, 4]  = "Bridge";
    theTerrain[# 0, 5]  = "River";
    theTerrain[# 0, 6]  = "Sea";
    theTerrain[# 0, 7]  = "Shoal";
    theTerrain[# 0, 8]  = "HQ";
    theTerrain[# 0, 9]  = "City";
    theTerrain[# 0, 10] = "Factory";

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

    // Cost - Vehicles
    theTerrain[# 2, 0]  = 1;
    theTerrain[# 2, 1]  = 2;
    theTerrain[# 2, 2]  = 0;
    theTerrain[# 2, 3]  = 1;
    theTerrain[# 2, 4]  = 1;
    theTerrain[# 2, 5]  = 0;
    theTerrain[# 2, 6]  = 0;
    theTerrain[# 2, 7]  = 0;
    theTerrain[# 2, 8]  = 1;
    theTerrain[# 2, 9]  = 1;
    theTerrain[# 2, 10] = 1;

    // Cost - Aircrafts
    theTerrain[# 3, 0]  = 1;
    theTerrain[# 3, 1]  = 1;
    theTerrain[# 3, 2]  = 1;
    theTerrain[# 3, 3]  = 1;
    theTerrain[# 3, 4]  = 1;
    theTerrain[# 3, 5]  = 1;
    theTerrain[# 3, 6]  = 1;
    theTerrain[# 3, 7]  = 1;
    theTerrain[# 3, 8]  = 1;
    theTerrain[# 3, 9]  = 1;
    theTerrain[# 3, 10] = 1;

    // Defence
    theTerrain[# 4, 0]  = 1;
    theTerrain[# 4, 1]  = 2;
    theTerrain[# 4, 2]  = 4;
    theTerrain[# 4, 3]  = 0;
    theTerrain[# 4, 4]  = 0;
    theTerrain[# 4, 5]  = 0;
    theTerrain[# 4, 6]  = 0;
    theTerrain[# 4, 7]  = 0;
    theTerrain[# 4, 8]  = 4;
    theTerrain[# 4, 9]  = 3;
    theTerrain[# 4, 10] = 3;
    // Aircrafts experience 0 defence ratings
}