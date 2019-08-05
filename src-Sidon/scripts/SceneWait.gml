/// SceneWait(time)
{
    show_debug_message("Cutscene is waiting for " + string(argument0) + " seconds...");
    ds_list_add(Scene, "WAIT_" + string(argument0 * room_speed));
}
