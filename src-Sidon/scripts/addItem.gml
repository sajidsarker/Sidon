/// addItem(index, amount)
{
    var _i = peekItem(argument0);

    if (_i > -1)
    {
        ds_list_replace(Item[1], _i, ds_list_find_value(Item[1], _i) + argument1);

        if (ds_list_find_value(Item[1], _i) < 1)
        {
            ds_list_delete(Item[0], _i);
            ds_list_delete(Item[1], _i);
        }

        if (argument1 > 0)
        {
            cacheBuffer("Item>Received " + string(argument0) + " (" + string(argument1) + ")");
            displayBuffer();
        }
    }
    else
    {
        if (argument1 > 0)
        {
            ds_list_add(Item[0], argument0);
            ds_list_add(Item[1], argument1);
            cacheBuffer("Item>Received " + string(argument0) + " (" + string(argument1) + ")");
            displayBuffer();
        }
    }
}
