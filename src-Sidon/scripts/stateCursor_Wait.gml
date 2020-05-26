/// stateCursor_Wait()
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

        if (abs(_u) + abs(_v) > 0) {
            if (_u < 0) {
                direction = 180;
            }
            if (_u > 0) {
                direction = 0;
            }
            if (_v < 0) {
                direction = 90;
            }
            if (_v > 0) {
                direction = 270;
            }

            _u = 0;
            _v = 0;
            
            isSelected[0].direction = direction;

            audio_play_sound(res_snd_cursor, 1, false);

            theTimer = room_speed * 0.1;
        }

    }

    // Deselection
    if (myInput.keyB) {
        myInput.keyB = false;
        if (prev_state == stateCursor_Command) {
            ResetCursor(prevX, prevY);
            UpdateMap(TILE_MAP, 0);
            audio_play_sound(res_snd_deny, 1, false);
            fsm_enterState(stateCursor_Command);
            return (state_next);
        }
        /*
        if (prev_state == stateCursor_Move) {
            isSelected[0].vecPosition[| X] = prevX;
            isSelected[0].vecPosition[| Y] = prevY;
            isSelected[0].canMove = true;
            ds_grid_set(CMap.myMap[ENTITY_MAP], prevX, prevY, isSelected[0]);
            ds_grid_set(CMap.myMap[ENTITY_MAP], vecPosition[| X], vecPosition[| Y], noone);
            isSelected[0] = noone;
            isSelected[1] = noone;
            ResetCursor(prevX, prevY);
            audio_play_sound(res_snd_deny, 1, false);
            fsm_enterState(prev_state);
            return (state_next);
        }
        */
    }

    // Selection
    if (myInput.keyA) {
        myInput.keyA = false;
        isSelected[0].direction = direction;
        isSelected[0].canMove = true;
        isSelected[0].canAct  = true;
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
        //o.canMove = true;
        //o.canAct  = true;
        GenerateMovement(ds_grid_get(CMap.myMap[TILE_MAP], o.vecPosition[| X], o.vecPosition[| Y]), o.myFaction);
        ds_list_clear(theMenu[0]);
        //ds_list_delete(theMenu[0], ds_list_find_index(theMenu[0], 0));
        //ds_list_delete(theMenu[0], ds_list_find_index(theMenu[0], 1));
        //ds_list_delete(theMenu[0], ds_list_find_index(theMenu[0], 2));
        audio_play_sound(res_snd_confirm, 1, false);
        fsm_enterState(stateCursor_Update);
        return (state_next);

        /*
        if (prev_state == stateCursor_Move) {
            var o = ds_grid_get(CMap.myMap[ENTITY_MAP], prevX, prevY);
            if (o != noone) {
                o.canMove = false;
            }
            var o = CGame.turnOrder[| CGame.turnCounter[0]];
            ResetCursor(o.vecPosition[| X], o.vecPosition[| Y]);
            //var o = ds_grid_get(CMap.myMap[ENTITY_MAP], prevX, prevY);
            o.canMove = false;
            ds_list_delete(theMenu[0], ds_list_find_index(theMenu[0], 0));
            // if previous state was to attack and I can move then don't append turn (as is)
            // if previous state was to attack and I already can't move then append turn
            // if previous state was to move then I can always reset position
            // if previous state was to move and I can't attack then append turn
            fsm_enterState(stateCursor_Command);
            return (state_next);
        }
        */
    }

    return (state_continue);
}
