function dataset = reader_dataset(datasetPath)

dcf = 'dataset.csv'; % data csvfile name
dcf = strcat(datasetPath, dcf);

dsT = readtable(dcf);
dNum = size(dsT,1);
for iLoop = 1:dNum
    fpfn = strrep(char(dsT.x_sample(iLoop)),'./',datasetPath);  % full path filename
    fpfn = strrep(fpfn,'/','\');
    data = csvread(fpfn);
    dataset.sample(iLoop,:) = data;
end

dataset.target = dsT.t_target;

end