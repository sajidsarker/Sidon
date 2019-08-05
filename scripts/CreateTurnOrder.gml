/// CreateTurnOrder()
{
    var i;
    //globalvar actorIndex, activeActorIndex, actorPointer;

    actorIndex = ds_list_create();
    for (i=0; i<CLAN_SIZE; i++) {
        ds_list_add(actorIndex, i);
    }

    activeActorIndex = ds_list_create();
    for (i=0; i<instance_number(CUnit); i++) {
        var o = instance_find(CUnit, i);
        var j = ds_list_find_index(actorIndex, i);
        if (o.myFaction == 0) {
            if (j <= -1) {
                ds_list_add(activeActorIndex, i);
            }
            if (j > -1) {
                ds_list_delete(actorIndex, j);
            }
        }
    }
}
