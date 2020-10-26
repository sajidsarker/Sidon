/// stateCursor_Attack()
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

        if (vecPosition[| X] + _u > -1 and vecPosition[| X] + _u < CMap.myWidth) {
            ResetCursor(vecPosition[| X] + _u, vecPosition[| Y]);
            var o = ds_grid_get(CMap.myMap[ENTITY_MAP], vecPosition[| X], vecPosition[| Y]);
            if (o != noone) {
                if (o.myFaction != 99) {
                    CGame.myUnitInfo[1] = ds_grid_get( CMap.myMap[ENTITY_MAP], vecPosition[| X], vecPosition[| Y] );
                }
            } else {
                CGame.myUnitInfo[1] = noone;
            }
        }

        if (vecPosition[| Y] + _v > -1 and vecPosition[| Y] + _v < CMap.myHeight) {
            ResetCursor(vecPosition[| X], vecPosition[| Y] + _v);
            var o = ds_grid_get(CMap.myMap[ENTITY_MAP], vecPosition[| X], vecPosition[| Y]);
            if (o != noone) {
                if (o.myFaction != 99) {
                    CGame.myUnitInfo[1] = ds_grid_get( CMap.myMap[ENTITY_MAP], vecPosition[| X], vecPosition[| Y] );
                }
            } else {
                CGame.myUnitInfo[1] = noone;
            }
        }

        if (abs(_u) + abs(_v) > 0) {
            _u = 0;
            _v = 0;

            audio_play_sound(res_snd_cursor, 1, false);

            theTimer = room_speed * 0.1;
        }

    }

    // Deselection
    if (myInput.keyB) {
        myInput.keyA = false;
        myInput.keyB = false;
        ResetCursor(prevX, prevY);
        UpdateMap(TILE_MAP, 0);
        audio_play_sound(res_snd_deny, 1, false);
        fsm_enterState(stateCursor_Command);
        return (state_next);
    }

    // Selection
    if (myInput.keyA) {
        myInput.keyA = false;
        myInput.keyB = false;
        // This should actually go to a second script that displays AOE and seeks a confirmation
        if (ds_grid_get(CMap.myMap[TILE_MAP], vecPosition[| X], vecPosition[| Y]).myFlag[ATTACKABLE] == true) {
            isSelected[1] = ds_grid_get(CMap.myMap[ENTITY_MAP], vecPosition[| X], vecPosition[| Y]);
            
            
            // Cutscene Manager for Attack
            with (CGame) {
                SceneBegin();
                SceneChangeTarget(CCursor);
                SceneNotify("Attack");
                AddExperiencePoints(CCursor.isSelected[0], 40);
                // Attack Script
                // Attack Animation
                // 
                
                SceneRun();
            }
            
            
            /*
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
            */
            ResetCursor(isSelected[0].vecPosition[| X], isSelected[0].vecPosition[| Y]);
            UpdateMap(TILE_MAP, 0);
            UpdateMap(TILE_MAP, 1);
            isSelected[1] = noone;
            CGame.myUnitInfo[1] = noone;
            audio_play_sound(res_snd_confirm, 1, false);
            isSelected[0].canAct = false;
            ds_list_delete(theMenu[0], ds_list_find_index(theMenu[0], 1));
            ds_list_delete(theMenu[0], ds_list_find_index(theMenu[0], 3));
            ds_list_delete(theMenu[0], ds_list_find_index(theMenu[0], 4));
            theChoice[0] = 0;
            if (!isSelected[0].canMove) {
                fsm_enterState(stateCursor_Wait);
                return (state_next);
            }
            fsm_enterState(stateCursor_Command);
            return (state_next);
        }
    }

    return (state_continue);
}
