function ret = writer_system_parameters(jfn, prms)

%jfn = 'readme.json'; % json file name
%jfn = strcat(parentPath, jfn);

json = jsonencode(prms,'ConvertInfAndNaN',false);
fileID = fopen(jfn, 'w');
fprintf(fileID, json);
fclose(fileID);

ret = 1;

end
