///GetStat(stat_id)
{
    switch ( argument0 ) {
        case LV:
            return "Level";
        case HP:
            return "Health Points";
        case AP:
            return "Aura Points";
        case XP:
            return "Experience Points";
        case MOV:
            return "Movement Range";
        case JMP:
            return "Jump Range";
        case SPD:
            return "Speed";
        case EVA:
            return "Evasion";
        case ATK:
            return "Physical Attack";
        case DEF:
            return "Physical Defence";
        case POW:
            return "Magic Power";
        case RES:
            return "Magic Resistance";
        case WATK:
            return "Weapon Attack";
        case ADEF:
            return "Equipment Defence";
        case WPOW:
            return "Weapon Power";
        case ARES:
            return "Equipment Resistance";
        case AWGT:
            return "Equipment Weight";
    }
}
