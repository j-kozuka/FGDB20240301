function write_time(tfn, timeset)

fid = fopen(tfn,'w');
tdim = size(timeset,2);
text1 = '';
for iLoop = 1:tdim
    code1 = sprintf('t_%d, ', iLoop);
    text1 = strcat(text1, code1);
end
text1 = strcat(text1(1:end-1), '\n');
fprintf(fid, text1);
fclose(fid);
dlmwrite(tfn,timeset,'-append');

end