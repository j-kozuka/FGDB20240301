%%%%%%%%%%%%%%%%%%%%%%%%%
%%% opration block %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%
%%% in func1 %%%%%%%%%%%%%
fn = 'tmp_func'; %%% exchange 'func1' !! %%% % function name 
cd(fn)
readme = reader_readme(hd);
readme.stdin = join_parameters(tmp_in); %%% exchange 'NULL' !! %%% % function input
writer_readme(hd, readme);
run('func.m')
readme = reader_readme(hd);
tmp_out = readme.stdout; %%% exchange !! %%% % function output
cd('../')
%%%%%%%%%%%%%%%%%%%%%%%