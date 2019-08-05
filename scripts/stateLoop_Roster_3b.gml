/// stateLoop_Roster_3b()
{
    if (instance_exists(CPrompt)) {
        fsm_enterState(stateSystem_Prompt);
        return (state_next);
    }

    // Input
    DetectInputDevice();

    if (myInput.keyB
     or myInput.keySelect) {
        theScroll[6] = 1;
        theScroll[5] = 1;
        ds_list_destroy(temp_equipment);
        audio_play_sound(res_snd_deny, 1, false);
        fsm_enterState(stateLoop_Roster_3);
        return (state_next);
    }

    // Timer
    theTimer = max(0, theTimer - 1);

    var _u;

    _u = myInput.keyD - myInput.keyU;

    if (_u < 0) {
        if (theTimer == 0) {
            if (theScroll[6] == 0) {
                if (theScroll[5] > 0) {
                    theScroll[5]--;
                }
                theTimer = room_speed * 0.1;
            } else {
                audio_play_sound(res_snd_cursor, 1, false);
                theScroll[6]--;
                theTimer = room_speed * 0.1;
            }
        }
    }
    if (_u > 0) {
        if (theTimer == 0) {
            if (theScroll[6] == min(ds_list_size(temp_equipment), 7) - 1) {
                if (theScroll[6] + theScroll[5] < ds_list_size(temp_equipment) - 1) {
                    theScroll[5]++;
                }
                theTimer = room_speed * 0.1;
            } else {
                audio_play_sound(res_snd_cursor, 1, false);
                theScroll[6]++;
                theTimer = room_speed * 0.1;
            }
        }
    }

    if (myInput.keyStart
     or myInput.keyA) {
        myInput.keyStart = false;
        myInput.keyA = false;
        audio_play_sound(res_snd_confirm, 1, false);
        EquipStorage(theScroll[2] + theChoice[2], SLOT2, temp_equipment[| theScroll[5] + theScroll[6]]);
        //ds_list_destroy(temp_equipment);
        //theScroll[6] = 0;
        //theScroll[5] = 1;
        //fsm_enterState(stateLoop_Roster_3);
        //return (state_next);
    }

    return (state_continue);
}
