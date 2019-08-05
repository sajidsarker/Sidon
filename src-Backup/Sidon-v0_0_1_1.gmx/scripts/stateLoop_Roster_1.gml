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
        fsm_enterState(stateLoop_Update);
        return (state_next);
    }

    // Timer
    theTimer = max(0, theTimer - 1);

    var _u;

    _u = myInput.keyD - myInput.keyU;

    if (_u < 0) {
        if (theTimer == 0) {
            audio_play_sound(res_snd_cursor, 1, false);
            theTimer = room_speed * 0.1;
        }
    }

    if (myInput.keyStart
     or myInput.keyA) {
        myInput.keyStart = false;
        myInput.keyA = false;
    }

    return (state_continue);
}
