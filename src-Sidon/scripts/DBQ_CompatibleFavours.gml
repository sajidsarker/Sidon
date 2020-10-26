/// DBQ_CompatibleFavours(item_id, role)
{
    if ( DBQ_LookItems( argument0, CLASS_BINARY ) & GetRole(argument1, ROLE_ID, 0) ) {
        if ( DBQ_LookItems( argument0, ITEM_BINARY ) == 4 ) {
            return true;
        } else {
            return false;
        }
    } else {
        return false;
    }
}
