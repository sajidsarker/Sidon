/// ConstructUnit(x, y, direction, name, sprite_index)
{
    var a;

    a = instance_create(IsoToCoordX(argument0, argument1), IsoToCoordY(argument0, argument1), CUnit);

    // Place on Map
    ds_grid_set(CMap.myMap[ENTITY_MAP], argument0, argument1, a);

    // Identifier
    a._id = 0;
    a.myFaction = 99;

    // Coordinates
    a.vecPosition = ds_list_create();
    a.vecPosition[| X] = argument0;
    a.vecPosition[| Y] = argument1;
    a.vecPosition[| Z] = ds_grid_get(CMap.myMap[HEIGHT_MAP], argument0, argument1);

    a.z = a.vecPosition[| Z] * TILE_HEIGHT;
    a.depth = -a.y - 2;

    // Sprite
    a.direction = argument2;
    a.sprite_index = argument4;
    a.image_speed = 0;
    a.image_index = irandom(7);

    a.myName = argument3;
    /*
    // Stats
    a.HitPoints = CClan.theClan[# HP, argument3];
    a.AbilityPoints = CClan.theClan[# AP, argument3];
    a.ExperiencePoints = CClan.theClan[# XP, argument3];
    a.MaxHitPoints = a.HitPoints;
    a.MaxAbilityPoints = a.AbilityPoints;
    a.MaxExperiencePoints = a.ExperiencePoints;
    //a.UpgradePoints = CClan.theClan[# AP, argument3];
    a.Speed = CClan.theClan[# SPD, argument3];
    a.Evasion = CClan.theClan[# EVA, argument3];
    a.Attack = CClan.theClan[# ATK, argument3];
    a.Defence = CClan.theClan[# DEF, argument3];
    a.Power = CClan.theClan[# POW, argument3];
    a.Resistance = CClan.theClan[# RES, argument3];
    a.WAttack = CClan.theClan[# WATK, argument3];
    a.ADefence = CClan.theClan[# ADEF, argument3];
    a.WPower = CClan.theClan[# WPOW, argument3];
    a.AResistance = CClan.theClan[# ARES, argument3];
    a.Weapon = CClan.theClan[# SLOT1, argument3];
    a.Armour = CClan.theClan[# SLOT2, argument3];
    a.StatusEffect = -1;
    a.StatusTimer  =  0;
    */

    return a;
}
