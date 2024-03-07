%%%%%%%%%%%%%%%%%%%%%%%%%
%% read dataset
%%%%%%%%%%%%%%%%%%%%%%%%%
% fpfn = 'signal.wav';
% fpfn2 = strcat(datasetPath, fpfn)
% 
% [xOt,Fs] = audioread(fpfn2);
% % Time vector 
% Ls = length(xOt);
% tv = (0:Ls-1)/Fs; 
dcf = 'dataset.csv'; % data csvfile name
dcf = strcat(datasetPath, dcf);

%dsT = readtable(dcf);
dsT = readtable(dcf,'Delimiter',',');
dNum = size(dsT,1);
for iLoop = 1:dNum
    fpfn = strrep(char(dsT.x_sample(iLoop)),'./',datasetPath);  % full path filename
    fpfn = strrep(fpfn,'/','\');
    data = csvread(fpfn);
    dataset.sample(iLoop,:) = data;
    
    fpfn = strrep(char(dsT.t_target(iLoop)),'./',datasetPath);  % full path filename
    fpfn = strrep(fpfn,'/','\');
    data = csvread(fpfn);
    dataset.target(iLoop,:) = data;
end

dcf = 'time_sample.csv'; % data csvfile name
dcf = strcat(datasetPath, dcf);
timeset.sample = read_time(dcf);


dcf = 'time_target.csv'; % data csvfile name
dcf = strcat(datasetPath, dcf);
timeset.target = read_time(dcf);

dataset
timeset

%prms = reader_readme(datasetPath) % read parameters

wd = loadwave_func2(strcat(datasetPath, readme.additional{1})); % wave data

% %%%%%%%%%%%%%%%%%%
st = timeset.sample;
sd = dataset.sample;
tt = timeset.target;
td = dataset.target;