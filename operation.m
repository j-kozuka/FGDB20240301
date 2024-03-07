%%%%%%%%%%%%%%%%%%%%%%%%%
%%% header block %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%
%restoredefaultpath
close all
clear

oldpath = path;
path(oldpath,'./libmat') % (spectra1)

hd = './'; % home directory

%%%%%%%%%%%%%%%%%%%%%%%%%
%%% opration block %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%
%%% in func1 %%%%%%%%%%%%%
fn = 'func1'; %%% exchange 'func1' !! %%% % function name 
cd(fn)
readme = reader_readme(hd);
readme.stdin = join_parameters(); %%% exchange 'NULL' !! %%% % function input
writer_readme(hd, readme);
run('func.m')
readme = reader_readme(hd);
d1 = readme.stdout; %%% exchange !! %%% % function output
cd('../')
%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%
%%% opration block %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%
%%% in func1 %%%%%%%%%%%%%
fn = 'func2'; %%% exchange 'func1' !! %%% % function name 
cd(fn)
readme = reader_readme(hd);
readme.stdin = join_parameters(d1); %%% exchange 'NULL' !! %%% % function input
writer_readme(hd, readme);
run('func.m')
readme = reader_readme(hd);
d2 = readme.stdout; %%% exchange !! %%% % function output
cd('../')
%%%%%%%%%%%%%%%%%%%%%%%

