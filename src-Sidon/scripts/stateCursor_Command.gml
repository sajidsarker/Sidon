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
        switch (ds_list_find_value(theMenu[0], theChoice[0])) {
            // Move
            case 0:
                myInput.keyA = false;
                GenerateMovement(ds_grid_get(CMap.myMap[TILE_MAP], prevX, prevY), 0);
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
                fsm_enterState(stateCursor_Attack);
                return (state_next);
            break;
            
            // Shoot
            case 2:
                myInput.keyA = false;
            break;
            
            // Ability
            case 3:
                myInput.keyA = false;
            break;
            
            // Item
            case 4:
                myInput.keyA = false;
            break;
            
            // Status
            case 5:
                myInput.keyA = false;
                var a = ScenePanner( isSelected[0].x, isSelected[0].y - isSelected[0].vecPosition[| Z] * TILE_HEIGHT, isSelected[0].x + 64, isSelected[0].y - isSelected[0].vecPosition[| Z] * TILE_HEIGHT, 1/60 );
                ResetCamera(a);
                fsm_enterState(stateCursor_Status);
                return (state_next);
            break;

            // Wait
            case 6:
                myInput.keyA = false;
                direction = isSelected[0].direction;
                fsm_enterState(stateCursor_Wait);
                return (state_next);
        }
    }

    // Deselection
    if (myInput.keyB) {
        myInput.keyB = false;
        ds_list_clear(theMenu[0]);
        isSelected[0] = noone;
        isSelected[1] = noone;
        GenerateMovement(ds_grid_get(CMap.myMap[TILE_MAP], prevX, prevY), 0);
        fsm_enterState(stateCursor_Update);
        return (state_next);
    }

    return (state_continue);
}
