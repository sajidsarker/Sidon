/// stateLoop_Inventory_3()
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
        fsm_enterState(stateLoop_Inventory_2);
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

    /*
    if (ds_list_size(Storage[INDEX]) < 1) {
        theChoice[3] = 0;
        theScroll[3] = 0;
    }
    */

    if (myInput.keyA
     or myInput.keyStart) {
        myInput.keyStart = false;
        myInput.keyA = false;
        if (ds_list_size(Storage[INDEX]) > 0) {
            if (theScroll[6] == 1) {
                BufferPrompt("0_Sold [" + DBQ_LookItems(ds_list_find_value(Storage[INDEX], theChoice[3] + theScroll[3]), NAME) + "] x" + string(theScroll[5]) + ".");
                AddGold(DBQ_LookItems(ds_list_find_value(Storage[INDEX], theChoice[3] + theScroll[3]), PRICE) * theScroll[5]);
                AddStorage(ds_list_find_value(Storage[INDEX], theChoice[3] + theScroll[3]), -theScroll[5]);
                theScroll[5] = 1;
                theScroll[6] = 0;
                if (theChoice[3] + theScroll[3] == ds_list_size(Storage[INDEX])) {
                    if (theChoice[3] > 0) {
                        theChoice[3] = max(theChoice[3] - 1, 0);
                    } else {
                        theScroll[3] = max(theScroll[3] - 1, 0);
                    }
                }
                DisplayPrompt();
                fsm_enterState(stateLoop_Inventory_1);
                return (state_next);
            } else {
                theScroll[6] = 0;
                fsm_enterState(stateLoop_Inventory_2);
                return (state_next);
            }
        }
    }

    return (state_continue);
}
