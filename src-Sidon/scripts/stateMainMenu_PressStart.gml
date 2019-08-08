///stateMainMenu_PressStart()
{
    // Input
    DetectInputDevice();

    if (myInput.keyStart
     or myInput.keyA) {
        //audio_play_sound(res_snd_cursor, 1, false);
        fsm_enterState(stateMainMenu_Update);
        return (state_next);
    }

    return (state_continue);
}
