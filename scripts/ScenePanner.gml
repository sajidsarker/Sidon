/// ScenePanner(x, y, dest_x, dest_y, timer)
{
    var o = instance_create( argument0, argument1, TPanner );
    o.myX = argument2;
    o.myY = argument3;
    o.timer = Seconds( argument4 );
    return o;
}
