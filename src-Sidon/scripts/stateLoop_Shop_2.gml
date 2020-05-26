/// stateLoop_Shop_2()
{
    if ( instance_exists( CPrompt ) ) {
        fsm_enterState( stateSystem_Prompt );
        return ( state_next );
    }

    // Input
    DetectInputDevice();

    if ( myInput.keyB
      or myInput.keySelect ) {
        theScroll[5] = 1;
        audio_play_sound(res_snd_deny, 1, false);
        fsm_enterState( stateLoop_Shop_1 );
        return ( state_next );
    }

    // Timer
    theTimer = max(0, theTimer - 1);

    var _u, _v;

    _u = myInput.keyD - myInput.keyU;
    _v = myInput.keyR - myInput.keyL;

    if (abs(_u) + abs(_v) > 0) {
        if ( theTimer == 0 ) {
            var peek = PeekStorage( theChoice[4] + theScroll[4] );
            var thePrice = DBQ_LookItems( theChoice[4] + theScroll[4], ITEM_PRICE );

            if ( peek > -1 ) {
                var theMax = min( 99 - ds_list_find_value( Storage[QUANTITY], ds_list_find_index( Storage[ITEM_ID], theChoice[4] + theScroll[4] ) ), floor( Storage[GOLD] / thePrice ) );
                //var theMax = min( 99, floor( Storage[GOLD] / thePrice ) - ds_list_find_value( Storage[QUANTITY], theChoice[4] + theScroll[4] ) );
                //var theMax = 99 - max(ds_list_find_value(Storage[QUANTITY], ds_list_find_index(Storage[ITEM_ID], theChoice[4] + theScroll[4])), floor(Storage[GOLD] / thePrice));
            } else {
                var theMax = min( 99, floor( Storage[GOLD] / thePrice ) );
            }
            //var theMax = min( 99, floor( Storage[GOLD] / thePrice ) );
            theScroll[5] = max(1, min(theScroll[5] - _u + _v * 10, min(theMax, 99)));
            audio_play_sound(res_snd_cursor, 1, false);
            theTimer = room_speed * 0.1;
        }
    }

    if (myInput.keyA
     or myInput.keyStart) {
        myInput.keyStart = false;
        myInput.keyA = false;
        audio_play_sound(res_snd_confirm, 1, false);
        fsm_enterState(stateLoop_Shop_3);
        return (state_next);
    }

    return (state_continue);
}
