///stateMainMenu_Credits()
{
    // Input
    DetectInputDevice();

    if (myInput.keyB
     or myInput.keySelect) {
        audio_play_sound(res_snd_deny, 1, false);
        fsm_enterState(prev_state);
        return (state_next);
    }

    return (state_continue);
}
