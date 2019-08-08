/// DrawUnitInfo(id1)
{
    draw_set_colour( c_black );
    draw_set_alpha( 0.8 );

    draw_rectangle( 0, view_hview[0] - 64, view_wview[0], view_hview[0] - 32, false );
    
    for ( var i = 0; i < 3; i++ ) {
        draw_sprite( res_spr_ui5, 0, 16 + 100 * i + 8 * i, view_hview[0] - 48 );
    }
    if ( argument0.myFaction != 99 ) {
        DrawValueColour( 16, view_hview[0] - 64, 32, argument0.HitPoints, c_white );
        DrawValueColour( 48, view_hview[0] - 64, 32, argument0.AbilityPoints, c_white );
        DrawValueColour( 80, view_hview[0] - 64, 32, argument0.ExperiencePoints, c_white );
    }

    draw_set_colour( c_white );
    draw_set_alpha( 1 );
}
