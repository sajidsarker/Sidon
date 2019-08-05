/// run_cutscene_a1_ch1_sc1()
{
    show_debug_message("Running Cutscene...");

    random_set_seed( current_time * current_time );
    
    var i, _actor;

    for ( i = 0; i < instance_number(CUnit); i++ ) {
        _actor[i] = instance_find( CUnit, i );
    }

    //_crawltext = "Early in the 21st Century, THE TYRELL CORPORATION advanced robot evolution into the NEXUS phase - a being virtually identical to a human - known as a Replicant. The NEXUS 6 Replicants were superior in strength and agility, and at least equal in intelligence, to the genetic engineers who created them.##Replicants were used Off-World as slave labor, in the hazardous exploration and colonization of other planets. After a bloody mutiny by a NEXUS 6 combat team in an Off-World colony, Replicants were declared illegal on earth - under penalty of death. Special police squads - BLADE RUNNER UNITS - had orders to shoot to kill, upon detection, any trespassing Replicant##This was not called execution.##It was called retirement.";
    _crawltext = "The age of enlightenment bestowed by God upon mankind in the Year of the Elephant had long since faded.##In this age of decline, the differences over which men fought grew unchecked until the people of the desert, once united, fractured into many tribes and were scattered across the sands.";
    _crawl = string_height_ext( _crawltext, -1, 250 );
    _pan = ScenePanner( 0, _actor[0].y - 3 * TILE_HEIGHT - Seconds(46) - 4 * (view_hview[0] + _crawl), 0, _actor[0].y - 3 * TILE_HEIGHT, 0 );

    SceneBegin();

    SceneTextCrawl("250_" + string(_crawltext) + "_white_black");

    SceneFade();

    SceneChangeTarget( _pan );
    SceneWait(6);
    SceneText( "32_32_5_[Publisher] Presents_black" );
    SceneWait(6);
    SceneText( "32_32_5_An Altitude Production_black" );
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
    /*
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
    */
    SceneBanner("BATTLE START!");
    SceneWait(0.05);

    SceneRun();
}
