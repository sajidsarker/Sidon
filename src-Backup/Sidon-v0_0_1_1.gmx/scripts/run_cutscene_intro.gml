/// run_cutscene_intro()
{
    show_debug_message("Running Cutscene...");
    SceneBegin();
    SceneWait(3);
    //SceneChangeTarget(instance_find(CUnit, 0));
    SceneSpeak("1_ _In days long dead, there lasted for a time a nation of people of great magical endowment. Indeed, they were the FIRST ONES.");
    SceneWait(1);
    SceneSpeak("1_ _This was before ever our fathers spread across lands, building great temples to the Creator.");
    SceneWait(2);
    SceneSpeak("1_ _It is said that when the sun had been swallowed for seven days and seven nights, a great calamity befell the nation.");
    SceneWait(1);
    SceneSpeak("1_ _A shadow reaching from the edges of this world. A shadow steeped in hatred and malice at the piety of the nation.");
    SceneWait(1);
    SceneSpeak("1_ _In the darkness, this shadow spread its dark will, and the FIRST succumbed to a terrible madness.");
    SceneWait(1);
    SceneSpeak("1_ _When the sun shone again, their tallest towers and hallowed halls had returned to dust.");
    SceneWait(2);
    SceneSpeak("1_ _The shadow vanished, not to been seen for an age. The far-seeing among men anticipate its return in dreams.");
    SceneWait(1);
    SceneSpeak("1_ _Dead dreams of eons past.");
    SceneWait(1);
    SceneSpeak("1_ _For it is GANON, and it will strike once more at the gladness of mankind.");
    //SceneWait(3);
    SceneRun();
}
