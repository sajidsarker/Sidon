/// stateDoor_Closed()
{
    if (c_Game.state_index == stateSystem_Pause) {
        return (state_continue);
    }

    switch (direction) {
        case 0:
            if (x != xstart) {
                x++;
            }
        break;

        case 90:
            if (y != ystart) {
                y++;
            }
        break;
    }

    return (state_continue);
}
