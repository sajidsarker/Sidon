/// EquipStorage(clan_id, slot, index)
{
    var _i = PeekStorage(argument2);

    if (_i > -1) {
        if (ds_list_find_value(Storage[1], _i) < ds_list_find_value(Storage[2], _i)) {
            CClan.theClan[# SLOT1, argument0] = argument2;
            ds_list_replace(Storage[1], _i, ds_list_find_value(Storage[1], _i) + 1);
            BufferPrompt("0_" + string(CClan.theClan[# NAME, argument0] + " equipped ..."));
            DisplayPrompt();
        }
    }
}
