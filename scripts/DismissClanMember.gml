/// DismissClanMember(clan_id)
{
    var i, j;

    for (j=argument0; j<CLAN_SIZE; j++) {
        for (i=0; i<STATS_NUM; i++) {
            ds_grid_set(CClan.theClan, i, j, ds_grid_get(CClan.theClan, i, j + 1));
        }
    }

    ds_grid_set_region(CClan.theClan, 0, 19, 18, 19, -1);

    CClan.theClanSize--;
}
