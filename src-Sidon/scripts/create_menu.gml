/// create_menu(x, y, title, items, max_dim)
{
    var o = instance_create(argument0, argument1, CMenu);
        o.title = argument2;
        o.items = ds_list_create();
        o.max_dim = argument4;
        o.choice = 0;

    for ( var i = 0; i < argument4; i++ ) {
        ds_list_add(o.items, Extract(argument3, i, ","));
    }

    return o;
}
