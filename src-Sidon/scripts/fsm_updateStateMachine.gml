/// fsm_updateStateMachine(state)
{
    var _state;
    _state = script_execute(state_index);

    while (_state == state_nextnow) {
        state_index = next_state;
        state_timer = 0;
        _state = script_execute(state_index);
        if (_state == state_repeat) {
            break;
        }
    }
    
    while (_state == state_repeat) {
        _state = script_execute(state_index);
        if (_state == state_nextnow) {
            state_index = next_state;
            state_timer = 0;
            script_execute(StateMachine);
            exit;
        }
        state_timer += 1;
    }

    if (_state == state_next) {
        state_index = next_state;
        state_timer = 0;
    }

    if (_state == state_continue) {
        state_timer += 1;
    }
}
