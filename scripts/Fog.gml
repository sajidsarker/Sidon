/// Fog(enable)
{
    if (argument0) {
        d3d_set_fog(true, c_dkgray, 800, 2000);
    } else {
        d3d_set_fog(false, c_white, 0, 0);
    }
}
