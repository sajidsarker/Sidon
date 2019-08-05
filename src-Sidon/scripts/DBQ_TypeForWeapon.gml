/// DBQ_TypeForWeapon(type_binary)
{
    // For displaying type in the shop and armoury screens
    switch (argument0) {
        case 1:
            return "Bows";
        case 2:
            return "Axes";
        case 4:
            return "Polearms";
        case 8:
            return "Clubs";
        case 16:
            return "Flails";
        case 32:
            return "Staves";
        case 64:
            return "Knives";
        case 128:
            return "Swords";
    }
}
