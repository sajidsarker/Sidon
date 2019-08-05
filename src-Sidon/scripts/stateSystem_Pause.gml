/// stateSystem_Pause()
{
    if (instance_exists(CPrompt)) {
        fsm_enterState(stateSystem_Prompt);
        return (state_next);
    }

    // Input
    DetectInputDevice();

    if (myInput.keyStart) {
        audio_play_sound(res_snd_deny, 1, false);
        fsm_enterState(stateSystem_Update);
        return (state_next);
    }

    return (state_continue);
}
