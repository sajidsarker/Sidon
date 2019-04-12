/// DBQ_RoleForWeapon(weapon_id)
{
    // For displaying compatible roles in the shop and armoury screens
    switch (argument0) {
        case 128:
            return 2;
        case 64:
            return 25;
        case 32:
            return 5;
        case 16:
            return 2;
        case 8:
            return 36;
        case 4:
            return 32;
        case 2:
            return 8;
        case 1:
            return 16;
    }
}
