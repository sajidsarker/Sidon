/// DBQ_CompatibleWeapon(role_id, wpn_id)
{
    var role_id, wpn_id;
    role_id = argument0;
    wpn_id  = argument1;

    var compatible = DBQ_WeaponForRole(role_id) & wpn_id;

    if (compatible == wpn_id) {
        return true;
    } else {
        return false;
    }
}
