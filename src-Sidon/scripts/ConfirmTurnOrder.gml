/// UpdateTurnOrder()
{
    ds_list_destroy(ListActorIndex);
    ds_list_destroy(ListActiveActorIndex);
    var i;
    for (i=0; i<instance_number(CUnit); i++) {
        var o = instance_find(CUnit, i);
        ds_list_add(ListActiveActorPointer, o);
    }
}
