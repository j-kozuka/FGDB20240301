%% register_data_block_macro
make_bat_to_register_data_macro
nowpos = pwd;
cd('../')
batch_file = 'register_data_block.bat';
system(batch_file)
delete(batch_file)
cd(nowpos)