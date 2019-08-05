/// stateSystem_Prompt()
{
    // Input
    DetectInputDevice();

    if (myInput.keyA) {
        if (instance_exists(CPrompt)) {
            if (CPrompt._id == PROMPT_DIALOGUE) {
                if (CPrompt.Counter != string_length(CPrompt.Content)) {
                    CPrompt.Counter = string_length(CPrompt.Content);
                } else {
                    with (CPrompt) {
                        instance_destroy();
                    }
                    DisplayPrompt();
                }
            } else {
                with (CPrompt) {
                    instance_destroy();
                }
                DisplayPrompt();
            }
        }
    }

    if (!instance_exists(CPrompt)) {
        fsm_enterState(prev_state);
        return (state_next);
    }

    return (state_continue);
}
