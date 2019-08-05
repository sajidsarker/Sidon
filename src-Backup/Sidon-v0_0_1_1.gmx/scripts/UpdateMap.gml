/// UpdateMap(layer, parameter)
{
    // Tiles
    if (argument0 == TILE_MAP) {

        // arg1 refers to clearing value
        if (argument1 == 0) {

            with (CTile) {
                myFlag[0] = false;
                myFlag[1] = false;
            }

        } else {

            with (CTile) {
                myFlag[2] = false;
                myFlag[3] = false;
            }

            with (CUnit) {
                //if (myFaction == !CGame.myTurn) {
                    with (ds_grid_get(CMap.myMap[TILE_MAP], vecPosition[| X], vecPosition[| Y])) {
                        myFlag[2] = 1;
                        myFlag[3] = 0;
                    }
                //} else {
                //    with (ds_grid_get(CMap.myMap[TILE_MAP], vecPosition[| X], vecPosition[| Y])) {
                //        myFlag[2] = 1;
                //        myFlag[3] = 0;
                //    }
                //}
            }

        }

    }

    // Height
    if (argument0 == HEIGHT_MAP) {
    }

    // Terrain
    if (argument0 == TERRAIN_MAP) {
    }

    // Entity
    if (argument0 == ENTITY_MAP) {
    }
}
