/// AddExperiencePoints(unit_id, amount)
{
    argument0.BaseStats[XP] += argument1;

    if (argument0.BaseStats[XP] > 99) {
        AddLevel(argument0);
    }
}
