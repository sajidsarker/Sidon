/// stateSystem_Update()
{
    // Timer
    theTimer = max(0, theTimer - 1);

    // Cutscene Management
    switch ( myPhase ) {
        // Intro Cutscene
        case 0:
            script_execute( theMap[5] );
            script_execute( theMap[2] );
            CreateTurnOrder();
            myPhase++;
            fsm_enterState(stateScene_Update);
            return (state_next);

        // Spawn
        case 1:
            break;

        // Gameplay Loop
        case 2:
            if (keyboard_check_pressed(ord("B"))) {
                myPhase = 8;
            }
            break;

        // Outro Cutscene
        case 8:
            script_execute( theMap[3] );
            myPhase++;
            fsm_enterState(stateScene_Update);
            return (state_next);
        
        // Reward - Loot
        // Reward - Stats & Levelling
        // Save & Transition > Loop
        case 9:
            if (ds_list_size(Scene) == 0) {
                //SaveGame();
                room_goto(test_loop);
            }
        break;
    }

    /*
    if ( debugMe ) {
        if ( keyboard_check_pressed(ord("S")) ) {
            if ( CCursor.state_index != stateCursor_Command ) {
                if ( instance_number(CUnit) > 14 ) {
                    SceneChoiceActive = !SceneChoiceActive;
                } else {
                    SceneChoiceActive = false;
                    BufferPrompt("2_Please spawn a minimum of [15] NPC Actors.");
                    DisplayPrompt();
                }
            }
        }
        if ( SceneChoiceActive ) {
            if ( myInput.keyV < 0 ) {
                if ( theTimer == 0 ) {
                    if ( SceneChoice == 0 ) {
                        SceneCounter = max( 0, SceneCounter - 1 );
                        theTimer = room_speed * 0.1;
                    } else {
                        audio_play_sound(res_snd_cursor, 1, false);
                        SceneChoice--;
                        theTimer = room_speed * 0.1;
                    }
                }
            }
            if ( myInput.keyV > 0 ) {
                if ( theTimer == 0 ) {
                    if ( SceneChoice == min( 14, SceneCount - 1 ) ) {
                        if (SceneChoice + SceneCounter < SceneCount - 1) {
                            SceneCounter++;
                        }
                        theTimer = room_speed * 0.1;
                    } else {
                        audio_play_sound(res_snd_cursor, 1, false);
                        SceneChoice++;
                        theTimer = room_speed * 0.1;
                    }
                }
            }
            if ( myInput.keyA ) {
                switch ( SceneChoice + SceneCounter ) {
                    case 0:
                    run_cutscene_a1_ch1_sc1();
                    fsm_enterState(stateScene_Update);
                    return (state_next);

                    case 1:
                    run_cutscene_a1_ch1_sc2();
                    fsm_enterState(stateScene_Update);
                    return (state_next);
                }
            }
        }
    } else {
        SceneChoiceActive = false;
    }
    */

    if (ds_list_size(Scene) > 0) {
        fsm_enterState(stateScene_Update);
        return (state_next);
    }

    if (instance_exists(CPrompt)) {
        fsm_enterState(stateSystem_Prompt);
        return (state_next);
    }

    // Input
    DetectInputDevice();

    // Camera
    if ( CCursor.state_index != stateCursor_Status ) {
        ResetCamera(CCursor);
    }

    if (myInput.keyStart) {
        audio_play_sound(res_snd_deny, 1, false);
        fsm_enterState(stateSystem_Pause);
        return (state_next);
    }

    if (instance_exists(CCursor)) {
        if (myPhase > 1) {
            if (CCursor.state_index == stateCursor_Update) {
                if (myInput.keyX) {
                    turnScroll = 0;
                    turnChoice = turnCounter[0];
                    while (turnChoice >= min(ds_list_size(turnOrder)-1, 14)) {
                        turnChoice--;
                        turnScroll++;
                    }
                    audio_play_sound(res_snd_confirm, 1, false);
                    fsm_enterState(stateSystem_TurnOrder);
                    return (state_next);
                }
            }
        }
    }

    if (myInput.keySelect) {
        game_restart();
    }

    return (state_continue);
}
