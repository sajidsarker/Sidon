/// beh_doMove()
{
    var vecUp  = vec3_createVector(0, 0, -1);
    var vecCam = vec3_createVector(vecCamera[| 0], vecCamera[| 1], vecCamera[| 2])

    physForce        = 5 * sign(abs(keyForward) + abs(keyRight));
    physAcceleration = physForce / physMass;
    physFriction     = -vec3_magnitudeVector(vecVelocity) * .1;

    vecFriction = vec3_copyVector(vecFriction, vecVelocity);
    vecFriction = vec3_normaliseVector(vecFriction);
    vecFriction = vec3_scaleVector(vecFriction, physFriction);

    //vecAcceleration = vec3_scaleVector(vecAcceleration, 0);
    vecAcceleration = vec3_copyVector(vecAcceleration, vec3_scaleVector(vecCam, keyForward));
    vecAcceleration = vec3_addVector(vecAcceleration,  vec3_scaleVector(vec3_crossVector(vecCamera, vecUp), keyRight));
    vecAcceleration = vec3_normaliseVector(vecAcceleration);
    vecAcceleration = vec3_scaleVector(vecAcceleration, physAcceleration);

    vecVelocity = vec3_addVector(vecVelocity, vecAcceleration);
    vecVelocity = vec3_addVector(vecVelocity, vecFriction);

    vec3_deleteVector(vecUp);
    vec3_deleteVector(vecCam);

    repeat (abs(vecVelocity[| 0]) * 10) {
        if (!place_meeting(x + sign(vecVelocity[| 0]) * .1, y, c_Geometry)
        and !place_meeting(x + sign(vecVelocity[| 0]) * .1, y, c_Fence)) {
            vec3_addToVector(vecPosition, sign(vecVelocity[| 0]) * .1, 0, 0);
        } else {
            vecVelocity[| 0] = 0;
        }
    }

    repeat (abs(vecVelocity[| 1]) * 10) {
        if (!place_meeting(x, y + sign(vecVelocity[| 1]) * .1, c_Geometry)
        and !place_meeting(x, y + sign(vecVelocity[| 1]) * .1, c_Fence)) {
            vec3_addToVector(vecPosition, 0, sign(vecVelocity[| 1]) * .1, 0);
        } else {
            vecVelocity[| 1] = 0;
        }
    }

    vec3_setVector(vecPosition,
        clamp(vecPosition[| 0], 0, room_width),
        clamp(vecPosition[| 1], 0, room_height),
        clamp(vecPosition[| 2], 0, 1000));

    x = vecPosition[| 0];
    y = vecPosition[| 1];
    z = vecPosition[| 2];
}

