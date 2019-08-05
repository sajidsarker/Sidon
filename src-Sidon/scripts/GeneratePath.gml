/// GeneratePath(x, y, obj, speed)
{
    var o, a, b, i, _x, _y;

    b = argument2;

    with (b) {
        Path = path_add();
          _x = argument0;
          _y = argument1;
           o = ds_grid_get(CMap.myMap[TILE_MAP], _x, _y);
           a = o;

        path_add_point(Path, IsoToCoordX(CCursor.prevX, CCursor.prevY), IsoToCoordY(CCursor.prevX, CCursor.prevY), 100);
        path_add_point(Path, IsoToCoordX(_x, _y), IsoToCoordY(_x, _y), 100);

        while (o.myParent != noone
            and a.myParent != noone) {
           a = o;
           o = o.myParent;
           _x = IsoToCoordX(o.myX, o.myY);
           _y = IsoToCoordY(o.myX, o.myY);
           path_insert_point(Path, 1, _x, _y, 100);
           _x = CoordToIsoX(_x, _y);
           _y = CoordToIsoY(_x, _y);
        }

        path_set_kind(Path, 0);
        path_set_closed(Path, false);

        path_start(Path, argument3, 0, true);
    }

    return path_get_length(b.Path) / argument3;
}

