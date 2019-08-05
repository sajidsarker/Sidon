/// AddGold(amount)
{
    Storage[GOLD] = max(0, min(Storage[GOLD] + argument0, 9999));
}
