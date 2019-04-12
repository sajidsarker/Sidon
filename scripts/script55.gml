/// EquipStorage(clan_id, index)
{
    var _i = PeekStorage(argument1);

    if (_i > -1) {
        ds_list_replace(Storage[2], _i, ds_list_find_value(Storage[2], _i) + argument1);

        if (ds_list_find_value(Storage[2], _i) < 1) {
            ds_list_delete(Storage[0], _i);
            ds_list_delete(Storage[2], _i);
        }
    }
}
