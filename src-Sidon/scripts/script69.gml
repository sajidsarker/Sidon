/// stateSystem_Update()
{
    // Cutscene Management
    if (keyboard_check_pressed(vk_space)) {
        run_cutscene_1();
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
    ResetCamera(CCursor);

    return (state_continue);
}
