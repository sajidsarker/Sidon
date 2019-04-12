/// DisplayPrompt()
{
    if (room == test_charactercreation) {
        if (ds_list_size(CCharacterCreation.myCache) < 1) {
            exit;
        }
    }
    if (room == test_loop) {
        if (ds_list_size(CLoop.myCache) < 1) {
            exit;
        }
    }
    if (room == test_map) {
        if (ds_list_size(CGame.myCache) < 1) {
            exit;
        }
    }

    if (room == test_charactercreation) {
        switch (real(Extract(CCharacterCreation.myCache[| 0], 0, "_"))) {
            case PROMPT_MESSAGE:
                if (!instance_exists(CPrompt)) {
                    var o;
    
                    o = instance_create(0, 0, CPrompt);
                    o._id = PROMPT_MESSAGE;
                    o.Content = myCache[| 0];
                    o.Content = string_replace(o.Content, "0_", "");
    
                    ds_list_delete(myCache, 0);
                    io_clear();
                }
            break;
    
            case PROMPT_DIALOGUE:
                if (!instance_exists(CPrompt)) {
                    var o;
    
                    o = instance_create(0, 0, CPrompt);
                    o._id = PROMPT_DIALOGUE;
                    o.Name = Extract(myCache[| 0], 1, "_");
                    o.Content = Extract(myCache[| 0], 2, "_");
                    o.Counter = 0;
    
                    ds_list_delete(myCache, 0);
                    io_clear();
                }
            break;
    
            case PROMPT_NOTIFICATION:
                if (!instance_exists(CPrompt)) {
                    var o;
    
                    o = instance_create(0, 0, CPrompt);
                    o._id = PROMPT_NOTIFICATION;
                    o.Content = myCache[| 0];
                    o.Content = string_replace(o.Content, "2_", "");
    
                    ds_list_delete(myCache, 0);
                    io_clear();
                }
            break;
        }
    }

    if (room == test_loop) {
        switch (real(Extract(CLoop.myCache[| 0], 0, "_"))) {
            case PROMPT_MESSAGE:
                if (!instance_exists(CPrompt)) {
                    var o;
    
                    o = instance_create(0, 0, CPrompt);
                    o._id = PROMPT_MESSAGE;
                    o.Content = myCache[| 0];
                    o.Content = string_replace(o.Content, "0_", "");
    
                    ds_list_delete(myCache, 0);
                    io_clear();
                }
            break;
    
            case PROMPT_DIALOGUE:
                if (!instance_exists(CPrompt)) {
                    var o;
    
                    o = instance_create(0, 0, CPrompt);
                    o._id = PROMPT_DIALOGUE;
                    o.Name = Extract(myCache[| 0], 1, "_");
                    o.Content = Extract(myCache[| 0], 2, "_");
                    o.Counter = 0;
    
                    ds_list_delete(myCache, 0);
                    io_clear();
                }
            break;
    
            case PROMPT_NOTIFICATION:
                if (!instance_exists(CPrompt)) {
                    var o;
    
                    o = instance_create(0, 0, CPrompt);
                    o._id = PROMPT_NOTIFICATION;
                    o.Content = myCache[| 0];
                    o.Content = string_replace(o.Content, "2_", "");
    
                    ds_list_delete(myCache, 0);
                    io_clear();
                }
            break;
        }
    }

    if (room == test_map) {
        switch (real(Extract(CGame.myCache[| 0], 0, "_"))) {
            case PROMPT_MESSAGE:
                if (!instance_exists(CPrompt)) {
                    var o;
    
                    o = instance_create(0, 0, CPrompt);
                    o._id = PROMPT_MESSAGE;
                    o.Content = myCache[| 0];
                    o.Content = string_replace(o.Content, "0_", "");
    
                    ds_list_delete(myCache, 0);
                    io_clear();
                }
            break;
    
            case PROMPT_DIALOGUE:
                if (!instance_exists(CPrompt)) {
                    var o;
    
                    o = instance_create(0, 0, CPrompt);
                    o._id = PROMPT_DIALOGUE;
                    o.Name = Extract(myCache[| 0], 1, "_");
                    o.Content = Extract(myCache[| 0], 2, "_");
                    o.Counter = 0;
    
                    ds_list_delete(myCache, 0);
                    io_clear();
                }
            break;
    
            case PROMPT_NOTIFICATION:
                if (!instance_exists(CPrompt)) {
                    var o;
    
                    o = instance_create(0, 0, CPrompt);
                    o._id = PROMPT_NOTIFICATION;
                    o.Content = myCache[| 0];
                    o.Content = string_replace(o.Content, "2_", "");
    
                    ds_list_delete(myCache, 0);
                    io_clear();
                }
            break;
        }
    }
}
