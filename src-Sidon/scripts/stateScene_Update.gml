/// stateScene_Update()
{
    //show_debug_message("Entered Cutscene State...");

    // Input
    DetectInputDevice();

    if (ds_list_size(Scene) < 1) {
        SceneEnd();
        if (instance_exists(CGame)) {
            fsm_enterState(stateSystem_Update);
        }
        return (state_next);
    }

    //show_debug_message("Continuing Cutscene State...");

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

        case "SPAWNACTOR":
            SpawnUnit(real(Extract(Scene[| 0], 1, "_")),
                      real(Extract(Scene[| 0], 2, "_")),
                      real(Extract(Scene[| 0], 3, "_")), 99, 0);
            SceneTimer = 1;
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

        case "FADE":
            instance_create(0, 0, TFadeIn);
            SceneTimer = 1;
            ds_list_delete(Scene, 0);
        return (state_continue);

        case "TEXT":
            var r, s, c;
            r = real( Extract(Scene[| 0], 1, "_") );
            s = real( Extract(Scene[| 0], 2, "_") );
            c = instance_create(r, s, TText);
            c.theText   = Extract(Scene[| 0], 4, "_");
            c.theColour = real( "c_" + string(Extract(Scene[| 0], 5, "_")) );
            c.theTimer  = Seconds( real( Extract(Scene[| 0], 3, "_") ) );
            SceneTimer = 1;
            ds_list_delete(Scene, 0);
        return (state_continue);

        case "TEXTCRAWL":
            var c;
            c = instance_create( view_wview[0] * 0.5, view_hview[0] + Seconds(2), TTextCrawl);
            c.theText   = Extract(Scene[| 0], 2, "_");
            if ( string(Extract(Scene[| 0], 3, "_")) != "-1" ) {
                c.theColour = real( "c_" + string(Extract(Scene[| 0], 3, "_")) );
                c.theBGColour = real( "c_" + string(Extract(Scene[| 0], 4, "_")) );
            } else {
                c.theColour = c_black;
                c.theBGColour = -1;
            }
            c.theWidth = real( Extract(Scene[| 0], 1, "_") );
            SceneTimer = Seconds(16) + 4 * ( view_hview[0] + string_height_ext( c.theText, -1, c.theWidth ) );
            ds_list_delete(Scene, 0);
        return (state_continue);

        case "BANNER":
            var c = instance_create(0, 0, TBanner);
            c.theText = Extract(Scene[| 0], 1, "_");
            SceneTimer = Seconds(8);
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
            /*
            var      _n = Extract(Scene[| 0], 1, "_");
            var _target = Extract(Scene[| 0], 1, "_");
            if (_n < 50) {
                _target = instance_find(CUnit, _n);
            }
            */
            var _target = Extract(Scene[| 0], 1, "_");
            ResetCamera(_target);
            SceneTimer = 1;
            ds_list_delete(Scene, 0);
        return (state_continue);

        case "CMOVE":
            var o = real( Extract(Scene[| 0], 1, "_") );

            if ( Extract( Scene[| 0], 2, "_" ) != "null" ) {
                var _o, _x1, _y1, _x2, _y2;
                _o  = real( Extract( Scene[| 0], 1, "_" ) );
                _x1 = CoordToIsoX(_o.x, _o.y);
                _y1 = CoordToIsoY(_o.x, _o.y);
                _x2 = real( Extract( Scene[| 0], 2, "_" ) );
                _y2 = real( Extract( Scene[| 0], 3, "_" ) );
                _sp = real( Extract( Scene[| 0], 4, "_" ) );
                GenerateSceneMovement( ds_grid_get( CMap.myMap[TILE_MAP], _x1, _y1 ) );
                o = GenerateScenePath( _x1, _y1, _x2, _y2, _o, _sp );
                ds_grid_set(CMap.myMap[ENTITY_MAP], _x1, _y1, noone);
                ds_grid_set(CMap.myMap[ENTITY_MAP], _x2, _y2, _o);
                UpdateMap(TILE_MAP, 0);
                UpdateMap(TILE_MAP, 1);
            }

            if ( Extract( Scene[| 0], 2, "_" ) == "null" ) {
                o = real( Extract( Scene[| 0], 1, "_" ) );
                SceneTimer = ceil(abs(o));
            } else {
                if ( Extract( Scene[| 0], 5, "_" ) == "" ) {
                    SceneTimer = ceil(abs(o));
                } else {
                    SceneTimer = 1;
                }
            }
            ds_list_delete(Scene, 0);
        return (state_continue);
    }

    return (state_continue);
}
