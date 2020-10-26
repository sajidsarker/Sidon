/// AddLV(clan_id)
{
    CClan.theClan[# XP, argument0] -= 100;
    CClan.theClan[# LV, argument0]++;

    var i, j;

    for (i=HP; i<=RES; i++) {
        if (i != XP) {
            j = GetRole(CClan.theClan[# ROLE, argument0], i, 1);

            CClan.theClan[# i, argument0] += j - frac(j);

            if (irandom_range(0, 9) < frac(j) * 10) {
                CClan.theClan[# i, argument0]++;
            }
        }
    }

    if (CClan.theClan[# XP, argument0] < 0) {
        CClan.theClan[# XP, argument0] = 0;
    }
    
    /*
    */
    with (CGame) {
        SceneNotify( string(CClan.theClan[# NAME, argument0]) + " levelled up to LV. " + string(CClan.theClan[# LV, argument0]) );
    }

    if (CClan.theClan[# XP, argument0] > 99) {
        AddLV(argument0);
    }
}
