/// stateLoop_Roster_2()
{
    if (instance_exists(CPrompt)) {
        fsm_enterState(stateSystem_Prompt);
        return (state_next);
    }

    // Input
    DetectInputDevice();

    if (myInput.keyB
     or myInput.keySelect) {
        theScroll[6] = 0;
        fsm_enterState(stateLoop_Roster_1);
        return (state_next);
    }

    // Timer
    theTimer = max(0, theTimer - 1);

    var _u;

    _u = myInput.keyD - myInput.keyU;

    if (abs(_u) > 0) {
        if (theTimer == 0) {
            theScroll[6] = max(0, min(theScroll[6] + _u, ds_list_size(theMenu[2]) - 1));
            audio_play_sound(res_snd_cursor, 1, false);
            theTimer = room_speed * 0.1;
        }
    }

    if (myInput.keyStart
     or myInput.keyA) {
        myInput.keyStart = false;
        myInput.keyA = false;
        switch (theScroll[6]) {
            case 0:
                fsm_enterState(stateLoop_Roster_3);
                return (state_next);
            case 1:
                fsm_enterState(stateLoop_Roster_4);
                return (state_next);
            case 2:
                fsm_enterState(stateLoop_Roster_5);
                return (state_next);
        }
    }

    return (state_continue);
}
