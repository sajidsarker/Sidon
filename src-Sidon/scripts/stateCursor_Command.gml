/// stateCursor_Command()
{
    if (CGame.state_index != stateSystem_Update) {
        return (state_continue);
    }


    // Timer
    theTimer = max(0, theTimer - 1);

    // Scrolling
    _u = myInput.keyD - myInput.keyU;

    if (abs(_u) > 0) {
        if (theTimer == 0) {
            theChoice[0] = max(0, min(theChoice[0] + _u, ds_list_size(theMenu[0]) - 1));
            audio_play_sound(res_snd_cursor, 1, false);
            theTimer = room_speed * 0.1;
        }
    }

    // Selection
    if (myInput.keyA) {
        audio_play_sound(res_snd_confirm, 1, false);
        switch (ds_list_find_value(theMenu[0], theChoice[0])) {
            // Move
            case 0:
                myInput.keyA = false;
                var o = ds_grid_get(CMap.myMap[ENTITY_MAP], prevX, prevY);
                GenerateMovement(ds_grid_get(CMap.myMap[TILE_MAP], prevX, prevY), o.myFaction);
                audio_play_sound(res_snd_confirm, 1, false);
                fsm_enterState(stateCursor_Move);
                return (state_next);
            break;

            // Attack
            case 1:
                myInput.keyA = false;
                // Nearest only
                GenerateRange(ds_grid_get(CMap.myMap[TILE_MAP], prevX, prevY), 0, 1, 1, 0);
                // Not nearest only
                //GenerateRange(ds_grid_get(CMap.myMap[TILE_MAP], prevX, prevY), 1, 5, 1, 0);
                // 4-point cardinal
                //GenerateRange(ds_grid_get(CMap.myMap[TILE_MAP], prevX, prevY), 2, 5, 1, 0);
                // Self only
                //GenerateRange(ds_grid_get(CMap.myMap[TILE_MAP], prevX, prevY), 3, 1, 1, 0);
                audio_play_sound(res_snd_confirm, 1, false);
                fsm_enterState(stateCursor_Attack);
                return (state_next);
            break;

            // Shoot
            case 2:
                myInput.keyA = false;
                audio_play_sound(res_snd_confirm, 1, false);
            break;

            // Ability
            case 3:
                myInput.keyA = false;
                audio_play_sound(res_snd_confirm, 1, false);
            break;

            // Item
            case 4:
                myInput.keyA = false;
                audio_play_sound(res_snd_confirm, 1, false);
            break;

            // Status
            case 5:
                myInput.keyA = false;
                var a = ScenePanner( isSelected[0].x, isSelected[0].y - isSelected[0].vecPosition[| Z] * TILE_HEIGHT, isSelected[0].x + 128, isSelected[0].y - isSelected[0].vecPosition[| Z] * TILE_HEIGHT, 1/60 );
                ResetCamera(a);
                audio_play_sound(res_snd_confirm, 1, false);
                fsm_enterState(stateCursor_Status);
                return (state_next);
            break;

            // Wait
            case 6:
                myInput.keyA = false;
                direction = isSelected[0].direction;
                audio_play_sound(res_snd_confirm, 1, false);
                fsm_enterState(stateCursor_Wait);
                return (state_next);
            break;

            // End Turn
            case 7:
                myInput.keyA = false;
                myInput.keyB = false;
                ds_list_clear(theMenu[0]);
                isSelected[0] = noone;
                isSelected[1] = noone;
                audio_play_sound(res_snd_confirm, 1, false);
                CGame.myPhase++;
                with (CGame) {
                    ds_list_destroy(actorIndex);
                    ds_list_destroy(activeActorIndex);
                    UpdateTurnOrder();
                    myTurn = !turnOrder[| turnCounter[0]].myFaction;
                }
                var o = CGame.turnOrder[| CGame.turnCounter[0]];
                ResetCursor(o.vecPosition[| X], o.vecPosition[| Y]);
                GenerateMovement(ds_grid_get(CMap.myMap[TILE_MAP], o.vecPosition[| X], o.vecPosition[| Y]), o.myFaction);
                fsm_enterState(stateCursor_Update);
                return (state_next);
            break;

            // Spawn
            case 8:
                myInput.keyA = false;
                //Spawn Menu
                //var a = ScenePanner( isSelected[0].x, isSelected[0].y - isSelected[0].vecPosition[| Z] * TILE_HEIGHT, isSelected[0].x + 64, isSelected[0].y - isSelected[0].vecPosition[| Z] * TILE_HEIGHT, 1/60 );
                //ResetCamera(a);
                //fsm_enterState(stateCursor_Status);
                //return (state_next);
            break;
        }

    }

    // Deselection
    if (myInput.keyB) {
        myInput.keyB = false;
        if (isSelected[0] != noone) {
            if (isSelected[0].myFaction == CGame.myFaction) {
                if (isSelected[0].canMove) {
                    ds_list_clear(theMenu[0]);
                    GenerateMovement(ds_grid_get(CMap.myMap[TILE_MAP], prevX, prevY), isSelected[0].myFaction);
                    isSelected[0] = noone;
                    isSelected[1] = noone;
                    audio_play_sound(res_snd_deny, 1, false);
                    fsm_enterState(stateCursor_Update);
                    return (state_next);
                } else {
                    theChoice[0] = 0;
                    ds_list_insert(theMenu[0], 0, 0);
                    isSelected[0].canMove = true;
                    isSelected[0].vecPosition[| X] = _X_;
                    isSelected[0].vecPosition[| Y] = _Y_;
                    isSelected[0].x = IsoToCoordX(_X_, _Y_);
                    isSelected[0].y = IsoToCoordY(_X_, _Y_);
                    ds_grid_set(CMap.myMap[ENTITY_MAP], _X_, _Y_, isSelected[0]);
                    ds_grid_set(CMap.myMap[ENTITY_MAP], vecPosition[| X], vecPosition[| Y], noone);
                    UpdateMap(TILE_MAP, 0);
                    UpdateMap(TILE_MAP, 1);
                    ResetCursor(_X_, _Y_);
                    prevX = _X_;
                    prevY = _Y_;
                    audio_play_sound(res_snd_deny, 1, false);
                }
            } else {
                ds_list_clear(theMenu[0]);
                GenerateMovement(ds_grid_get(CMap.myMap[TILE_MAP], prevX, prevY), isSelected[0].myFaction);
                isSelected[0] = noone;
                isSelected[1] = noone;
                audio_play_sound(res_snd_deny, 1, false);
                fsm_enterState(stateCursor_Update);
                return (state_next);
            }
        } else {
            ds_list_clear(theMenu[0]);
            isSelected[0] = noone;
            isSelected[1] = noone;
            audio_play_sound(res_snd_deny, 1, false);
            fsm_enterState(stateCursor_Update);
            return (state_next);
        }
    }

    return (state_continue);
}
