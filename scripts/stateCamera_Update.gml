/// stateCamera_Update()
{
    if (instance_exists(CCharacterCreation)) {
        return (state_continue);
    }

    if (instance_exists(CGame)) {
        if (CGame.state_index != stateSystem_Update
        and CGame.state_index != stateSystem_Prompt
        and CGame.state_index != stateScene_Update) {
            return (state_continue);
        }
    }

    if (instance_exists(CLoop)) {
        if (CLoop.state_index != stateLoop_Update
        and CLoop.state_index != stateLoop_Chapter_1
        and CLoop.state_index != stateLoop_Inventory_1
        and CLoop.state_index != stateLoop_Shop_1
        and CLoop.state_index != stateSystem_Prompt
        and CLoop.state_index != stateScene_Update) {
            return (state_continue);
        }
    }

    if (!instance_exists(CLoop)) {
        if (theTarget != noone) {
            vecPosition[| X] = theTarget.x;
            vecPosition[| Y] = theTarget.y;
            vecPosition[| Z] = theTarget.z;
        } else {
            if (instance_exists(CCursor)) {
                vecPosition[| X] = CCursor.x;
                vecPosition[| Y] = CCursor.y;
                vecPosition[| Z] = CCursor.z;
            }
        }
    } else {
        if (theTarget != noone) {
            vecPosition[| X] = theTarget.x;
            vecPosition[| Y] = theTarget.y;
            vecPosition[| Z] = theTarget.z;
        } else {
            vecPosition[| X] = room_width * 0.5;
            vecPosition[| Y] = room_height * 0.68;
            vecPosition[| Z] = 0;
        }
    }

    x = lerp(x, vecPosition[| X], 0.1);
    y = lerp(y, vecPosition[| Y], 0.1);
    z = lerp(z, vecPosition[| Z], 0.1);

    view_xview[0] = x - view_wview[0] * 0.5;
    view_yview[0] = y - z - view_hview[0] * 0.68;

    return (state_continue);
}
