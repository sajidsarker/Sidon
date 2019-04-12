/// beh_doLook()
{
    direction += keyRotation;
    keyRotation = 0;
    vec3_setVector(vecCamera,
        lengthdir_x(1, direction),
        lengthdir_y(1, direction),
        0);
    //vecCamera = vec3_normaliseVector(vecCamera);
}
