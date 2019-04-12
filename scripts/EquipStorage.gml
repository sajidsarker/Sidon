/// EquipStorage(clan_id, slot, index)
{
    var _i = PeekStorage(argument2);
    var _j = 0;
    var _s = argument1;

    if (argument2 != -1) {
        if (_i > -1) {
            if (ds_list_find_value(Storage[EQUIPPED], _i) < ds_list_find_value(Storage[QUANTITY], _i)) {
                if (CClan.theClan[# _s, argument0] != -1) {
                    _j = ds_list_find_index(Storage[ITEM_ID], CClan.theClan[# _s, argument0]);
                    if (_j > -1) {
                        ds_list_replace(Storage[EQUIPPED], _j, ds_list_find_value(Storage[EQUIPPED], _j) - 1);
                    }
                    if ( _s == SLOT1 ) {
                        CClan.theClan[# WATK, argument0] -= DBQ_LookItems( CClan.theClan[# _s, argument0], WATK );
                        CClan.theClan[# WPOW, argument0] -= DBQ_LookItems( CClan.theClan[# _s, argument0], WPOW );
                    }
                    if ( _s == SLOT2 ) {
                        CClan.theClan[# ADEF, argument0] -= DBQ_LookItems( CClan.theClan[# _s, argument0], ADEF );
                        CClan.theClan[# ARES, argument0] -= DBQ_LookItems( CClan.theClan[# _s, argument0], ARES );
                        CClan.theClan[# EVA,  argument0] += DBQ_LookItems( CClan.theClan[# _s, argument0], AWGT );
                    }
                    CClan.theClan[# _s, argument0] = -1;
                }
                CClan.theClan[# _s, argument0] = argument2;
                ds_list_replace(Storage[EQUIPPED], _i, ds_list_find_value(Storage[EQUIPPED], _i) + 1);
                if ( _s == SLOT1 ) {
                    CClan.theClan[# WATK, argument0] += DBQ_LookItems( CClan.theClan[# _s, argument0], WATK );
                    CClan.theClan[# WPOW, argument0] += DBQ_LookItems( CClan.theClan[# _s, argument0], WPOW );
                }
                if ( _s == SLOT2 ) {
                    CClan.theClan[# ADEF, argument0] += DBQ_LookItems( CClan.theClan[# _s, argument0], ADEF );
                    CClan.theClan[# ARES, argument0] += DBQ_LookItems( CClan.theClan[# _s, argument0], ARES );
                    CClan.theClan[# EVA,  argument0] -= DBQ_LookItems( CClan.theClan[# _s, argument0], AWGT );
                }
                BufferPrompt("0_" + string(CClan.theClan[# NAME, argument0] + " equipped [" + string(DBQ_LookItems(argument2, ITEM_NAME)) + "]."));
                DisplayPrompt();
            } else {
                BufferPrompt("0_Not enough [" + string(DBQ_LookItems(argument2, ITEM_NAME)) + "] available to equip.");
                DisplayPrompt();
            }
        }
    } else {
        _j = ds_list_find_index(Storage[ITEM_ID], CClan.theClan[# _s, argument0]);
        if (_j > -1) {
            ds_list_replace(Storage[EQUIPPED], _j, ds_list_find_value(Storage[EQUIPPED], _j) - 1);
        }
        if ( CClan.theClan[# _s, argument0] != -1 ) {
            if ( _s == SLOT1 ) {
                CClan.theClan[# WATK, argument0] -= DBQ_LookItems( CClan.theClan[# _s, argument0], ATK );
                CClan.theClan[# WPOW, argument0] -= DBQ_LookItems( CClan.theClan[# _s, argument0], POW );
            }
            if ( _s == SLOT2 ) {
                CClan.theClan[# ADEF, argument0] -= DBQ_LookItems( CClan.theClan[# _s, argument0], DEF );
                CClan.theClan[# ARES, argument0] -= DBQ_LookItems( CClan.theClan[# _s, argument0], RES );
                CClan.theClan[# EVA,  argument0] += DBQ_LookItems( CClan.theClan[# _s, argument0], AWGT );
            }
        }
        CClan.theClan[# _s, argument0] = -1;
        BufferPrompt("0_Unequipped to Armoury.");
        DisplayPrompt();
    }
}
