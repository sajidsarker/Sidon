/// Int2Bin(int)
{
    var a, num;
    num = argument0;
    a[0] = ds_list_create();
    a[1] = ds_list_create();
    a[2] = ds_list_create();

    var i = 0;
    ds_list_add( a[0], num * 0.5 );
    ds_list_add( a[1], num * 0.5 - frac( num * 0.5 ) );
    ds_list_add( a[2], frac( num * 0.5 ) > 0 );

    while ( ds_list_find_value( a[1], i ) != 0 ) {
        m = ds_list_size( a[0] ) - 1;
        ds_list_add( a[0], ds_list_find_value( a[1], m ) * 0.5 );
        ds_list_add( a[1], ds_list_find_value( a[0], i ) - frac( ds_list_find_value( a[0], i ) ) );
        ds_list_add( a[2], frac( ds_list_find_value( a[0], i ) ) > 0 );
        i++;
    }

    var n = "";
    for ( var j = i; j >= 0; j-- ) {
        n += string( ds_list_find_value( a[2], j ) );
    }

    if ( string_length( n ) < 6 ) {
        var append = ( 6 - string_length( n ) ) * "0";
        n = string( append ) + string( n );
    }

    ds_list_destroy(a[0])
    ds_list_destroy(a[1])
    ds_list_destroy(a[2])

    return n;
}
