/// stateLoop_Roster_3()
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
        theScroll[5] = 1;
        fsm_enterState(stateLoop_Roster_1);
        return (state_next);
    }

    // Timer
    theTimer = max(0, theTimer - 1);

    var _u;

    _u = myInput.keyD - myInput.keyU;

    if (abs(_u) > 0) {
        if (theTimer == 0) {
            theScroll[6] = max(0, min(theScroll[6] + _u, 2));
            audio_play_sound(res_snd_cursor, 1, false);
            theTimer = room_speed * 0.1;
        }
    }

    if (myInput.keyStart
     or myInput.keyA) {
        myInput.keyStart = false;
        myInput.keyA = false;
        temp_equipment = ds_list_create();
        switch (theScroll[6]) {
            // Weapons
            case 0:
                theScroll[5] = 0;
                theScroll[6] = 0;
                ds_list_add(temp_equipment, -1);
                for (var i = 0; i < ds_list_size(Storage[ITEM_ID]); i++) {
                    if (DBQ_CompatibleWeapons(ds_list_find_value(Storage[ITEM_ID], i), CClan.theClan[# ROLE, theScroll[2] + theChoice[2]])) {
                        ds_list_add(temp_equipment, ds_list_find_value(Storage[ITEM_ID], i));
                    }
                }
                fsm_enterState(stateLoop_Roster_3a);
                return (state_next);
            break;

            // Armour
            case 1:
                theScroll[5] = 0;
                theScroll[6] = 0;
                ds_list_add(temp_equipment, -1);
                for (var i = 0; i < ds_list_size(Storage[ITEM_ID]); i++) {
                    if (DBQ_CompatibleEquipment(ds_list_find_value(Storage[ITEM_ID], i), CClan.theClan[# ROLE, theScroll[2] + theChoice[2]])) {
                        ds_list_add(temp_equipment, ds_list_find_value(Storage[ITEM_ID], i));
                    }
                }
                fsm_enterState(stateLoop_Roster_3b);
                return (state_next);
            break;

            // Lady's Favour
            case 2:
                //theScroll[5] = 0;
                //theScroll[6] = 0;
                for (var i = 0; i < ds_list_size(Storage[ITEM_ID]); i++) {
                    //if (DBQ_CompatibleEquipment(ds_list_find_value(Storage[ITEM_ID], i), CClan.theClan[# ROLE, theScroll[2] + theChoice[2]])) {
                        //ds_list_add(temp_equipment, ds_list_find_value(Storage[ITEM_ID], i));
                    //}
                }
            break;
        }
    }

    return (state_continue);
}
