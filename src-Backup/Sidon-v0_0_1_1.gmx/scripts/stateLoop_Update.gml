/// stateLoop_Update()
{
    if (instance_exists(CPrompt)) {
        fsm_enterState(stateSystem_Prompt);
        return (state_next);
    }

    // Timer
    theTimer = max(0, theTimer - 1);

    var _u, _v;

    _u = myInput.keyD - myInput.keyU;
    _v = myInput.keyR - myInput.keyL;

    if (abs(_u) > 0) {
        if (theTimer == 0) {
            audio_play_sound(res_snd_cursor, 1, false);
            theChoice[0] = max(0, min(theChoice[0] + _u, ds_list_size(theMenu[0]) - 1));
            theTimer = room_speed * 0.1;
        }
    }

    if (abs(_v) > 0) {
        if (theTimer == 0) {
            audio_play_sound(res_snd_cursor, 1, false);
            theCounter = max(0, min(theCounter + _v, ds_list_size(Node[0]) - 1));
            x = ds_list_find_value(Node[0], theCounter);
            y = ds_list_find_value(Node[1], theCounter) + 100;
            theTimer = room_speed * 0.2;
        }
    }

    if (myInput.keyStart
     or myInput.keyA) {
        switch (ds_list_find_value(theMenu[0], theChoice[0])) {
            case "Chapter":
                myInput.keyStart = false;
                myInput.keyA = false;
                fsm_enterState(stateLoop_Chapter_1);
                return (state_next);
            break;

            case "Armoury":
                myInput.keyStart = false;
                myInput.keyA = false;
                fsm_enterState(stateLoop_Inventory_1);
                return (state_next);
            break;

            case "Shop":
                myInput.keyStart = false;
                myInput.keyA = false;
                fsm_enterState(stateLoop_Shop_1);
                return (state_next);
            break;

            case "Save & Quit":
                myInput.keyStart = false;
                myInput.keyA = false;
                SaveGame();
                room_goto(test_mainmenu);
            break;
        }
    }

    return (state_continue);
}