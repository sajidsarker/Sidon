/// DBQ_LookItems(item_id, data_cell)
{
    switch (argument0) {
        case -1:
            switch (argument1) {
                case ITEM_NAME:
                return "-";

                case ITEM_DESCRIPTION:
                return "-";

                case ITEM_PRICE:
                return 0;
                
                case ITEM_BINARY:
                return 1;
            }
        break;

        case 0:
            switch (argument1) {
                case ITEM_NAME:
                return "Water";

                case ITEM_DESCRIPTION:
                return "'Brewed Nightshade root-oil emulsion in distilled alcohol.'##Heals 25 Hit Points.";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 1;
            }
        break;

        case 1:
            switch (argument1) {
                case ITEM_NAME:
                return "Bread";

                case ITEM_DESCRIPTION:
                return "'Brewed Wolfsbane oil emulsion in saltwater.'##Heals 50 Hit Points.";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 1;
            }
        break;

        case 2:
            switch (argument1) {
                case ITEM_NAME:
                return "Dates";

                case ITEM_DESCRIPTION:
                return "'Liquid suspension of eye humours harvested from deep-sea worms.'##Replenishes 25 Aura Points.";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 1;
            }
        break;

        case 3:
            switch (argument1) {
                case ITEM_NAME:
                return "Milk";

                case ITEM_DESCRIPTION:
                return "'Decoction of Ginseng root pickled in thin mead.'##Replenishes 50 Aura Points.";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 1;
            }
        break;

        case 4:
            switch (argument1) {
                case ITEM_NAME:
                return "Honey";

                case ITEM_DESCRIPTION:
                return "'Soft down plucked from the neck and breast of the Phoenix.'##Cures KO Status and Heals all Hit Points.";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 1;
            }
        break;

        case 5:
            switch (argument1) {
                case ITEM_NAME:
                return "Meat";

                case ITEM_DESCRIPTION:
                return "'Essence of Bezoar taken from the stomach lining of an aged goat.'##Cures Poison Status.";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 1;
            }
        break;

        case 6:
            switch (argument1) {
                case ITEM_NAME:
                return "Cordial";

                case ITEM_DESCRIPTION:
                return "'Fiery draught of thrice-distilled spirits. To be taken in small doses only.'##Cures KO Status.";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 1;
            }
        break;

        case 7:
            switch (argument1) {
                case ITEM_NAME:
                return "Hepatic";

                case ITEM_DESCRIPTION:
                return "NULL";

                case ITEM_PRICE:
                return 100;
                
                case ITEM_BINARY:
                return 1;
            }
        break;

        case 8:
            switch (argument1) {
                case ITEM_NAME:
                return "Anodyne";

                case ITEM_DESCRIPTION:
                return "NULL";

                case ITEM_PRICE:
                return 100;
                
                case ITEM_BINARY:
                return 1;
            }
        break;

        case 9:
            switch (argument1) {
                case ITEM_NAME:
                return "Splint";

                case ITEM_DESCRIPTION:
                return "NULL";

                case ITEM_PRICE:
                return 100;
                
                case ITEM_BINARY:
                return 1;
            }
        break;

        case 10:
            switch (argument1) {
                case ITEM_NAME:
                return "Lime";

                case ITEM_DESCRIPTION:
                return "NULL";

                case ITEM_PRICE:
                return 100;
                
                case ITEM_BINARY:
                return 1;
            }
        break;

        case 16:
            switch (argument1) {
                case ITEM_NAME:
                return "Incense";

                case ITEM_DESCRIPTION:
                return "NULL";

                case ITEM_PRICE:
                return 100;
                
                case ITEM_BINARY:
                return 1;
            }
        break;

        case 30:
            switch (argument1) {
                case ITEM_NAME:
                return "Shortbow";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 1;
                
                case CLASS_BINARY:
                return 16;
                
                case WATK:
                return 10;
                
                case WPOW:
                return 5;
            }
        break;

        case 31:
            switch (argument1) {
                case ITEM_NAME:
                return "Hunting Bow";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 1;
                
                case CLASS_BINARY:
                return 16;
            }
        break;

        case 32:
            switch (argument1) {
                case ITEM_NAME:
                return "Longbow";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 1;
                
                case CLASS_BINARY:
                return 16;
            }
        break;

        case 33:
            switch (argument1) {
                case ITEM_NAME:
                return "Yayi";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 1;
                
                case CLASS_BINARY:
                return 16;
            }
        break;

        case 34:
            switch (argument1) {
                case ITEM_NAME:
                return "Crossbow";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 1;
                
                case CLASS_BINARY:
                return 16;
            }
        break;

        case 35:
            switch (argument1) {
                case ITEM_NAME:
                return "Gastraphetes";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 1;
                
                case CLASS_BINARY:
                return 16;
            }
        break;

        case 36:
            switch (argument1) {
                case ITEM_NAME:
                return "Bowgun";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 1;
                
                case CLASS_BINARY:
                return 16;
            }
        break;

        case 37:
            switch (argument1) {
                case ITEM_NAME:
                return "Rifle";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 1;
                
                case CLASS_BINARY:
                return 16;
            }
        break;

        case 38:
            switch (argument1) {
                case ITEM_NAME:
                return "Shepherd's Sling";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 1;
                
                case CLASS_BINARY:
                return 16;
            }
        break;

        case 39:
            switch (argument1) {
                case ITEM_NAME:
                return "Flax Sling";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 1;
                
                case CLASS_BINARY:
                return 16;
            }
        break;

        case 40:
            switch (argument1) {
                case ITEM_NAME:
                return "Kestros";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 1;
                
                case CLASS_BINARY:
                return 16;
            }
        break;

        case 41:
            switch (argument1) {
                case ITEM_NAME:
                return "Axe";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 2;
                
                case CLASS_BINARY:
                return 8;
            }
        break;

        case 42:
            switch (argument1) {
                case ITEM_NAME:
                return "Greataxe";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 2;
                
                case CLASS_BINARY:
                return 8;
            }
        break;

        case 43:
            switch (argument1) {
                case ITEM_NAME:
                return "Battle Axe";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 2;
                
                case CLASS_BINARY:
                return 8;
            }
        break;

        case 44:
            switch (argument1) {
                case ITEM_NAME:
                return "Tabarzin";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 2;
                
                case CLASS_BINARY:
                return 8;
            }
        break;

        case 45:
            switch (argument1) {
                case ITEM_NAME:
                return "Parashu";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 2;
                
                case CLASS_BINARY:
                return 8;
            }
        break;

        case 46:
            switch (argument1) {
                case ITEM_NAME:
                return "Sajarish";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 2;
                
                case CLASS_BINARY:
                return 8;
            }
        break;

        case 47:
            switch (argument1) {
                case ITEM_NAME:
                return "Keteriya";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 2;
                
                case CLASS_BINARY:
                return 8;
            }
        break;

        case 48:
            switch (argument1) {
                case ITEM_NAME:
                return "Maul";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 2;
                
                case CLASS_BINARY:
                return 8;
            }
        break;

        case 49:
            switch (argument1) {
                case ITEM_NAME:
                return "Tabar";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 2;
                
                case CLASS_BINARY:
                return 8;
            }
        break;

        case 50:
            switch (argument1) {
                case ITEM_NAME:
                return "Japha";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 2;
                
                case CLASS_BINARY:
                return 8;
            }
        break;

        case 51:
            switch (argument1) {
                case ITEM_NAME:
                return "Spear";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 4;
                
                case CLASS_BINARY:
                return 32;
            }
        break;

        case 52:
            switch (argument1) {
                case ITEM_NAME:
                return "Bone Spear";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 4;
                
                case CLASS_BINARY:
                return 32;
            }
        break;

        case 53:
            switch (argument1) {
                case ITEM_NAME:
                return "Cedar Pole";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 4;
                
                case CLASS_BINARY:
                return 32;
            }
        break;

        case 54:
            switch (argument1) {
                case ITEM_NAME:
                return "Ivory Pole";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 4;
                
                case CLASS_BINARY:
                return 32;
            }
        break;

        case 55:
            switch (argument1) {
                case ITEM_NAME:
                return "Lance";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 4;
                
                case CLASS_BINARY:
                return 32;
            }
        break;

        case 56:
            switch (argument1) {
                case ITEM_NAME:
                return "Bone Lance";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 4;
                
                case CLASS_BINARY:
                return 32;
            }
        break;

        case 57:
            switch (argument1) {
                case ITEM_NAME:
                return "Tusk";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 4;
                
                case CLASS_BINARY:
                return 32;
            }
        break;

        case 58:
            switch (argument1) {
                case ITEM_NAME:
                return "Javelin";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 4;
                
                case CLASS_BINARY:
                return 32;
            }
        break;

        case 59:
            switch (argument1) {
                case ITEM_NAME:
                return "Falerica";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 4;
                
                case CLASS_BINARY:
                return 32;
            }
        break;

        case 60:
            switch (argument1) {
                case ITEM_NAME:
                return "Vel";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 4;
                
                case CLASS_BINARY:
                return 32;
            }
        break;

        case 61:
            switch (argument1) {
                case ITEM_NAME:
                return "Mace";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 8;
                
                case CLASS_BINARY:
                return 36;
            }
        break;

        case 62:
            switch (argument1) {
                case ITEM_NAME:
                return "Spiked Mace";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 8;
                
                case CLASS_BINARY:
                return 36;
            }
        break;

        case 63:
            switch (argument1) {
                case ITEM_NAME:
                return "Shishpar";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 8;
                
                case CLASS_BINARY:
                return 36;
            }
        break;

        case 64:
            switch (argument1) {
                case ITEM_NAME:
                return "Sharur";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 8;
                
                case CLASS_BINARY:
                return 36;
            }
        break;

        case 65:
            switch (argument1) {
                case ITEM_NAME:
                return "Mudgar";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 8;
                
                case CLASS_BINARY:
                return 36;
            }
        break;

        case 66:
            switch (argument1) {
                case ITEM_NAME:
                return "Gadae";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 8;
                
                case CLASS_BINARY:
                return 36;
            }
        break;

        case 67:
            switch (argument1) {
                case ITEM_NAME:
                return "Mallet";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 8;
                
                case CLASS_BINARY:
                return 36;
            }
        break;

        case 68:
            switch (argument1) {
                case ITEM_NAME:
                return "Hammer";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 8;
                
                case CLASS_BINARY:
                return 36;
            }
        break;

        case 69:
            switch (argument1) {
                case ITEM_NAME:
                return "Zagnal";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 8;
                
                case CLASS_BINARY:
                return 36;
            }
        break;

        case 70:
            switch (argument1) {
                case ITEM_NAME:
                return "Rungu";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 8;
                
                case CLASS_BINARY:
                return 36;
            }
        break;

        case 71:
            switch (argument1) {
                case ITEM_NAME:
                return "Nulla";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 8;
                
                case CLASS_BINARY:
                return 36;
            }
        break;

        case 72:
            switch (argument1) {
                case ITEM_NAME:
                return "Bullwhip";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 16;
                
                case CLASS_BINARY:
                return 2;
            }
        break;

        case 73:
            switch (argument1) {
                case ITEM_NAME:
                return "Sjambok";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 16;
                
                case CLASS_BINARY:
                return 2;
            }
        break;

        case 74:
            switch (argument1) {
                case ITEM_NAME:
                return "Kourbaj";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 16;
                
                case CLASS_BINARY:
                return 2;
            }
        break;

        case 75:
            switch (argument1) {
                case ITEM_NAME:
                return "Chain Whip";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 16;
                
                case CLASS_BINARY:
                return 2;
            }
        break;

        case 76:
            switch (argument1) {
                case ITEM_NAME:
                return "Morning Star";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 16;
                
                case CLASS_BINARY:
                return 2;
            }
        break;

        case 77:
            switch (argument1) {
                case ITEM_NAME:
                return "Leather Flail";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 16;
                
                case CLASS_BINARY:
                return 2;
            }
        break;

        case 78:
            switch (argument1) {
                case ITEM_NAME:
                return "Spiked Flail";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 16;
                
                case CLASS_BINARY:
                return 2;
            }
        break;

        case 79:
            switch (argument1) {
                case ITEM_NAME:
                return "Nekhakha";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 16;
                
                case CLASS_BINARY:
                return 2;
            }
        break;

        case 80:
            switch (argument1) {
                case ITEM_NAME:
                return "Rod";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 32;
                
                case CLASS_BINARY:
                return 5;
            }
        break;

        case 81:
            switch (argument1) {
                case ITEM_NAME:
                return "Yew Rod";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 32;
                
                case CLASS_BINARY:
                return 5;
            }
        break;

        case 82:
            switch (argument1) {
                case ITEM_NAME:
                return "Wand";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 32;
                
                case CLASS_BINARY:
                return 5;
            }
        break;

        case 83:
            switch (argument1) {
                case ITEM_NAME:
                return "Coral Wand";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 32;
                
                case CLASS_BINARY:
                return 5;
            }
        break;

        case 84:
            switch (argument1) {
                case ITEM_NAME:
                return "Quarterstaff";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 32;
                
                case CLASS_BINARY:
                return 5;
            }
        break;

        case 85:
            switch (argument1) {
                case ITEM_NAME:
                return "Staff";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 32;
                
                case CLASS_BINARY:
                return 5;
            }
        break;

        case 86:
            switch (argument1) {
                case ITEM_NAME:
                return "Cypress Staff";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 32;
                
                case CLASS_BINARY:
                return 5;
            }
        break;

        case 87:
            switch (argument1) {
                case ITEM_NAME:
                return "Cane";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 32;
                
                case CLASS_BINARY:
                return 5;
            }
        break;

        case 88:
            switch (argument1) {
                case ITEM_NAME:
                return "Crook";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 32;
                
                case CLASS_BINARY:
                return 5;
            }
        break;

        case 89:
            switch (argument1) {
                case ITEM_NAME:
                return "Shepherd's Crook";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 32;
                
                case CLASS_BINARY:
                return 5;
            }
        break;

        case 90:
            switch (argument1) {
                case ITEM_NAME:
                return "Sceptre";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 32;
                
                case CLASS_BINARY:
                return 5;
            }
        break;

        case 91:
            switch (argument1) {
                case ITEM_NAME:
                return "Sekhem";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 32;
                
                case CLASS_BINARY:
                return 5;
            }
        break;

        case 92:
            switch (argument1) {
                case ITEM_NAME:
                return "Jewelled Sceptre";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 32;
                
                case CLASS_BINARY:
                return 5;
            }
        break;

        case 93:
            switch (argument1) {
                case ITEM_NAME:
                return "Kanjar";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 64;
                
                case CLASS_BINARY:
                return 25;
            }
        break;

        case 94:
            switch (argument1) {
                case ITEM_NAME:
                return "Jambiya";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 64;
                
                case CLASS_BINARY:
                return 25;
            }
        break;

        case 95:
            switch (argument1) {
                case ITEM_NAME:
                return "Khukri";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 64;
                
                case CLASS_BINARY:
                return 25;
            }
        break;

        case 96:
            switch (argument1) {
                case ITEM_NAME:
                return "Jile";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 64;
                
                case CLASS_BINARY:
                return 25;
            }
        break;

        case 97:
            switch (argument1) {
                case ITEM_NAME:
                return "Dagger";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 64;
                
                case CLASS_BINARY:
                return 25;
            }
        break;

        case 98:
            switch (argument1) {
                case ITEM_NAME:
                return "Seme";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 64;
                
                case CLASS_BINARY:
                return 25;
            }
        break;

        case 99:
            switch (argument1) {
                case ITEM_NAME:
                return "Sickle";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 64;
                
                case CLASS_BINARY:
                return 25;
            }
        break;

        case 100:
            switch (argument1) {
                case ITEM_NAME:
                return "Mambele";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 64;
                
                case CLASS_BINARY:
                return 25;
            }
        break;

        case 101:
            switch (argument1) {
                case ITEM_NAME:
                return "Jladis";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 128;
                
                case CLASS_BINARY:
                return 2;
            }
        break;

        case 102:
            switch (argument1) {
                case ITEM_NAME:
                return "Saif";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 128;
                
                case CLASS_BINARY:
                return 2;
            }
        break;

        case 103:
            switch (argument1) {
                case ITEM_NAME:
                return "Talwar";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 128;
                
                case CLASS_BINARY:
                return 2;
            }
        break;

        case 104:
            switch (argument1) {
                case ITEM_NAME:
                return "Sabar";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 128;
                
                case CLASS_BINARY:
                return 2;
            }
        break;

        case 105:
            switch (argument1) {
                case ITEM_NAME:
                return "Battar";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 128;
                
                case CLASS_BINARY:
                return 2;
            }
        break;

        case 106:
            switch (argument1) {
                case ITEM_NAME:
                return "Kilij";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 128;
                
                case CLASS_BINARY:
                return 2;
            }
        break;

        case 107:
            switch (argument1) {
                case ITEM_NAME:
                return "Shamshir";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 128;
                
                case CLASS_BINARY:
                return 2;
            }
        break;

        case 108:
            switch (argument1) {
                case ITEM_NAME:
                return "Mathor";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 128;
                
                case CLASS_BINARY:
                return 2;
            }
        break;

        case 109:
            switch (argument1) {
                case ITEM_NAME:
                return "Takoba";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 128;
                
                case CLASS_BINARY:
                return 2;
            }
        break;

        case 110:
            switch (argument1) {
                case ITEM_NAME:
                return "Nimcha";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 128;
                
                case CLASS_BINARY:
                return 2;
            }
        break;

        case 111:
            switch (argument1) {
                case ITEM_NAME:
                return "Khopesh";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 128;
                
                case CLASS_BINARY:
                return 2;
            }
        break;

        case 112:
            switch (argument1) {
                case ITEM_NAME:
                return "Scythe";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 128;
                
                case CLASS_BINARY:
                return 2;
            }
        break;

        case 113:
            switch (argument1) {
                case ITEM_NAME:
                return "Akrafena";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 2;
                
                case TYPE_BINARY:
                return 128;
                
                case CLASS_BINARY:
                return 2;
            }
        break;

        case 114:
            switch (argument1) {
                case ITEM_NAME:
                return "Thoub";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 4;
                
                case TYPE_BINARY:
                return 1;
                
                case CLASS_BINARY:
                return 5;
                
                case ADEF:
                return 10;
                
                case ARES:
                return 5;
                
                case AWGT:
                return 8;
            }
        break;

        case 115:
            switch (argument1) {
                case ITEM_NAME:
                return "Djilaba";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 4;
                
                case TYPE_BINARY:
                return 1;
                
                case CLASS_BINARY:
                return 5;
            }
        break;

        case 116:
            switch (argument1) {
                case ITEM_NAME:
                return "Mail Shirt";

                case ITEM_DESCRIPTION:
                return "...";

                case ITEM_PRICE:
                return 150;
                
                case ITEM_BINARY:
                return 4;
                
                case TYPE_BINARY:
                return 4;
                
                case CLASS_BINARY:
                return 176;
            }
        break;

        default:
        return 0;
    }

    return 0;
}
