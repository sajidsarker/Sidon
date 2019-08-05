/// stateSystem_Update()
{
    // Cutscene Management
    if (keyboard_check_pressed(vk_space)) {
        if (instance_number(CUnit) > 3) {
            run_cutscene_1();
            fsm_enterState(stateScene_Update);
            return (state_next);
        } else {
            BufferPrompt("2_Please spawn [4] NPC Actors.");
            DisplayPrompt();
        }
    }

    if (instance_exists(CPrompt)) {
        fsm_enterState(stateSystem_Prompt);
        return (state_next);
    }

    // Input
    DetectInputDevice();

    // Camera
    ResetCamera(CCursor);

    if (myInput.keyStart) {
        fsm_enterState(stateSystem_Pause);
        return (state_next);
    }

    if (myInput.keySelect) {
        game_restart();
    }

    return (state_continue);
}
