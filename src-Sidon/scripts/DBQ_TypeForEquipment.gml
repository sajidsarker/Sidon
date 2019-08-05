/// DBQ_TypeForEquipment(type_binary)
{
    // For displaying type in the shop and armoury screens
    switch (argument0) {
        case 1:
            return "Robe";
        case 2:
            return "Plate";
        case 4:
            return "Mail";
        case 8:
            return "Hide";
    }
}
