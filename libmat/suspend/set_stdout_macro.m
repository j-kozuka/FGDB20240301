%%% set_stdout_macro
hd = './'; % home directory
readme_func = reader_readme(hd);
readme_func.stdout = readme.dshash_name;
ret = writer_readme(hd, readme_func);