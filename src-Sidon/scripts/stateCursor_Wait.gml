/// stateCursor_Wait()
{
    if (CGame.state_index != stateSystem_Update) {
        return (state_continue);
    }


    // Timer
    theTimer = max(0, theTimer - 1);

    // Scrolling
    if (theTimer == 0) {

        var _u, _v;
        _u = myInput.keyH;
        _v = myInput.keyV;

        if (abs(_u) + abs(_v) > 0) {
            if (_u < 0) {
                direction = 180;
            }
            if (_u > 0) {
                direction = 0;
            }
            if (_v < 0) {
                direction = 90;
            }
            if (_v > 0) {
                direction = 270;
            }

            _u = 0;
            _v = 0;
            
            isSelected[0].direction = direction;

            audio_play_sound(res_snd_cursor, 1, false);

            theTimer = room_speed * 0.1;
        }

    }

    // Selection
    if (myInput.keyA) {
        myInput.keyA = false;
        isSelected[0].direction = direction;
        fsm_enterState(stateCursor_Command);
        return (state_next);
    }

    // Deselection
    if (myInput.keyB) {
        myInput.keyB = false;
    }

    return (state_continue);
}
