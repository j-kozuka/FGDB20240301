%%%%%%%%%% fgdb func1 %%%%%%%%%%%%%%%%%
restoredefaultpath
close all
clear

oldpath = path;
path(oldpath,'../libmat')

%%% get stdin
get_stdin_macro

disp('func1 call!!')
%make radme
disp('make readme')
%make data
disp('make data')

%%% set stdout
set_stdout_macro




