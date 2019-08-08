/// run_cutscene_a1_ch1_sc2()
{
    show_debug_message("Running Cutscene...");

    random_set_seed( current_time * current_time );
    
    var i, _actor;

    for ( i = 0; i < instance_number(CUnit); i++ ) {
        _actor[i] = instance_find( CUnit, i );
    }

    _pan = ScenePanner( 0, _actor[0].y - Seconds(24), 0, _actor[0].y, 0 );

    SceneBegin();

    SceneFade();

    SceneChangeTarget( _pan );
    SceneWait(6);
    SceneText( "32_32_5_Altitude Presents_black" );
    SceneWait(6);
    SceneText( "32_32_5_A Sajid Sarker Game_black" );
    SceneWait(6);
    SceneText( "32_32_6_SIDON_black" );
    SceneWait(10);
    SceneChangeTarget( _actor[0] );
    SceneMove( string( _actor[0] ) + "_20_19_1_ " );
    SceneMove( string( _actor[1] ) + "_19_18_1_ " );
    SceneMove( string( _actor[2] ) + "_20_18_1_ " );
    SceneMove( string( _actor[3] ) + "_21_18_1_" );
    SceneWait(2);
    SceneChangeTarget( _actor[3] );
    SceneSpeak( "1_Abel_I didn’t expect you to be with the sheep today." );
    SceneSpeak( "1_Abel_The womenfolk didn’t want you around “helping”, did they?" );
    SceneWait(1);
    SceneChangeTarget( _actor[0] );
    SceneSpeak( "1_Sidonis_Asma said I’d just get in the way." );
    SceneChangeTarget( _actor[3] );
    SceneSpeak( "1_Abel_She’s right too. You really would not want to get in the way of a new bride." );
    SceneChangeTarget( _actor[0] );
    SceneSpeak( "1_Sidonis_Father has enough hands tending the fire." );
    SceneChangeTarget( _actor[3] );
    SceneSpeak( "1_Abel_I suppose when you have everything, you are sufficed the need to toil." );
    SceneWait(3);
    SceneChangeTarget( _actor[0] );
    SceneSpeak( "1_Sidonis_Abel, I had a dream last night." );
    SceneWait(1);
    SceneChangeTarget( _actor[3] );
    SceneSpeak( "1_Abel_Of portent?" );
    SceneWait(1);
    SceneChangeTarget( _actor[0] );
    SceneSpeak( "1_Sidonis_I dreamed I clung to an old pillar. It was sturdy and steadfast and reached the heavens." );
    SceneSpeak( "1_Sidonis_Yet I was afraid that if I let go, it would topple. I was struck with fear by what would happen if I did not cling to it." );
    SceneWait(1);
    SceneSpeak( "1_Sidonis_I dreamed of a voice that spoke unto me: Surely this pillar will support itself, and you, and those like unto you." );
    SceneWait(1);
    SceneSpeak( "1_Sidonis_But if you hold fear in your heart, then gather from many nations, mixed clay, with which you may strengthen its foundations." );
    SceneWait(1);
    SceneSpeak( "1_Sidonis_I dreamed in that moment a sandstorm brew around me. Yet I let go. When the sands settled after a while, I found the pillar stood as it was, cracked and weathered." );
    SceneWait(3);
    SceneChangeTarget( _actor[3] );
    SceneSpeak( "1_Abel_Praise be to our Lord." );
    SceneChangeTarget( _actor[0] );
    SceneWait(1);
    SceneMove( string( _actor[0] ) + "_20_20_1_" );
    SceneWait(1);
    SceneSpeak( "1_Sidonis_I have decided. I will ask father tonight." );
    SceneMove( string( _actor[3] ) + "_21_20_1_" );
    SceneSpeak( "1_Abel_Tonight?" );
    SceneSpeak( "1_Sidonis_Tonight, he will be granting boons." );
    SceneWait(1);
    SceneChangeTarget( _actor[3] );
    SceneSpeak( "1_Abel_A hefty boon you seek at the feet of my Master. You are sure he will grant it?" );
    SceneWait(2);
    SceneChangeTarget( _actor[0] );
    SceneSpeak( "1_Sidonis_God willing." );
    SceneWait(2);

    SceneRun();
}
