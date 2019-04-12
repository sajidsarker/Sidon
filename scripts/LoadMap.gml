/// LoadMap(chapter)
{
    switch ( argument0 ) {
        case 0:
            theMap[0] = "Jebel Qarab";
            theMap[1] = "map_1_5.txt";
            theMap[2] = run_cutscene_a1_ch1_sc1;    // Intro Cutscene
            theMap[3] = run_cutscene_a1_ch1_sc2;    // Outro Cutscene
            theMap[4] = run_cutscene_intro;         // Conditional Cutscene
            theMap[5] = spawn_cutscene_a1_ch1_sc1;  // Spawn List
            theMap[6] = 12;  // Cursor X
            theMap[7] = 12;  // Cursor Y
        break;

        case 1:
            theMap[0] = "Jebel Qarab";
            theMap[1] = "map_1_2.txt";
            theMap[2] = run_cutscene_a1_ch1_sc1;    // Intro Cutscene
            theMap[3] = run_cutscene_a1_ch1_sc2;    // Outro Cutscene
            theMap[4] = run_cutscene_intro;         // Conditional Cutscene
            theMap[5] = spawn_cutscene_a1_ch1_sc1;  // Spawn List
            theMap[6] = 0;  // Cursor X
            theMap[7] = 0;  // Cursor Y
        break;

        case 2:
            theMap[0] = "Jebel Qarab";
            theMap[1] = "map_1_3.txt";
            theMap[2] = run_cutscene_a1_ch1_sc1;    // Intro Cutscene
            theMap[3] = run_cutscene_a1_ch1_sc2;    // Outro Cutscene
            theMap[4] = run_cutscene_intro;         // Conditional Cutscene
            theMap[5] = spawn_cutscene_a1_ch1_sc1;  // Spawn List
            theMap[6] = 0;  // Cursor X
            theMap[7] = 0;  // Cursor Y
        break;

        case 3:
            theMap[0] = "Jebel Qarab";
            theMap[1] = "map_1_4.txt";
            theMap[2] = run_cutscene_a1_ch1_sc1;    // Intro Cutscene
            theMap[3] = run_cutscene_a1_ch1_sc2;    // Outro Cutscene
            theMap[4] = run_cutscene_intro;         // Conditional Cutscene
            theMap[5] = spawn_cutscene_a1_ch1_sc1;  // Spawn List
            theMap[6] = 0;  // Cursor X
            theMap[7] = 0;  // Cursor Y
        break;

        case 4:
            theMap[0] = "Jebel Qarab";
            theMap[1] = "map_1_5.txt";
            theMap[2] = run_cutscene_a1_ch1_sc1;    // Intro Cutscene
            theMap[3] = run_cutscene_a1_ch1_sc2;    // Outro Cutscene
            theMap[4] = run_cutscene_intro;         // Conditional Cutscene
            theMap[5] = spawn_cutscene_a1_ch1_sc1;  // Spawn List
            theMap[6] = 0;  // Cursor X
            theMap[7] = 0;  // Cursor Y
        break;
    }
}
