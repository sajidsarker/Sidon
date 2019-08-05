/// LoadGame()
{
    var theFile = file_text_open_read("unisav.txt");

    // Story Systems
    theStory = file_text_read_real(theFile);

    // Roster Systems
    var width, height;
    width  = file_text_read_real(theFile);
    height = file_text_read_real(theFile);
    ds_grid_clear(CClan.theClan, 0);
    ds_grid_resize(CClan.theClan, width, height);
    ds_grid_read(CClan.theClan, file_text_read_string(theFile));
    //clipboard_set_text( ds_grid_write(CClan.theClan) );

    // Inventory Systems
    ds_list_read(Storage[0], file_text_read_string(theFile));
    ds_list_read(Storage[1], file_text_read_string(theFile));
    ds_list_read(Storage[2], file_text_read_string(theFile));
    Storage[3] = file_text_read_real(theFile)

    file_text_close(theFile);
}
