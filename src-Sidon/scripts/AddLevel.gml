/// AddLevel(unit_id)
{
    argument0.BaseStats[XP] -= 100;
    argument0.BaseStats[LV]++;

    var i, j, t;

    t = "";

    for ( i = HP; i <= RES; i++) {
        if ( i != XP ) {
            j = GetRole(argument0.BaseStats[ROLE], i, 1);

            argument0.BaseStats[i] += j - frac(j);

            if (irandom_range(0, 9) < frac(j) * 10) {
                argument0.BaseStats[i]++;
                t += "#" + GetStat(i) + " +" + string(j - frac(j) + 1);
            }
        }
    }

    if (argument0.BaseStats[XP] < 0) {
        argument0.BaseStats[XP] = 0;
    }
    
    /*
    */
    with (CGame) {
        SceneNotify( "2_" + string(argument0.BaseStats[NAME]) + " levelled up to LV. " + string(argument0.BaseStats[LV]) + "!##" + t );
    }

    if (argument0.BaseStats[XP] > 99) {
        AddLevel(argument0);
    }
}
