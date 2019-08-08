/// GetRole(role_id, stat, base_or_growth)
{
    if (!argument2) {
        // Base
        switch (argument0) {
            case WARRIOR:
                switch (argument1) {
                    case ROLE:
                        return "Warrior";
                    case HP:
                        return 36;
                    case AP:
                        return 12;
                    case MOV:
                        return 3;
                    case JMP:
                        return 1;
                    case SPD:
                        return 104;
                    case EVA:
                        return 35;
                    case ATK:
                        return 92;
                    case DEF:
                        return 80;
                    case POW:
                        return 56;
                    case RES:
                        return 68;
                    case ROLE_ID:
                        return 2;
                }
            break;
            
            case HUNTER:
                switch (argument1) {
                    case ROLE:
                        return "Hunter";
                    case HP:
                        return 36;
                    case AP:
                        return 18;
                    case MOV:
                        return 3;
                    case JMP:
                        return 2;
                    case SPD:
                        return 106;
                    case EVA:
                        return 35;
                    case ATK:
                        return 72;
                    case DEF:
                        return 72;
                    case POW:
                        return 64;
                    case RES:
                        return 80;
                    case ROLE_ID:
                        return 16;
                }
            break;
            
            case LANCER:
                switch (argument1) {
                    case ROLE:
                        return "Lancer";
                    case HP:
                        return 40;
                    case AP:
                        return 8;
                    case MOV:
                        return 3;
                    case JMP:
                        return 3;
                    case SPD:
                        return 104;
                    case EVA:
                        return 35;
                    case ATK:
                        return 96;
                    case DEF:
                        return 84;
                    case POW:
                        return 56;
                    case RES:
                        return 60;
                    case ROLE_ID:
                        return 32;
                }
            break;
            
            case MERCENARY:
                switch (argument1) {
                    case ROLE:
                        return "Mercenary";
                    case HP:
                        return 33;
                    case AP:
                        return 15;
                    case MOV:
                        return 3;
                    case JMP:
                        return 1;
                    case SPD:
                        return 110;
                    case EVA:
                        return 35;
                    case ATK:
                        return 76;
                    case DEF:
                        return 76;
                    case POW:
                        return 76;
                    case RES:
                        return 64;
                    case ROLE_ID:
                        return 8;
                }
            break;
            
            case ALCHEMIST:
                switch (argument1) {
                    case ROLE:
                        return "Alchemist";
                    case HP:
                        return 28;
                    case AP:
                        return 36;
                    case MOV:
                        return 3;
                    case JMP:
                        return 2;
                    case SPD:
                        return 96;
                    case EVA:
                        return 35;
                    case ATK:
                        return 64;
                    case DEF:
                        return 68;
                    case POW:
                        return 88;
                    case RES:
                        return 96;
                    case ROLE_ID:
                        return 4;
                }
            break;
            
            case SCHOLAR:
                switch (argument1) {
                    case ROLE:
                        return "Scholar";
                    case HP:
                        return 30;
                    case AP:
                        return 40;
                    case MOV:
                        return 3;
                    case JMP:
                        return 1;
                    case SPD:
                        return 108;
                    case EVA:
                        return 35;
                    case ATK:
                        return 60;
                    case DEF:
                        return 73;
                    case POW:
                        return 84;
                    case RES:
                        return 80;
                    case ROLE_ID:
                        return 1;
                }
            break;
        }
    } else {
        // Growth
        switch (argument0) {
            case WARRIOR:
                switch (argument1) {
                    case HP:
                        return 7.2;
                    case AP:
                        return 1.1;
                    case SPD:
                        return 1.1;
                    case EVA:
                        return 35;
                    case ATK:
                        return 9.2;
                    case DEF:
                        return 8.1;
                    case POW:
                        return 5.6;
                    case RES:
                        return 6.8;
                }
            break;
            
            case HUNTER:
                switch (argument1) {
                    case HP:
                        return 7.2;
                    case AP:
                        return 1.1;
                    case SPD:
                        return 1.4;
                    case EVA:
                        return 35;
                    case ATK:
                        return 7.2;
                    case DEF:
                        return 7.2;
                    case POW:
                        return 6.4;
                    case RES:
                        return 8.1;
                }
            break;
            
            case LANCER:
                switch (argument1) {
                    case HP:
                        return 8.2;
                    case AP:
                        return 1.2;
                    case SPD:
                        return 1.1;
                    case EVA:
                        return 35;
                    case ATK:
                        return 9.6;
                    case DEF:
                        return 8.4;
                    case POW:
                        return 5.6;
                    case RES:
                        return 6.4;
                }
            break;
            
            case MERCENARY:
                switch (argument1) {
                    case HP:
                        return 6.6;
                    case AP:
                        return 1.1;
                    case SPD:
                        return 1.8;
                    case EVA:
                        return 35;
                    case ATK:
                        return 7.6;
                    case DEF:
                        return 7.6;
                    case POW:
                        return 7.6;
                    case RES:
                        return 6.4;
                }
            break;
            
            case ALCHEMIST:
                switch (argument1) {
                    case HP:
                        return 5.6;
                    case AP:
                        return 4.4;
                    case SPD:
                        return 1.1;
                    case EVA:
                        return 35;
                    case ATK:
                        return 6.4;
                    case DEF:
                        return 6.8;
                    case POW:
                        return 8.8;
                    case RES:
                        return 9.6;
                }
            break;
            
            case SCHOLAR:
                switch (argument1) {
                    case HP:
                        return 6.1;
                    case AP:
                        return 4.8;
                    case SPD:
                        return 1.2;
                    case EVA:
                        return 35;
                    case ATK:
                        return 6.2;
                    case DEF:
                        return 7.3;
                    case POW:
                        return 8.4;
                    case RES:
                        return 8.2;
                }
            break;
        }
    }
}
