function [status,msg] = relayFile(additional, sdCode)

for iLoop = 1:length(additional)
    otfn = additional{iLoop}; %% transfer filename
    tfn = strcat(sdCode.datasetPath, otfn); %% orignial
    cpy_tfn = strcat(sdCode.parentPath, otfn); %% copy
    [status,msg] = copyfile(tfn, cpy_tfn);
end

end