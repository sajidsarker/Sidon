/// stateDoor_Opened()
{
    if (c_Game.state_index == stateSystem_Pause) {
        return (state_continue);
    }

    switch (direction) {
        case 0:
            if (x != xstart - 32) {
                x--;
            }
        break;

        case 90:
            if (y != ystart - 32) {
                y--;
            }
        break;
    }

    return (state_continue);
}
