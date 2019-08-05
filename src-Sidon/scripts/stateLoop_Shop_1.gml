/// stateLoop_Shop_1()
{
    if (instance_exists(CPrompt)) {
        fsm_enterState(stateSystem_Prompt);
        return (state_next);
    }

    // Input
    DetectInputDevice();

    if (myInput.keyB
     or myInput.keySelect) {
        theChoice[4] = 0;
        theScroll[4] = 0;
        audio_play_sound(res_snd_deny, 1, false);
        fsm_enterState(stateLoop_Update);
        return (state_next);
    }

    // Timer
    theTimer = max(0, theTimer - 1);

    var _u;

    _u = myInput.keyD - myInput.keyU;

    if (_u < 0) {
        if (theTimer == 0) {
            if (theChoice[4] == 0) {
                if (theScroll[4] > 0) {
                    theScroll[4]--;
                }
                theTimer = room_speed * 0.1;
            } else {
                audio_play_sound(res_snd_cursor, 1, false);
                theChoice[4]--;
                theTimer = room_speed * 0.1;
            }
        }
    }
    if (_u > 0) {
        if (theTimer == 0) {
            if (theChoice[4] == 13) {
                if (theChoice[4] + theScroll[4] < 199) {
                    theScroll[4]++;
                }
                theTimer = room_speed * 0.1;
            } else {
                audio_play_sound(res_snd_cursor, 1, false);
                theChoice[4]++;
                theTimer = room_speed * 0.1;
            }
        }
    }

    if (myInput.keyStart
     or myInput.keyA) {
        var peek = PeekStorage(theChoice[4] + theScroll[4]);
        var thePrice = DBQ_LookItems(theChoice[4] + theScroll[4], ITEM_PRICE);

        if (peek > -1) {
            var theMax = 99 - ds_list_find_value(Storage[QUANTITY], ds_list_find_index(Storage[ITEM_ID], theChoice[4] + theScroll[4]));
        } else {
            var theMax = 99;
        }

        if (theMax > 0 and thePrice <= Storage[GOLD]) {
            myInput.keyStart = false;
            myInput.keyA = false;
            audio_play_sound(res_snd_confirm, 1, false);
            fsm_enterState(stateLoop_Shop_2);
            return (state_next);
        }
        if (thePrice > Storage[GOLD]) {
            audio_play_sound(res_snd_deny, 1, false);
            BufferPrompt("0_You do not have enough Denari to make a purchase.");
            DisplayPrompt();
        }
        if (theMax <= 0) {
            audio_play_sound(res_snd_deny, 1, false);
            BufferPrompt("0_You have reached the maximum number of this item you can hold in your [Armoury].");
            DisplayPrompt();
        }
    }

    return (state_continue);
}
