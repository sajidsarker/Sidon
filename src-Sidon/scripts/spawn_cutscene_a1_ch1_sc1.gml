/// spawn_cutscene_a1_ch1_sc1()
{
    // Ally
    SpawnUnit( 8, 8, 3, 0, 0 );
    SpawnUnit( 8, 7, 3, 0, 1 );
    SpawnUnit( 8, 9, 3, 0, 2 );
    SpawnUnit( 9, 8, 3, 0, 3 );
    SpawnUnit( 9, 9, 3, 0, 4 );
    // Enemy
    SpawnUnit( 10, 10, 3, 1, 0 );
    SpawnUnit( 10,  9, 3, 1, 1 );
    SpawnUnit( 10, 11, 3, 1, 2 );
    SpawnUnit( 11,  9, 3, 1, 3 );
    SpawnUnit( 11, 11, 3, 1, 4 );
    // Constructs
    ConstructUnit( 9, 15, 3, "Uqab", res_spr_unit );

    // Props
    SpawnWorldObject(4, 16, choose(res_spr_tree, res_spr_crate));
    SpawnWorldObject(2, 17, choose(res_spr_tree, res_spr_crate));
    SpawnWorldObject(3, 17, choose(res_spr_tree, res_spr_crate));
    // Put in mapdata file?
}
