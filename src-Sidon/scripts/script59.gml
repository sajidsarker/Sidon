///stateMainMenu_Update()
{
    // Input
    DetectInputDevice();

    if (myInput.keyB
     or myInput.keySelect) {
        fsm_enterState(prev_state);
        return (state_next);
    }

    // Timer
    theTimer = max(0, theTimer - 1);

    var _u;

    _u = myInput.keyD - myInput.keyU;

    if (abs(_u) > 0) {
        if (theTimer == 0) {
            theChoice = max(0, min(theChoice + _u, ds_list_size(theMenu) - 1));
            theTimer = room_speed * 0.1;
        }
    }

    if (myInput.keyStart
     or myInput.keyA) {
        switch (ds_list_find_value(theMenu, theChoice)) {
            case "Play":
                myInput.keyStart = false;
                myInput.keyA = false;
                room_goto(test_map);
            break;
            
            case "Guide":
            break;
            
            case "Credits":
            break;
            
            case "Settings":
            break;
            
            case "Exit":
                game_end();
            break;
        }
    }

    return (state_continue);
}
