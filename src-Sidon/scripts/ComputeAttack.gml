///ComputeAttack(actor, target)
{
    actor = argument0;
    target = argument1;
    var dmg = 0;
    dmg = actor.BaseStats[ATK];
    dmg += actor.BaseStats[WATK];
    dmg *= 2;
    var def = 0;
    def = target.BaseStats[DEF];
    def += target.BaseStats[ADEF];
    def *= 0.5;
    dmg -= def;
    dmg *= 0.1;
    dmg = ceil(dmg);
    target.BaseStats[HP] -= dmg;
}
