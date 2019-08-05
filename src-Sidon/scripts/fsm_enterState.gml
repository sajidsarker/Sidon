/// fsm_enterState(state)
{
    prev_state = state_index;
    fsm_exitState(state_index);
    next_state = argument0;

    switch (argument0)
    {
        /* System */
        case stateSystem_Update:
        break;

        case stateSystem_Pause:
        break;
    }
}
