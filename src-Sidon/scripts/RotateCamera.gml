/// RotateCamera(angle)
{
    var _x, _y, _t;

    _t = degtorad(argument0);

    var _c, _s;
    
    _c = cos(_t);
    _s = sin(_t);
    
    _x = CCamera.vecOrientation[| 0] * _c - CCamera.vecOrientation[| 1] * _s;
    _y = CCamera.vecOrientation[| 0] * _s + CCamera.vecOrientation[| 1] * _c;

    CCamera.vecOrientation[| 0] = _x;
    CCamera.vecOrientation[| 1] = _y;
}