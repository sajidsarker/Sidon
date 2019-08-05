/// stateLoop_Chapter_1()
{
    if (instance_exists(CPrompt)) {
        fsm_enterState(stateSystem_Prompt);
        return (state_next);
    }

    // Input
    DetectInputDevice();

    if (myInput.keyB
     or myInput.keySelect) {
        x = ds_list_find_value(Node[0], LoadNode(theScroll[1] + theChoice[1]));
        y = ds_list_find_value(Node[1], LoadNode(theScroll[1] + theChoice[1])) + 100;
        audio_play_sound(res_snd_deny, 1, false);
        fsm_enterState(stateLoop_Update);
        return (state_next);
    }

    // Timer
    theTimer = max(0, theTimer - 1);

    var _u;

    _u = myInput.keyD - myInput.keyU;

    /*
    if (abs(_u) > 0) {
        if (theTimer == 0) {
            audio_play_sound(res_snd_cursor, 1, false);
            theChoice[1] = max(0, min(theChoice[1] + _u, ds_list_size(theMenu[1]) - 1));
            theTimer = room_speed * 0.1;
        }
    }
    */

    if (_u < 0) {
        if (theTimer == 0) {
            if (theChoice[1] == 0) {
                if (theScroll[1] > 0) {
                    theScroll[1]--;
                }
                theTimer = room_speed * 0.1;
            } else {
                audio_play_sound(res_snd_cursor, 1, false);
                theChoice[1]--;
                theTimer = room_speed * 0.1;
            }
        }
    }
    if (_u > 0) {
        if (theTimer == 0) {
            if (theChoice[1] == min(ds_list_size(theMenu[1]), 5) - 1) {
                if (theChoice[1] + theScroll[1] < ds_list_size(theMenu[1]) - 1) {
                    theScroll[1]++;
                }
                theTimer = room_speed * 0.1;
            } else {
                audio_play_sound(res_snd_cursor, 1, false);
                theChoice[1]++;
                theTimer = room_speed * 0.1;
            }
        }
    }

    x = ds_list_find_value(Node[0], LoadNode(theScroll[1] + theChoice[1])) + 224;
    y = ds_list_find_value(Node[1], LoadNode(theScroll[1] + theChoice[1])) + 124;
    theCounter = LoadNode(theScroll[1] + theChoice[1]);

    if (myInput.keyStart
     or myInput.keyA) {
        myInput.keyStart = false;
        myInput.keyA = false;
        /// Load Chapter Data
        LoadMap( theScroll[1] + theChoice[1] )
        //theMap = "map_1_" + string(theChoice[1] + 1) + ".dat";
        SaveGame();
        ds_list_destroy(Node[0]);
        ds_list_destroy(Node[1]);
        ds_list_destroy(Node[2]);
        audio_play_sound(res_snd_confirm, 1, false);
        room_goto(test_map);
        /*
        switch (ds_list_find_value(theMenu[1], theChoice[1])) {
            case "...":
                // Chapter Selection
            break;
        }
        */
    }

    return (state_continue);
}
