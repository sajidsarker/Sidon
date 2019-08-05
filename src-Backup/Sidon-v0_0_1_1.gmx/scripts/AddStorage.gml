/// AddStorage(index, amount)
{
    var _i = PeekStorage(argument0);

    if (_i > -1) {
        var _q = ds_list_find_value(Storage[QUANTITY], _i);

        ds_list_replace(Storage[QUANTITY], _i, _q + argument1);

        if (ds_list_find_value(Storage[QUANTITY], _i) < 1) {
            ds_list_delete(Storage[INDEX],    _i);
            ds_list_delete(Storage[QUANTITY], _i);
            ds_list_delete(Storage[EQUIPPED], _i);
        }
    } else {
        if (argument1 > 0) {
            ds_list_add(Storage[INDEX],    argument0);
            ds_list_add(Storage[QUANTITY], min(argument1, 99));
            ds_list_add(Storage[EQUIPPED], 0);
        }
    }
}
