/// stateLoop_Shop_3()
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
        fsm_enterState(stateLoop_Shop_2);
        return (state_next);
    }

    // Timer
    theTimer = max(0, theTimer - 1);

    var _u;

    _u = myInput.keyD - myInput.keyU;

    if (abs(_u) > 0) {
        if (theTimer == 0) {
            theScroll[6] = max(0, min(theScroll[6] + _u, 1));
            audio_play_sound(res_snd_cursor, 1, false);
            theTimer = room_speed * 0.1;
        }
    }

    if (myInput.keyA
     or myInput.keyStart) {
        myInput.keyStart = false;
        myInput.keyA = false;
        if (theScroll[6] == 1) {
            BufferPrompt("0_Purchased [" + DBQ_LookItems(theChoice[4] + theScroll[4], ITEM_NAME) + "] x" + string(theScroll[5]) + ".");
            AddGold(DBQ_LookItems(theChoice[4] + theScroll[4], ITEM_PRICE) * -theScroll[5]);
            AddStorage(theChoice[4] + theScroll[4], theScroll[5]);
            theScroll[5] = 1;
            theScroll[6] = 0;
            DisplayPrompt();
            fsm_enterState(stateLoop_Shop_1);
            return (state_next);
        } else {
            theScroll[6] = 0;
            fsm_enterState(stateLoop_Shop_2);
            return (state_next);
        }
    }

    return (state_continue);
}
