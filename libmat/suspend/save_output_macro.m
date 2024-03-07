%%% save_output_macro
hd = './'; % home directory
readme_func = reader_readme(hd);
readme_func.out = readme.dshash_name;
ret = writer_readme(hd, readme_func);