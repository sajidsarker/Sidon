/// PeekStorage(index)
{
    var _a = ds_list_find_index(Storage[ITEM_ID], argument0);

    if (_a > -1) {
        return _a;
    } else {
        return -1;
    }
}
