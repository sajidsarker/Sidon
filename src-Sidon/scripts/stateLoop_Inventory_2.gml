/// stateLoop_Inventory_2()
{
    if (instance_exists(CPrompt)) {
        fsm_enterState(stateSystem_Prompt);
        return (state_next);
    }

    // Input
    DetectInputDevice();

    if (myInput.keyB
     or myInput.keySelect) {
        theScroll[5] = 1;
        audio_play_sound(res_snd_deny, 1, false);
        fsm_enterState(stateLoop_Inventory_1);
        return (state_next);
    }

    // Timer
    theTimer = max(0, theTimer - 1);

    var _u, _v;

    _u = myInput.keyD - myInput.keyU;
    _v = myInput.keyR - myInput.keyL;

    if (abs(_u) + abs(_v) > 0) {
        var _q, _e, _a;
        _q = ds_list_find_value(Storage[QUANTITY], theChoice[3] + theScroll[3]);
        _e = ds_list_find_value(Storage[EQUIPPED], theChoice[3] + theScroll[3]);
        _a = _q - _e;

        if (theTimer == 0) {
            if (_a > 0) {
                theScroll[5] = max(1, min(theScroll[5] - _u + _v * 10, min(_a, 99)));
                audio_play_sound(res_snd_cursor, 1, false);
                theTimer = room_speed * 0.1;
            }
        }
    }

    if (myInput.keyA
     or myInput.keyStart) {
        myInput.keyStart = false;
        myInput.keyA = false;
        audio_play_sound(res_snd_confirm, 1, false);
        fsm_enterState(stateLoop_Inventory_3);
        return (state_next);
    }

    return (state_continue);
}
