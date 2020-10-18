/// stateSystem_TurnOrder()
{
    // Timer
    theTimer = max(0, theTimer - 1);

    if (ds_list_size(Scene) > 0) {
        fsm_enterState(stateScene_Update);
        return (state_next);
    }

    if (instance_exists(CPrompt)) {
        fsm_enterState(stateSystem_Prompt);
        return (state_next);
    }

    // Input
    DetectInputDevice();

    // Camera
    if ( CCursor.state_index != stateCursor_Status ) {
        ResetCamera(CCursor);
    }
    
    var _u = myInput.keyV;

    if (_u < 0) {
        if (theTimer == 0) {
            if (turnChoice == 0) {
                if (turnScroll > 0) {
                    turnScroll += _u;
                    audio_play_sound(res_snd_cursor, 1, false);
                    theTimer = Seconds(0.1);
                }
            } else {
                turnChoice = max(0, turnChoice + _u);
                audio_play_sound(res_snd_cursor, 1, false);
                theTimer = Seconds(0.1);
            }
            with (CCursor) {
                isSelected[0] = noone;
                isSelected[1] = noone;
                var o = CGame.turnOrder[| CGame.turnChoice];
                ResetCursor(o.vecPosition[| X], o.vecPosition[| Y]);
                GenerateMovement(ds_grid_get(CMap.myMap[TILE_MAP], o.vecPosition[| X], o.vecPosition[| Y]), o.myFaction);
            }
        }
    }
    if (_u > 0) {
        if (theTimer == 0) {
            if (turnChoice == min(ds_list_size(turnOrder)-1, 15)) {
                if (turnScroll + turnChoice < ds_list_size(turnOrder)-1) {
                    turnScroll++;
                    audio_play_sound(res_snd_cursor, 1, false);
                    theTimer = Seconds(0.1);
                }
            } else {
                turnChoice = min(ds_list_size(turnOrder)-1, turnChoice + _u);
                audio_play_sound(res_snd_cursor, 1, false);
                theTimer = Seconds(0.1);
            }
            with (CCursor) {
                isSelected[0] = noone;
                isSelected[1] = noone;
                var o = CGame.turnOrder[| CGame.turnChoice];
                ResetCursor(o.vecPosition[| X], o.vecPosition[| Y]);
                GenerateMovement(ds_grid_get(CMap.myMap[TILE_MAP], o.vecPosition[| X], o.vecPosition[| Y]), o.myFaction);
            }
        }
    }

    if (myInput.keyX or myInput.keyB) {
        myInput.keyX = false;
        myInput.keyB = false;
        audio_play_sound(res_snd_deny, 1, false);
        fsm_enterState(stateSystem_Update);
        return (state_next);
    }

    if (myInput.keyStart or myInput.keyA) {
        myInput.keyStart = false;
        myInput.keyA = false;
        audio_play_sound(res_snd_deny, 1, false);
        fsm_enterState(stateSystem_Update);
        return (state_next);
    }

    return (state_continue);
}
