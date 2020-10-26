/// DrawSystemMessage(x, y, text, timer)
{
    with ( TSystemMessage )
        instance_destroy();
    var a = instance_create( argument0, argument1, TSystemMessage );
    a.myText  = argument2;
    a.myTimer = Seconds(argument3);
}
