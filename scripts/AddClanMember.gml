/// AddClanMember(name, role, level)
{
    // Name
    CClan.theClan[# NAME, CClan.theClanSize] = argument0;

    // Role
    CClan.theClan[# ROLE, CClan.theClanSize] = argument1;

    // Level
    CClan.theClan[# LV, CClan.theClanSize] = 1;

    for (i = SLOT1; i <= ABILITY3; i++) {
        CClan.theClan[# i, CClan.theClanSize] = -1;
    }

    for (i = HP; i <= RES; i++) {
        if (i != XP) {
            var starting_stat, a, b;
            starting_stat = GetRole(argument1, i, 0);
            a = ceil(starting_stat / 20);
            b = ceil( ( (-irandom(2 * a)) + (-irandom(2 * a)) + irandom(2 * a) + irandom(2 * a) ) / 2)
            if ( starting_stat == 0 ) {
                CClan.theClan[# i, CClan.theClanSize] = 10;
            } else {
                CClan.theClan[# i, CClan.theClanSize] = starting_stat + a + b;
            }
        }
    }

    // XP
    CClan.theClan[# XP, CClan.theClanSize] = 0;

    // Level up to specified level
    repeat (argument2 - 1) {
        AddLV(CClan.theClanSize);
    }

    CClan.theClanSize++;
}
