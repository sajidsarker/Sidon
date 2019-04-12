/// UpdateMap(layer, parameter)
{
    // Tiles
    if (argument0 == TILE_MAP) {
        // arg1 refers to clearing value
        if (argument1 == 0) {
            with (CTile) {
                myFlag[REACHABLE] = false;
                myFlag[ATTACKABLE] = false;
            }
        } else {
            with (CTile) {
                var o = ds_grid_get(CMap.myMap[ENTITY_MAP], myX, myY);
                if (o != noone) {
                    switch (argument1 - 1) {
                        case 0:
                            if (o.myFaction == 0) {
                                myFlag[ALLY_OCCUPIES]  = !(argument1 - 1);
                                myFlag[ENEMY_OCCUPIES] = (argument1 - 1);
                            } else {
                                myFlag[ALLY_OCCUPIES]  = (argument1 - 1);
                                myFlag[ENEMY_OCCUPIES] = !(argument1 - 1);
                            }
                        break;
                        case 1:
                            if (o.myFaction == 1) {
                                myFlag[ALLY_OCCUPIES]  = (argument1 - 1);
                                myFlag[ENEMY_OCCUPIES] = !(argument1 - 1);
                            } else {
                                myFlag[ALLY_OCCUPIES]  = !(argument1 - 1);
                                myFlag[ENEMY_OCCUPIES] = (argument1 - 1);
                            }
                        break;
                    }
                } else {
                    myFlag[ALLY_OCCUPIES]  = false;
                    myFlag[ENEMY_OCCUPIES] = false;
                }
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
        with (CTile) {
            var o = ds_grid_get(CMap.myMap[ENTITY_MAP], myX, myY);
            if (o != noone) {
                if ( CoordToIsoX(o.x, o.y) != myX and CoordToIsoY(o.x, o.y) != myY ) {
                    ds_grid_set(CMap.myMap[ENTITY_MAP], myX, myY, noone);
                    ds_grid_set(CMap.myMap[ENTITY_MAP], CoordToIsoX(o.x, o.y), CoordToIsoY(o.x, o.y), o);
                }
            }
        }
    }
}
