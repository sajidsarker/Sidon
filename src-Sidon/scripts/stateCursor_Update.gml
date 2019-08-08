/// stateCursor_Update()
{
    if (CGame.state_index != stateSystem_Update) {
        return (state_continue);
    }

    if (CGame.SceneChoiceActive == true) {
        return (state_continue);
    }


    // Clear
    if (ds_grid_get(CMap.myMap[ENTITY_MAP], vecPosition[| X], vecPosition[| Y]) == noone) {
        UpdateMap(TILE_MAP, 0);
    }

    // Timer
    theTimer = max(0, theTimer - 1);

    // Scrolling
    if (theTimer == 0) {

        var _u, _v;
        _u = myInput.keyH;
        _v = myInput.keyV;

        /*
        if (abs(CCamera.vecOrientation[| 0]) > 0) {
            myU = _u * -CCamera.vecOrientation[| 0];
            myV = _v * -CCamera.vecOrientation[| 0];
        }

        if (abs(CCamera.vecOrientation[| 1]) > 0) {
            myU = _v * -CCamera.vecOrientation[| 1];
            myV = _u * CCamera.vecOrientation[| 1];
        }
        */

        if (vecPosition[| X] + _u > -1 and vecPosition[| X] + _u < CMap.myWidth) {
            ResetCursor(vecPosition[| X] + _u, vecPosition[| Y]);
            CGame.myUnitInfo[0] = ds_grid_get( CMap.myMap[ENTITY_MAP], vecPosition[| X], vecPosition[| Y] );
        }

        if (vecPosition[| Y] + _v > -1 and vecPosition[| Y] + _v < CMap.myHeight) {
            ResetCursor(vecPosition[| X], vecPosition[| Y] + _v);
            CGame.myUnitInfo[0] = ds_grid_get( CMap.myMap[ENTITY_MAP], vecPosition[| X], vecPosition[| Y] );
        }

        if (abs(_u) + abs(_v) > 0) {
            _u = 0;
            _v = 0;

            audio_play_sound(res_snd_cursor, 1, false);

            if (ds_grid_get(CMap.myMap[ENTITY_MAP], vecPosition[| X], vecPosition[| Y]) != noone) {
                GenerateMovement(ds_grid_get(CMap.myMap[TILE_MAP], vecPosition[| X], vecPosition[| Y]), (ds_grid_get(CMap.myMap[ENTITY_MAP], vecPosition[| X], vecPosition[| Y])).myFaction);
            }

            theTimer = room_speed * 0.1;
        }

    }

    // Selection
    if (myInput.keyA) {
        var e = ds_grid_get(CMap.myMap[ENTITY_MAP], vecPosition[| X], vecPosition[| Y]);

        if (e != noone) {

            // Ally
            if (e.myFaction == 0) {
                myInput.keyA = false;
                prevX = vecPosition[| X];
                prevY = vecPosition[| Y];
                isSelected[0] = e;
                theChoice[0] = 0;
                ds_list_clear(theMenu[0]);
                ds_list_add(theMenu[0], 0);
                ds_list_add(theMenu[0], 1);
                ds_list_add(theMenu[0], 3);
                ds_list_add(theMenu[0], 4);
                ds_list_add(theMenu[0], 5);
                ds_list_add(theMenu[0], 6);
                UpdateMap(TILE_MAP, 0);
                UpdateMap(TILE_MAP, 1);
                fsm_enterState(stateCursor_Command);
                return (state_next);
            }

            // Enemy
            if (e.myFaction == 1) {
                myInput.keyA = false;
                prevX = vecPosition[| X];
                prevY = vecPosition[| Y];
                isSelected[0] = e;
                theChoice[0] = 0;
                ds_list_clear(theMenu[0]);
                ds_list_add(theMenu[0], 5);
                UpdateMap(TILE_MAP, 0);
                UpdateMap(TILE_MAP, 1);
                fsm_enterState(stateCursor_Command);
                return (state_next);
            }

        }
    }

    // Place Ally
    /*
    if (myInput.keyX) {
        if (ds_grid_get(CMap.myMap[ENTITY_MAP], vecPosition[| X], vecPosition[| Y]) == noone) {
            SpawnUnit(vecPosition[| X], vecPosition[| Y], 3, 0, 0);
        }
    }
    */

    // Place Enemy
    /*
    if (myInput.keyY) {
        if (ds_grid_get(CMap.myMap[ENTITY_MAP], vecPosition[| X], vecPosition[| Y]) == noone) {
            SpawnUnit(vecPosition[| X], vecPosition[| Y], 3, 1, 0);
        }
    }
    */

    // Place Tree
    /*
    if (keyboard_check_pressed(ord("B"))) {
        if (ds_grid_get(CMap.myMap[ENTITY_MAP], vecPosition[| X], vecPosition[| Y]) == noone) {
            SpawnWorldObject(vecPosition[| X], vecPosition[| Y], choose(res_spr_tree, res_spr_crate));
        }
    }
    */

    return (state_continue);
}
