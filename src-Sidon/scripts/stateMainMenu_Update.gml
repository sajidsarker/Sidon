///stateMainMenu_Update()
{
    // Input
    DetectInputDevice();

    if (myInput.keyB
     or myInput.keySelect) {
        audio_play_sound(res_snd_deny, 1, false);
        fsm_enterState(stateMainMenu_PressStart);
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
            audio_play_sound(res_snd_cursor, 1, false);
        }
    }

    if (myInput.keyStart
     or myInput.keyA) {
        switch (ds_list_find_value(theMenu, theChoice)) {
            case "Play":
                myInput.keyStart = false;
                myInput.keyA = false;
                audio_play_sound(res_snd_confirm, 1, false);
                room_goto(test_loop);
            break;
            
            case "Guide":
            break;
            
            case "Credits":
                audio_play_sound(res_snd_confirm, 1, false);
                fsm_enterState(stateMainMenu_Credits);
                return (state_next);
            break;
            
            case "Settings":
            break;
            
            case "Quit":
                game_end();
            break;
        }
    }

    return (state_continue);
}
