/// SaveGame()
{
    var theFile = file_text_open_write("unisav.txt");

    // Story Systems
    file_text_write_real(theFile, theStory);

    // Roster Systems
    file_text_write_real(theFile, ds_grid_width(CClan.theClan));
    file_text_write_real(theFile, ds_grid_height(CClan.theClan));
    file_text_write_string(theFile, ds_grid_write(CClan.theClan));

    // Inventory Systems
    file_text_write_string(theFile, ds_list_write(Storage[0]));
    file_text_write_string(theFile, ds_list_write(Storage[1]));
    file_text_write_string(theFile, ds_list_write(Storage[2]));
    file_text_write_real(theFile, Storage[3]);

    file_text_close(theFile);
}
