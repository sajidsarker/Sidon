/// GetRole(role_id, stat, base_or_growth)
{
    if (!argument2) {
        switch (argument0) {
            case WARRIOR:
                switch (argument1) {
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
                    case ATK:
                        return 92;
                    case DEF:
                        return 80;
                    case POW:
                        return 56;
                    case RES:
                        return 68;
                }
            break;
            
            case ARCHER:
                switch (argument1) {
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
                    case ATK:
                        return 72;
                    case DEF:
                        return 72;
                    case POW:
                        return 64;
                    case RES:
                        return 80;
                }
            break;
            
            case LANCER:
                switch (argument1) {
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
                    case ATK:
                        return 96;
                    case DEF:
                        return 84;
                    case POW:
                        return 56;
                    case RES:
                        return 60;
                }
            break;
            
            case THIEF:
                switch (argument1) {
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
                    case ATK:
                        return 76;
                    case DEF:
                        return 76;
                    case POW:
                        return 76;
                    case RES:
                        return 64;
                }
            break;
            
            case SORCEROR:
                switch (argument1) {
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
                    case ATK:
                        return 64;
                    case DEF:
                        return 68;
                    case POW:
                        return 88;
                    case RES:
                        return 96;
                }
            break;
            
            case CLERIC:
                switch (argument1) {
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
                    case ATK:
                        return 60;
                    case DEF:
                        return 73;
                    case POW:
                        return 84;
                    case RES:
                        return 80;
                }
            break;
            
            case PYROMANCER:
                switch (argument1) {
                    case HP:
                        return 34;
                    case AP:
                        return 22;
                    case MOV:
                        return 3;
                    case JMP:
                        return 1;
                    case SPD:
                        return 96;
                    case ATK:
                        return 81;
                    case DEF:
                        return 76;
                    case POW:
                        return 84;
                    case RES:
                        return 76;
                }
            break;
        }
    } else {
        switch (argument0) {
            case WARRIOR:
                switch (argument1) {
                    case HP:
                        return 7.2;
                    case AP:
                        return 1.1;
                    case SPD:
                        return 1.1;
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
            
            case ARCHER:
                switch (argument1) {
                    case HP:
                        return 7.2;
                    case AP:
                        return 1.1;
                    case SPD:
                        return 1.4;
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
            
            case THIEF:
                switch (argument1) {
                    case HP:
                        return 6.6;
                    case AP:
                        return 1.1;
                    case SPD:
                        return 1.8;
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
            
            case SORCEROR:
                switch (argument1) {
                    case HP:
                        return 5.6;
                    case AP:
                        return 4.4;
                    case SPD:
                        return 1.1;
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
            
            case CLERIC:
                switch (argument1) {
                    case HP:
                        return 6.1;
                    case AP:
                        return 4.8;
                    case SPD:
                        return 1.2;
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
            
            case PYROMANCER:
                switch (argument1) {
                    case HP:
                        return 6.8;
                    case AP:
                        return 2.6;
                    case SPD:
                        return 1.3;
                    case ATK:
                        return 8.1;
                    case DEF:
                        return 7.6;
                    case POW:
                        return 8.4;
                    case RES:
                        return 7.6;
                }
            break;
        }
    }
}
