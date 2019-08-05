/// stateScene_Update()
{
    show_debug_message("Entered Cutscene State...");

    // Input
    DetectInputDevice();

    if (ds_list_size(Scene) < 1) {
        SceneEnd();
        if (instance_exists(CCharacterCreation)) {
            fsm_enterState(stateCharacterCreation_Update);
        }
        if (instance_exists(CGame)) {
            fsm_enterState(stateSystem_Update);
        }
        return (state_next);
    }

    show_debug_message("Continuing Cutscene State...");

    if (instance_exists(CPrompt)) {
        show_debug_message("Cutscene Paused for Dialogue...");
        fsm_enterState(stateSystem_Prompt);
        return (state_next);
    }

    if (SceneTimer != 0) {
        SceneTimer--;
        return (state_continue);
    }

    switch (Extract(Scene[| 0], 0, "_")) {
        case "WAIT":
            SceneTimer = real(Extract(Scene[| 0], 1, "_"));
            ds_list_delete(Scene, 0);
        return (state_continue);

        case "SPEAK":
            BufferPrompt(string_replace(Scene[| 0], "SPEAK_", ""));
            DisplayPrompt();
            SceneTimer = 1;
            ds_list_delete(Scene, 0);
        return (state_continue);

        case "NOTIFY":
            BufferPrompt(string_replace(Scene[| 0], "NOTIFY_", ""));
            DisplayPrompt();
            SceneTimer = 1;
            ds_list_delete(Scene, 0);
        return (state_continue);

        case "CBG":
            background_index[0] = Extract(Scene[| 0], 1, "_");
            SceneTimer = 1;
            ds_list_delete(Scene, 0);
        return (state_continue);

        case "CSPRITE":
            var o = Extract(Scene[| 0], 1, "_");
                o.sprite_index = Extract(Scene[| 0], 2, "_");
                o.image_index = 0;
            SceneTimer = o.image_number;
            ds_list_delete(Scene, 0);
        return (state_continue);

        case "CFACING":
            var o = Extract(Scene[| 0], 1, "_");
                o.direction = Extract(Scene[| 0], 2, "_");
            SceneTimer = 1;
            ds_list_delete(Scene, 0);
        return (state_continue);

        case "CTARGET":
            ResetCamera(Extract(Scene[| 0], 1, "_"));
            SceneTimer = 1;
            ds_list_delete(Scene, 0);
        return (state_continue);
    }

    return (state_continue);
}
