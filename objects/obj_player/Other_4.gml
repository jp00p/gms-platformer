/// @desc auto save

//overwrite old save
if(file_exists(SAVEFILE)){
	file_delete(SAVEFILE);	
}

// create save
var file = file_text_open_write(SAVEFILE);
file_text_write_real(file, room);
file_text_write_real(file, global.kills);
file_text_write_real(file, global.has_gun);
file_text_close(file);
