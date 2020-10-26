/// UpdateTurnOrder()
{
    var i;
    ds_list_clear(turnOrder);
    ds_list_clear(actorPointer);
    ds_list_clear(actorSpeed);
    for (i=0; i<instance_number(CUnit); i++) {
        var o = instance_find(CUnit, i);
        if (o.myFaction != 99) {
            ds_list_add(actorPointer, o);
            ds_list_add(actorSpeed, o.BaseStats[SPD]);
        }
    }

    var n, newn, reg;
    n = ds_list_size(actorSpeed);
    do {
        newn = 0;
        for (i=1; i<n; i++) {
            if (actorSpeed[| i-1] < actorSpeed[| i]) {
                reg = actorSpeed[| i-1];
                actorSpeed[| i-1] = actorSpeed[| i];
                actorSpeed[| i] = reg;
                reg = actorPointer[| i-1];
                actorPointer[| i-1] = actorPointer[| i];
                actorPointer[| i] = reg;
                newn = i;
            }
        }
        n = newn;
    } until (n <= 1);
    
    turnOrder = actorPointer;
}
