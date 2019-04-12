///DetectInputDevice()
{
    if (myGamepad.isControllerConnected) {
        myController = instance_find(CController, 0);
        myInput = myController;
    } else {
        myController = noone;
        myInput = myKeyboard;
    }

    if (myInput == noone) {
        myInput = myKeyboard;
    }
}
