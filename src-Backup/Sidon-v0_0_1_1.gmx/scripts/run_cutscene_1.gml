/// run_cutscene_1()
{
    show_debug_message("Running Cutscene...");
    SceneBegin();
    SceneWait(1);
    SceneChangeTarget(instance_find(CUnit, 0));
    SceneSpeak("1_Macbeth_How now! what news?");
    SceneChangeTarget(instance_find(CUnit, 1));
    SceneSpeak("1_Lady Macbeth_He has almost supp’d. Why have you left the chamber?");
    SceneChangeTarget(instance_find(CUnit, 0));
    SceneSpeak("1_Macbeth_Hath he ask’d for me?");
    SceneChangeTarget(instance_find(CUnit, 1));
    SceneSpeak("1_Lady Macbeth_Know you not, he has?");
    SceneChangeTarget(instance_find(CUnit, 0));
    SceneSpeak("1_Macbeth_We will proceed no further in this business:
He hath honour’d me of late; and I have bought
Golden opinions from all sorts of people,
Which would be worn now in their newest gloss,
Not cast aside so soon.");
    //SceneWait(3);
    /*
    SceneChangeTarget(instance_find(CUnit, 2));
    SceneSpeak("1_Auddi_I want omelette pls. Pls. Promise? LOL. *farts*");
    SceneChangeTarget(instance_find(CUnit, 3));
    SceneSpeak("1_Pritto_You smell bad.");
    SceneChangeTarget(instance_find(CUnit, 0));
    SceneSpeak("1_Macbeth_I hate you peepol.");
    SceneChangeTarget(instance_find(CUnit, 3));
    SceneSpeak("1_Pritto_You farted!");
    SceneChangeTarget(instance_find(CUnit, 2));
    SceneSpeak("1_Auddi_NUHHHHH!");
    SceneChangeTarget(instance_find(CUnit, 0));
    SceneSpeak("1_Macbeth_I can smell it from here.");
    SceneChangeTarget(instance_find(CUnit, 1));
    SceneSpeak("1_Lady Macbeth_I can smell it from here.");
    SceneChangeTarget(instance_find(CUnit, 3));
    SceneSpeak("1_Pritto_Ador bhaiya will have to clean all the tiles and make them white now.");
    SceneWait(1);
    */
    SceneRun();
}
