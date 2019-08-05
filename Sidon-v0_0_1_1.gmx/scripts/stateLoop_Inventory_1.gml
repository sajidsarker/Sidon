/// stateLoop_Inventory_1()
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
            if (theChoice[3] == 0) {
                if (theScroll[3] > 0) {
                    theScroll[3]--;
                }
                theTimer = room_speed * 0.1;
            } else {
                audio_play_sound(res_snd_cursor, 1, false);
                theChoice[3]--;
                theTimer = room_speed * 0.1;
            }
        }
    }
    if (_u > 0) {
        if (theTimer == 0) {
            if (theChoice[3] == min(ds_list_size(Storage[INDEX]), 14) - 1) {
                if (theChoice[3] + theScroll[3] < ds_list_size(Storage[INDEX]) - 1) {
                    theScroll[3]++;
                }
                theTimer = room_speed * 0.1;
            } else {
                audio_play_sound(res_snd_cursor, 1, false);
                theChoice[3]++;
                theTimer = room_speed * 0.1;
            }
        }
    }

    if (myInput.keyStart
     or myInput.keyA) {
        if (ds_list_size(Storage[INDEX]) > 0) {
            var _q, _e, _a;
            _q = ds_list_find_value(Storage[QUANTITY], theChoice[3] + theScroll[3]);
            _e = ds_list_find_value(Storage[EQUIPPED], theChoice[3] + theScroll[3]);
            _a = _q - _e;

            if (_a > 0) {
                myInput.keyStart = false;
                myInput.keyA = false;
                fsm_enterState(stateLoop_Inventory_2);
                return (state_next);
            } else {
                BufferPrompt("0_You do not hold a minimum amount of item in your [Armoury] in order to sell.");
                DisplayPrompt();
            }
        }
    }

    // Debug::Inventory
    if (keyboard_check_pressed(ord("M"))) {
        repeat (5) {
            AddStorage(irandom_range(0, 30), 1);
        }
    }

    // Debug::Gold
    if (keyboard_check_pressed(ord("G"))) {
        AddGold(36);
    }

    return (state_continue);
}
