///GenerateRange(id, type, range, elevation, faction)
{
    var _start, _typerange, _attackrange, _jumprange;
    _start       = argument0;
    _typerange   = argument1;
    _attackrange = argument2;
    _jumprange   = argument3;
    _faction     = argument4;

    // Update Map
    UpdateMap(TILE_MAP, 0);             // Parameter is clearing value
    UpdateMap(TILE_MAP, 1 + _faction);  // Parameter is clearing value for selected faction

    var _priorityOpen, _listClosed, _mapDist;
    _priorityOpen = ds_priority_create();
    _listClosed   = ds_list_create();
    _mapDist      = ds_map_create();

    ds_priority_add( _priorityOpen, _start, 0 );
    ds_map_add( _mapDist, _start, 0 );
    _start.myParent = noone;
    _start.myFlag[ATTACKABLE] = true;

    switch (_typerange) {
        case 0:
            // Nearest neighbour only
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
                        //if (ds_grid_get(CMap.myMap[ENTITY_MAP], myX, myY) == noone) {
                             _notOccupied = true;
                        /*} else {
                             if (ds_grid_get(CMap.myMap[ENTITY_MAP], myX, myY).myFaction == _faction) {
                                 _notOccupied = true;
                             } else {
                                 _notOccupied = false;
                             }
                        }*/

                        if ( ds_list_find_index( _listClosed, id ) == -1 and
                                _notOccupied and
                                _predist + 1 <= _attackrange and
                                abs(ds_grid_get(CMap.myMap[HEIGHT_MAP], _current.myX, _current.myY) - ds_grid_get(CMap.myMap[HEIGHT_MAP], myX, myY)) <= _jumprange ) {
        
                            if ( is_undefined(ds_priority_find_priority( _priorityOpen, id )) ) {
        
                                var _dist;
                                _dist = _predist + 1;
        
                                ds_priority_add( _priorityOpen, id, _dist );
                                ds_map_add( _mapDist, id, _dist );
                                myParent  = _current;
                                myFlag[ATTACKABLE] = true;
        
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

            _start.myFlag[ATTACKABLE] = false;
        break;

        case 1:
            // Not nearest neighbour
            _attackrange = max(_attackrange, 3);
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
                        //if (ds_grid_get(CMap.myMap[ENTITY_MAP], myX, myY) == noone) {
                             _notOccupied = true;
                        /*} else {
                             if (ds_grid_get(CMap.myMap[ENTITY_MAP], myX, myY).myFaction == _faction) {
                                 _notOccupied = true;
                             } else {
                                 _notOccupied = false;
                             }
                        }*/

                        if ( ds_list_find_index( _listClosed, id ) == -1 and
                                _notOccupied and
                                _predist + 1 <= _attackrange and
                                abs(ds_grid_get(CMap.myMap[HEIGHT_MAP], _current.myX, _current.myY) - ds_grid_get(CMap.myMap[HEIGHT_MAP], myX, myY)) <= _jumprange ) {

                            if ( is_undefined(ds_priority_find_priority( _priorityOpen, id )) ) {

                                var _dist;
                                _dist = _predist + 1;

                                ds_priority_add( _priorityOpen, id, _dist );
                                ds_map_add( _mapDist, id, _dist );
                                myParent = _current;
                                myFlag[ATTACKABLE] = true;

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
        
            var g = ds_grid_create(5, 5);
            var j;

            for (j=0; j<5; j++) {
                for (i=0; i<5; i++) {
                    g[# i, j] = noone;
                    if (_start.myX - 2 + i > -1 or _start.myX - 2 + i < CMap.myWidth) {
                        if (_start.myY - 2 + i > -1 or _start.myY - 2 + i < CMap.myHeight) {
                            g[# i, j] = ds_grid_get(CMap.myMap[TILE_MAP], _start.myX - 2 + i, _start.myY - 2 + j);
                        }
                    }
                    if (abs(ds_grid_get(CMap.myMap[HEIGHT_MAP], max(min(_start.myX - 2 + i, CMap.myWidth - 1), 0), max(min(_start.myY - 2 + j, CMap.myHeight - 1), 0))
                        - ds_grid_get(CMap.myMap[HEIGHT_MAP], _start.myX, _start.myY)) > 2 * _jumprange) {
                        g[# i, j] = noone;
                    }
                }
            }

            g[# 0, 0] = noone;
            g[# 1, 0] = noone;
            g[# 3, 0] = noone;
            g[# 4, 0] = noone;
            g[# 0, 1] = noone;
            g[# 4, 1] = noone;

            g[# 0, 3] = noone;
            g[# 4, 3] = noone;
            g[# 0, 4] = noone;
            g[# 1, 4] = noone;
            g[# 3, 4] = noone;
            g[# 4, 4] = noone;

            for (j=0; j<5; j++) {
                for (i=0; i<5; i++) {
                    if (g[# i, j] != noone) {
                        with (g[# i, j]) {
                            myFlag[ATTACKABLE] = false;
                        }
                    }
                    /*with ( _start.myNeighbour[i] ) {
                        myFlag[ATTACKABLE] = false;
                    }*/
                }
            }

            ds_grid_destroy(g);

            _start.myFlag[ATTACKABLE] = false;            
        break;

        case 2:
            // 4-point cardinal
            var i, j;
            for (i=_start.myX - _attackrange; i<_start.myX; i++) {
                j = ds_grid_get(CMap.myMap[TILE_MAP], i, _start.myY);
                with (j) {
                    myFlag[ATTACKABLE] = true;
                }
            }
            for (i=_start.myX + _attackrange; i>_start.myX; i--) {
            //for (i=CMap.myWidth-1; i>_start.myX; i--) {
                j = ds_grid_get(CMap.myMap[TILE_MAP], i, _start.myY);
                with (j) {
                    myFlag[ATTACKABLE] = true;
                }
            }
            for (i=_start.myY - _attackrange; i<_start.myY; i++) {
                j = ds_grid_get(CMap.myMap[TILE_MAP], _start.myX, i);
                with (j) {
                    myFlag[ATTACKABLE] = true;
                }
            }
            for (i=_start.myY + _attackrange; i>_start.myY; i--) {
            //for (i=CMap.myHeight-1; i>_start.myY; i--) {
                j = ds_grid_get(CMap.myMap[TILE_MAP], _start.myX, i);
                with (j) {
                    myFlag[ATTACKABLE] = true;
                }
            }

            _start.myFlag[ATTACKABLE] = false;
        break;
        
        case 3:
            // Only me
            _start.myFlag[ATTACKABLE] = true;
        break;
    }

    with (CTile) {
        if (myFlag[REACHABLE] == false) {
            //myParent = noone;
        }
        if (myFlag[ATTACKABLE] == false) {
            myParent = noone;
        }
    }

    ds_priority_destroy( _priorityOpen );
    ds_list_destroy( _listClosed );
    ds_map_destroy( _mapDist );
}
