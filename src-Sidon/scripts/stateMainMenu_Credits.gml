///stateMainMenu_Credits()
{
    // Input
    DetectInputDevice();

    if (myInput.keyB
     or myInput.keySelect) {
        fsm_enterState(prev_state);
        return (state_next);
    }

    return (state_continue);
}
