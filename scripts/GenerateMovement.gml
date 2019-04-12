///GenerateMovement(id, faction)
{
    var _start, _moverange, _jumprange, _faction;
    _start     = argument0;
    _faction   = argument1;
    _moverange = 3 * (_faction != 99);
    _jumprange = 2 * (_faction != 99);

    // Update Map
    UpdateMap(TILE_MAP, 0);
    UpdateMap(TILE_MAP, 1 + _faction);

    var _priorityOpen, _listClosed, _mapDist;
    _priorityOpen = ds_priority_create();
    _listClosed   = ds_list_create();
    _mapDist      = ds_map_create();

    ds_priority_add( _priorityOpen, _start, 0 );
    ds_map_add( _mapDist, _start, 0 );
    _start.myParent = noone;
    _start.myFlag[REACHABLE] = true;

    while ( ds_priority_size( _priorityOpen ) ) {
        var _current;
        _current = ds_priority_delete_min( _priorityOpen );
        ds_list_add( _listClosed, _current );

        var _predist;
        _predist = ds_map_find_value( _mapDist, _current );

        var i;
        for (i=0; i<4; i++) {
            with ( _current.myNeighbour[i] ) {

                var _notOccupied;
                if (ds_grid_get(CMap.myMap[ENTITY_MAP], myX, myY) == noone) {
                     _notOccupied = true;
                } else {
                     if (ds_grid_get(CMap.myMap[ENTITY_MAP], myX, myY).myFaction == _faction) {
                         _notOccupied = true;
                     } else {
                         _notOccupied = false;
                     }
                }

                if ( ds_list_find_index( _listClosed, id ) == -1 and
                        _notOccupied and
                        _predist + 1 <= _moverange and
                        abs(ds_grid_get(CMap.myMap[HEIGHT_MAP], _current.myX, _current.myY) - ds_grid_get(CMap.myMap[HEIGHT_MAP], myX, myY)) <= _jumprange ) {

                    if ( is_undefined(ds_priority_find_priority( _priorityOpen, id )) ) {

                        var _dist;
                        _dist = _predist + 1;

                        ds_priority_add( _priorityOpen, id, _dist );
                        ds_map_add( _mapDist, id, _dist );
                        myParent  = _current;
                        myFlag[REACHABLE] = true;

                    } else {

                        var _dist;
                        _dist = _predist + 1;

                        if ( _dist < ds_priority_find_priority( _mapDist, id ) ) {
                            ds_priority_change_priority( _priorityOpen, id, _dist );
                            ds_map_replace( _mapDist, id, _dist );
                            myParent = _current;
                        }

                    }

                }
            }
        }
    }

    with (CTile) {
        if (myFlag[REACHABLE] == false) {
            myParent = noone;
        }
        if (myFlag[ATTACKABLE] == false) {
            //myParent = noone;
        }
    }

    _start.myFlag[REACHABLE] = false;

    ds_priority_destroy( _priorityOpen );
    ds_list_destroy( _listClosed );
    ds_map_destroy( _mapDist );
}
