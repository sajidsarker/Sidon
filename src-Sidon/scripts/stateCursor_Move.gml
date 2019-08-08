/// stateCursor_Move()
{
    if (CGame.state_index != stateSystem_Update) {
        return (state_continue);
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
        }

        if (vecPosition[| Y] + _v > -1 and vecPosition[| Y] + _v < CMap.myHeight) {
            ResetCursor(vecPosition[| X], vecPosition[| Y] + _v);
        }

        if (abs(_u) + abs(_v) > 0) {
            _u = 0;
            _v = 0;

            audio_play_sound(res_snd_cursor, 1, false);

            theTimer = room_speed * 0.1;
        }

    }

    // Selection
    if (myInput.keyA) {
        myInput.keyA = false;
        if (ds_grid_get(CMap.myMap[TILE_MAP], vecPosition[| X], vecPosition[| Y]).myFlag[REACHABLE] == true
        and ds_grid_get(CMap.myMap[TILE_MAP], vecPosition[| X], vecPosition[| Y]).myFlag[ALLY_OCCUPIES] == false) {
            // Cutscene Manager for Movement
            var d = GeneratePath(vecPosition[| X], vecPosition[| Y], isSelected[0], 1);
            with (CGame) {
                SceneBegin();
                SceneChangeTarget(CCursor.isSelected[0]);
                SceneMove(string(d) + "_null_null_");
                SceneChangeTarget(CCursor);
                SceneRun();
            }
            ds_grid_set(CMap.myMap[ENTITY_MAP], vecPosition[| X], vecPosition[| Y], isSelected[0]);
            ds_grid_set(CMap.myMap[ENTITY_MAP], prevX, prevY, noone);
                //isSelected[0].vecPosition[| X] = vecPosition[| X];
                //isSelected[0].vecPosition[| Y] = vecPosition[| Y];
                //isSelected[0].vecPosition[| Z] = vecPosition[| Z];
                //ds_list_clear(theMenu[0]);
                //isSelected[0] = noone;
                //isSelected[1] = noone;
            prevX = vecPosition[| X];
            prevY = vecPosition[| Y];
            UpdateMap(TILE_MAP, 0);
            UpdateMap(TILE_MAP, 1);
            fsm_enterState(stateCursor_Command);
            //fsm_enterState(stateCursor_Wait);
            return (state_next);
        }
    }

    // Deselection
    if (myInput.keyB) {
        myInput.keyB = false;
        ResetCursor(prevX, prevY);
        UpdateMap(TILE_MAP, 0);
        fsm_enterState(stateCursor_Command);
        return (state_next);
    }

    return (state_continue);
}
