/// AddClanMember(name, role, level)
{
    // Name
    CClan.theClan[# NAME, CClan.theClanSize] = argument0;

    // Role
    CClan.theClan[# ROLE, CClan.theClanSize] = argument1;

    // Level
    CClan.theClan[# LV, CClan.theClanSize] = 1;

    for (i=HP; i<=RES; i++) {
        if (i != XP) {
            CClan.theClan[# i, CClan.theClanSize] = GetRole(argument1, i, 0);
        }
    }

    // XP
    CClan.theClan[# XP, CClan.theClanSize] = 0;

    // Level up to specified level
    repeat (argument2) {
        AddLV(CClan.theClanSize);
    }

    CClan.theClanSize++;
}
