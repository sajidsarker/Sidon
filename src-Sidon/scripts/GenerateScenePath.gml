/// GenerateScenePath(x1, y1, x2, y2 obj, speed)
{
    var o, a, b, i, _x1, _y1, _x2, _y2;

    b = argument4;

    with (b) {
        Path = path_add();
         _x1 = argument0;
         _y1 = argument1;
         _x2 = argument2;
         _y2 = argument3;
           o = ds_grid_get(CMap.myMap[TILE_MAP], _x2, _y2);
           a = o;

        path_add_point(Path, IsoToCoordX(_x1, _y1), IsoToCoordY(_x1, _y1), 100);
        path_add_point(Path, IsoToCoordX(_x2, _y2), IsoToCoordY(_x2, _y2), 100);

        while (o.myParent != noone
            and a.myParent != noone) {
           a = o;
           o = o.myParent;
           _x2 = IsoToCoordX(o.myX, o.myY);
           _y2 = IsoToCoordY(o.myX, o.myY);
           path_insert_point(Path, 1, _x2, _y2, 100);
           _x2 = CoordToIsoX(_x2, _y2);
           _y2 = CoordToIsoY(_x2, _y2);
        }

        path_set_kind(Path, 0);
        path_set_closed(Path, false);

        path_start(Path, argument5, 0, true);
    }

    return path_get_length(b.Path) / (argument5);
}

