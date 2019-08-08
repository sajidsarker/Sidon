/// stateLoop_Roster_5()
{
    // Bio
    if (instance_exists(CPrompt)) {
        fsm_enterState(stateSystem_Prompt);
        return (state_next);
    }

    // Input
    DetectInputDevice();

    if (myInput.keyB
     or myInput.keySelect) {
        theScroll[5] = 1;
        theScroll[6] = 0;
        fsm_enterState(stateLoop_Roster_1);
        return (state_next);
    }

    // Timer
    theTimer = max(0, theTimer - 1);

    return (state_continue);
}
