function ret = writer_dataset(parentPath, dataset)

dcf = 'dataset.csv'; % data csvfile name
dcf = strcat(parentPath, dcf);
samplePath = strcat(parentPath, 'sample\');

fid = fopen(dcf,'w');
text1 = sprintf('x:sample,t:target\n');
fprintf(fid, text1);

dNum = length(dataset.target);
for iLoop = 1:dNum   
    filename = sprintf('sd%05d.csv', iLoop);
    sfn = strcat(samplePath, filename);
    text1 = sprintf('./sample/%s,%f\n',filename, dataset.target(iLoop));
    fprintf(fid, text1);
    csvwrite(sfn,dataset.sample(iLoop,:))
end
fclose(fid);

ret = 1;

end
