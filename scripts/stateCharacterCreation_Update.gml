/// stateCharacterCreation_Update()
{
    // Cutscene Management
    if (state_timer == 0) {
        if (cutscene_flag == false) {
            run_cutscene_intro();
            cutscene_flag = true;
            fsm_enterState(stateScene_Update);
            return (state_next);
        }
    }
    if (state_timer == room_speed * 3) {
        if (cutscene_flag == true) {
            room_goto(test_loop);
        }
    }

    if (instance_exists(CPrompt)) {
        fsm_enterState(stateSystem_Prompt);
        return (state_next);
    }

    // Input
    DetectInputDevice();

    // Camera
    ResetCamera(noone);

    return (state_continue);
}
