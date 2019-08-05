/// AddXP(clan_id, num)
{
    CClan.theClan[# XP, argument0] += argument1;

    if (CClan.theClan[# XP, argument0] > 99) {
        AddLV(argument0);
    }
}
