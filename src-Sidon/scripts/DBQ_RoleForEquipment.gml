/// DBQ_RoleForEquipment(type_binary)
{
    // For displaying compatible roles in the shop and armoury screens
    switch (argument0) {
        case 8:
            return 26;
        case 4:
            return 176;
        case 2:
            return 192;
        case 1:
            return 5;
    }
}
