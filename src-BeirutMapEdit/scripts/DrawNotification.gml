/// DrawNotification(x, y, text, timer)
{
    with ( CNotification )
        instance_destroy();
    var a = instance_create( argument0, argument1, CNotification );
    a.myText  = argument2;
    a.myTimer = room_speed * argument3;
}
