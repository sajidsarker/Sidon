/// SpawnUnit(x, y, direction, faction, clan_id)
{
    var a;

    a = instance_create(IsoToCoordX(argument0, argument1), IsoToCoordY(argument0, argument1), CUnit);

    // Place on Map
    ds_grid_set(CMap.myMap[ENTITY_MAP], argument0, argument1, a);

    // Identifier
    a._id = argument4;
    a.myFaction = argument3;

    // Coordinates
    a.vecPosition = ds_list_create();
    a.vecPosition[| X] = argument0;
    a.vecPosition[| Y] = argument1;
    a.vecPosition[| Z] = ds_grid_get(CMap.myMap[HEIGHT_MAP], argument0, argument1);

    a.z = a.vecPosition[| Z] * TILE_HEIGHT;
    a.depth = -a.y - 2;

    // Logic    
    a.canMove = true;
    a.canAct  = true;

    // Sprite
    ////////// EDIT THIS LATER
    a.direction             = argument2 * 90;
    a.sprite_index          = res_spr_unit;
    a.image_speed           = 0;
    a.image_index           = CClan.theClan[# ROLE, a._id];

    // Stats
    a.myName                = CClan.theClan[# NAME, a._id];
    a.HitPoints             = CClan.theClan[# HP, a._id];
    a.AbilityPoints         = CClan.theClan[# AP, a._id];
    a.ExperiencePoints      = CClan.theClan[# XP, a._id];
    a.MaxHitPoints          = a.HitPoints;
    a.MaxAbilityPoints      = a.AbilityPoints;
    a.MaxExperiencePoints   = 100;
    //a.UpgradePoints         = CClan.theClan[# AP, a._id];
    a.Speed                 = CClan.theClan[# SPD, a._id];
    a.Evasion               = CClan.theClan[# EVA, a._id];
    a.Attack                = CClan.theClan[# ATK, a._id];
    a.Defence               = CClan.theClan[# DEF, a._id];
    a.Power                 = CClan.theClan[# POW, a._id];
    a.Resistance            = CClan.theClan[# RES, a._id];
    a.WAttack               = CClan.theClan[# WATK, a._id];
    a.ADefence              = CClan.theClan[# ADEF, a._id];
    a.WPower                = CClan.theClan[# WPOW, a._id];
    a.AResistance           = CClan.theClan[# ARES, a._id];
    a.Weapon                = CClan.theClan[# SLOT1, a._id];
    a.Armour                = CClan.theClan[# SLOT2, a._id];
    a.StatusEffect = -1;
    a.StatusTimer  =  0;

    with (CGame) {
        UpdateTurnOrder();
    }

    return a;
}
