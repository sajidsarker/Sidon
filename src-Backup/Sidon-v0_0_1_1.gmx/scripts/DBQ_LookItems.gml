/// DBQ_LookItems(item_id, data_cell)
{
    switch (argument0) {
        case 0:
            switch (argument1) {
                case NAME:
                return "Potion";

                case DESCRIPTION:
                return "'Brewed Nightshade root-oil emulsion in distilled alcohol.'##Heals 25 Hit Points.";

                case PRICE:
                return 150;
            }
        break;

        case 1:
            switch (argument1) {
                case NAME:
                return "Hi-Potion";

                case DESCRIPTION:
                return "'Brewed Wolfsbane oil emulsion in saltwater.'##Heals 50 Hit Points.";

                case PRICE:
                return 150;
            }
        break;

        case 2:
            switch (argument1) {
                case NAME:
                return "Aether";

                case DESCRIPTION:
                return "'Liquid suspension of eye humours harvested from deep-sea worms.'##Replenishes 25 Aura Points.";

                case PRICE:
                return 150;
            }
        break;

        case 3:
            switch (argument1) {
                case NAME:
                return "Elixir";

                case DESCRIPTION:
                return "'Decoction of Ginseng root pickled in thin mead.'##Replenishes 50 Aura Points.";

                case PRICE:
                return 150;
            }
        break;

        case 4:
            switch (argument1) {
                case NAME:
                return "Phoenix Down";

                case DESCRIPTION:
                return "'Soft down plucked from the neck and breast of the Phoenix.'##Cures KO Status and Heals all Hit Points.";

                case PRICE:
                return 150;
            }
        break;

        case 5:
            switch (argument1) {
                case NAME:
                return "Antidote";

                case DESCRIPTION:
                return "'Essence of Bezoar taken from the stomach lining of an aged goat.'##Cures Poison Status.";

                case PRICE:
                return 150;
            }
        break;

        case 6:
            switch (argument1) {
                case NAME:
                return "Revive";

                case DESCRIPTION:
                return "'Fiery draught of thrice-distilled spirits. To be taken in small doses only.'##Cures KO Status.";

                case PRICE:
                return 150;
            }
        break;

        case 7:
            switch (argument1) {
                case NAME:
                return "NULL";

                case DESCRIPTION:
                return "NULL";

                case PRICE:
                return 100;
            }
        break;

        case 8:
            switch (argument1) {
                case NAME:
                return "NULL";

                case DESCRIPTION:
                return "NULL";

                case PRICE:
                return 100;
            }
        break;

        case 9:
            switch (argument1) {
                case NAME:
                return "NULL";

                case DESCRIPTION:
                return "NULL";

                case PRICE:
                return 100;
            }
        break;

        case 10:
            switch (argument1) {
                case NAME:
                return "Wooden Club";

                case DESCRIPTION:
                return "...";

                case PRICE:
                return 150;
            }
        break;

        case 11:
            switch (argument1) {
                case NAME:
                return "Mace";

                case DESCRIPTION:
                return "...";

                case PRICE:
                return 150;
            }
        break;

        case 12:
            switch (argument1) {
                case NAME:
                return "Morningstar";

                case DESCRIPTION:
                return "...";

                case PRICE:
                return 150;
            }
        break;

        case 13:
            switch (argument1) {
                case NAME:
                return "Mallet";

                case DESCRIPTION:
                return "...";

                case PRICE:
                return 150;
            }
        break;

        case 14:
            switch (argument1) {
                case NAME:
                return "Dagger";

                case DESCRIPTION:
                return "...";

                case PRICE:
                return 150;
            }
        break;


        case 15:
            switch (argument1) {
                case NAME:
                return "Shiv";

                case DESCRIPTION:
                return "...";

                case PRICE:
                return 150;
            }
        break;

        case 16:
            switch (argument1) {
                case NAME:
                return "Shortsword";

                case DESCRIPTION:
                return "...";

                case PRICE:
                return 150;
            }
        break;

        case 17:
            switch (argument1) {
                case NAME:
                return "Bastard Sword";

                case DESCRIPTION:
                return "...";

                case PRICE:
                return 150;
            }
        break;

        case 18:
            switch (argument1) {
                case NAME:
                return "Longsword";

                case DESCRIPTION:
                return "...";

                case PRICE:
                return 150;
            }
        break;

        case 19:
            switch (argument1) {
                case NAME:
                return "Broadsword";

                case DESCRIPTION:
                return "...";

                case PRICE:
                return 150;
            }
        break;

        case 20:
            switch (argument1) {
                case NAME:
                return "Claymore";

                case DESCRIPTION:
                return "...";

                case PRICE:
                return 150;
            }
        break;

        case 21:
            switch (argument1) {
                case NAME:
                return "Rapier";

                case DESCRIPTION:
                return "...";

                case PRICE:
                return 150;
            }
        break;

        case 22:
            switch (argument1) {
                case NAME:
                return "Spear";

                case DESCRIPTION:
                return "...";

                case PRICE:
                return 150;
            }
        break;

        case 23:
            switch (argument1) {
                case NAME:
                return "Halberd";

                case DESCRIPTION:
                return "...";

                case PRICE:
                return 150;
            }
        break;

        case 24:
            switch (argument1) {
                case NAME:
                return "Shortbow";

                case DESCRIPTION:
                return "...";

                case PRICE:
                return 150;
            }
        break;

        case 25:
            switch (argument1) {
                case NAME:
                return "Longbow";

                case DESCRIPTION:
                return "...";

                case PRICE:
                return 150;
            }
        break;

        case 26:
            switch (argument1) {
                case NAME:
                return "Crossbow";

                case DESCRIPTION:
                return "...";

                case PRICE:
                return 150;
            }
        break;

        case 27:
            switch (argument1) {
                case NAME:
                return "Quarterstaff";

                case DESCRIPTION:
                return "...";

                case PRICE:
                return 150;
            }
        break;

        case 28:
            switch (argument1) {
                case NAME:
                return "Staff";

                case DESCRIPTION:
                return "...";

                case PRICE:
                return 150;
            }
        break;

        case 29:
            switch (argument1) {
                case NAME:
                return "Rod";

                case DESCRIPTION:
                return "...";

                case PRICE:
                return 150;
            }
        break;

        case 30:
            switch (argument1) {
                case NAME:
                return "Wand";

                case DESCRIPTION:
                return "...";

                case PRICE:
                return 150;
            }
        break;
        
        default:
        return 0;
    }

    return 0;
}
