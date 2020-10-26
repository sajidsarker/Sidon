/// stateCursor_Update()
{
    if (CGame.state_index != stateSystem_Update and
        CGame.state_index != stateSystem_TurnOrder) {
        return (state_continue);
    }

    /*
    if (CGame.SceneChoiceActive == true) {
        return (state_continue);
    }
    */

    // Clear
    if (ds_grid_get(CMap.myMap[ENTITY_MAP], vecPosition[| X], vecPosition[| Y]) == noone) {
        UpdateMap(TILE_MAP, 0);
    }

    // Timer
    theTimer = max(0, theTimer - 1);

    if (CGame.state_index != stateSystem_TurnOrder) {
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
            var o = ds_grid_get(CMap.myMap[ENTITY_MAP], vecPosition[| X], vecPosition[| Y]);
            if (o != noone) {
                if (o.myFaction != 99) {
                    CGame.myUnitInfo[o.myFaction] = ds_grid_get( CMap.myMap[ENTITY_MAP], vecPosition[| X], vecPosition[| Y] );
                    CGame.myUnitInfo[!o.myFaction] = noone;
                }
            } else {
                CGame.myUnitInfo[0] = noone;
                CGame.myUnitInfo[1] = noone;
            }
        }

        if (vecPosition[| Y] + _v > -1 and vecPosition[| Y] + _v < CMap.myHeight) {
            ResetCursor(vecPosition[| X], vecPosition[| Y] + _v);
            var o = ds_grid_get(CMap.myMap[ENTITY_MAP], vecPosition[| X], vecPosition[| Y]);
            if (o != noone) {
                if (o.myFaction != 99) {
                    CGame.myUnitInfo[o.myFaction] = ds_grid_get( CMap.myMap[ENTITY_MAP], vecPosition[| X], vecPosition[| Y] );
                    CGame.myUnitInfo[!o.myFaction] = noone;
                }
            } else {
                CGame.myUnitInfo[0] = noone;
                CGame.myUnitInfo[1] = noone;
            }
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

    // Skip Enemy Turn
    if (keyboard_check_pressed(vk_space)) {
        var o = CGame.turnOrder[| CGame.turnCounter[0]];
        if (o.myFaction != 0) {
            isSelected[0] = noone;
            isSelected[1] = noone;
            with (CGame) {
                turnCounter[0]++;
                if (turnCounter[0] > ds_list_size(turnOrder)-1) {
                    turnCounter[0] = 0;
                }
                turnCounter[1]++;
                myTurn = !turnOrder[| turnCounter[0]].myFaction;
            }
            var o = CGame.turnOrder[| CGame.turnCounter[0]];
            ResetCursor(o.vecPosition[| X], o.vecPosition[| Y]);
            //var o = ds_grid_get(CMap.myMap[ENTITY_MAP], prevX, prevY);
            o.canMove = true;
            o.canAct  = true;
            GenerateMovement(ds_grid_get(CMap.myMap[TILE_MAP], o.vecPosition[| X], o.vecPosition[| Y]), o.myFaction);
            ds_list_delete(theMenu[0], ds_list_find_index(theMenu[0], 0));
            ds_list_delete(theMenu[0], ds_list_find_index(theMenu[0], 1));
            //ds_list_delete(theMenu[0], ds_list_find_index(theMenu[0], 2));
            audio_play_sound(res_snd_confirm, 1, false);
            //fsm_enterState(stateCursor_Update);
            //return (state_next);
            return (state_continue);
        }
    }

    // Reset Focus
    if (myInput.keyB) {
        if (CGame.myPhase > 1 and ds_list_size(CGame.turnOrder) > 0) {
            audio_play_sound(res_snd_cursor, 1, false);
            myInput.keyA = false;
            myInput.keyB = false;
            isSelected[0] = noone;
            isSelected[1] = noone;
            var o = CGame.turnOrder[| CGame.turnCounter[0]];
            ResetCursor(o.vecPosition[| X], o.vecPosition[| Y]);
            GenerateMovement(ds_grid_get(CMap.myMap[TILE_MAP], o.vecPosition[| X], o.vecPosition[| Y]), o.myFaction);
        }
    }

    // Selection
    if (myInput.keyA) {
        myInput.keyB = false;
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
                if ( CGame.myPhase == 1 ) {
                    ds_list_add(theMenu[0], 5);
                } else {
                    if (CGame.turnOrder[| CGame.turnCounter[0]] == e) {
                        if (e.canMove) {
                            ds_list_add(theMenu[0], 0);
                        }
                        if (e.canAct) {
                            ds_list_add(theMenu[0], 1);
                            ds_list_add(theMenu[0], 3);
                            ds_list_add(theMenu[0], 4);
                        }
                        ds_list_add(theMenu[0], 5);
                        ds_list_add(theMenu[0], 6);
                    } else {
                        ds_list_add(theMenu[0], 5);
                    }
                }
                UpdateMap(TILE_MAP, 0);
                UpdateMap(TILE_MAP, 1);
                audio_play_sound(res_snd_confirm, 1, false);
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
                ds_list_add(theMenu[0], 5); // Status
                UpdateMap(TILE_MAP, 0);
                UpdateMap(TILE_MAP, 1);
                audio_play_sound(res_snd_confirm, 1, false);
                fsm_enterState(stateCursor_Command);
                return (state_next);
            }
            
            // Props
            if (e.myFaction > 1) {
                if (CGame.myPhase == 1) {
                    myInput.keyA = false;
                    prevX = vecPosition[| X];
                    prevY = vecPosition[| Y];
                    isSelected[0] = e;
                    theChoice[0] = 0;
                    ds_list_clear(theMenu[0]);
                    ds_list_add(theMenu[0], 7);
                    UpdateMap(TILE_MAP, 0);
                    UpdateMap(TILE_MAP, 1);
                    audio_play_sound(res_snd_confirm, 1, false);
                    fsm_enterState(stateCursor_Command);
                    return (state_next);
                }
            }

        } else {

            // Spawn
            if ( CGame.myPhase == 1 ) {
                if (ds_grid_get(CMap.myMap[SPAWN_MAP], vecPosition[| X], vecPosition[| Y]) == true) {
                    myInput.keyA = false;
                    myInput.keyB = false;
                    prevX = vecPosition[| X];
                    prevY = vecPosition[| Y];
                    isSelected[0] = noone;
                    theChoice[0] = 0;
                    ds_list_clear(theMenu[0]);
                    ds_list_add(theMenu[0], 8);
                    //ds_list_add(theMenu[0], 7);
                    UpdateMap(TILE_MAP, 0);
                    UpdateMap(TILE_MAP, 1);
                    audio_play_sound(res_snd_confirm, 1, false);
                    fsm_enterState(stateCursor_Command);
                    return (state_next);
                } else {
                    myInput.keyA = false;
                    myInput.keyB = false;
                    prevX = vecPosition[| X];
                    prevY = vecPosition[| Y];
                    isSelected[0] = noone;
                    theChoice[0] = 0;
                    ds_list_clear(theMenu[0]);
                    ds_list_add(theMenu[0], 7);
                    UpdateMap(TILE_MAP, 0);
                    UpdateMap(TILE_MAP, 1);
                    audio_play_sound(res_snd_confirm, 1, false);
                    fsm_enterState(stateCursor_Command);
                    return (state_next);
                }
            }/* else {
                myInput.keyA = false;
                prevX = vecPosition[| X];
                prevY = vecPosition[| Y];
                isSelected[0] = e;
                theChoice[0] = 0;
                ds_list_clear(theMenu[0]);
                ds_list_add(theMenu[0], 7);
                UpdateMap(TILE_MAP, 0);
                UpdateMap(TILE_MAP, 1);
                audio_play_sound(res_snd_confirm, 1, false);
                fsm_enterState(stateCursor_Command);
                return (state_next);
            }*/
        
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
