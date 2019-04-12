/// stateLoop_Roster_1()
{
    if (instance_exists(CPrompt)) {
        fsm_enterState(stateSystem_Prompt);
        return (state_next);
    }

    // Input
    DetectInputDevice();

    if (myInput.keyB
     or myInput.keySelect) {
        theChoice[2] = 0;
        theScroll[2] = 0;
        fsm_enterState(stateLoop_Update);
        return (state_next);
    }

    // Timer
    theTimer = max(0, theTimer - 1);

    var _u;

    _u = myInput.keyV;

    if (_u < 0) {
        if (theTimer == 0) {
            if (theChoice[2] == 0) {
                if (theScroll[2] > 0) {
                    theScroll[2]--;
                }
                theTimer = room_speed * 0.1;
            } else {
                audio_play_sound(res_snd_cursor, 1, false);
                theChoice[2]--;
                theTimer = room_speed * 0.1;
            }
        }
    }
    if (_u > 0) {
        if (theTimer == 0) {
            if (theChoice[2] == min(CClan.theClanSize, 14) - 1) {
                if (theChoice[2] + theScroll[2] < CClan.theClanSize - 1) {
                    theScroll[2]++;
                }
                theTimer = room_speed * 0.1;
            } else {
                audio_play_sound(res_snd_cursor, 1, false);
                theChoice[2]++;
                theTimer = room_speed * 0.1;
            }
        }
    }

    if (myInput.keyStart
     or myInput.keyA) {
        myInput.keyStart = false;
        myInput.keyA = false;
        fsm_enterState(stateLoop_Roster_2);
        return (state_next);
    }

    // Debug::Adding Experience
    if (keyboard_check_pressed(ord("H"))) {
        AddXP(theChoice[2] + theScroll[2], 5);
    }

    return (state_continue);
}
