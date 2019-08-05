/// CompareBin(bin1, bin2, pos)
{
    var bin1 = argument0;
    var bin2 = argument1;
    var n = string_length( bin1 ) - 1;
    var a = string_char_at( bin1, n - argument2 );
    var b = string_char_at( bin2, n - argument2 );
    if ( a == b )
        return true;
    return false;
}
